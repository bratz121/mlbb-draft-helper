import fs from "node:fs";
import path from "node:path";
import vm from "node:vm";
import ts from "typescript";

const root = process.cwd();

function loadTsModule(relativePath) {
  const filename = path.join(root, relativePath);
  const source = fs.readFileSync(filename, "utf8");
  const compiled = ts.transpileModule(source, {
    compilerOptions: {
      module: ts.ModuleKind.CommonJS,
      target: ts.ScriptTarget.ES2020,
      esModuleInterop: true,
    },
  }).outputText;

  const exports = {};
  const module = { exports };
  const context = vm.createContext({
    exports,
    module,
    require: (id) => {
      if (id === "@/lib/mlbb-data") return loadTsModule("lib/mlbb-data.ts");
      if (id === "@/lib/pro-meta") return loadTsModule("lib/pro-meta.ts");
      throw new Error(`Unsupported import in seed generator: ${id}`);
    },
  });
  vm.runInContext(compiled, context, { filename });
  return module.exports;
}

function sql(value) {
  if (value === null || value === undefined) return "null";
  return `'${String(value).replaceAll("'", "''")}'`;
}

function arr(values) {
  return `array[${values.map(sql).join(", ")}]`;
}

function slugify(value) {
  return value.toLowerCase().replace(/[^a-z0-9]+/g, "-").replace(/^-|-$/g, "");
}

const { appVersion, heroes, itemCatalog, counterChart } = loadTsModule("lib/mlbb-data.ts");
const { proMetaUpdatedAt, proMetaSources, proHeroSignals, proBuildPlans } = loadTsModule("lib/pro-meta.ts");

const lines = [];

lines.push("-- Generated from frontend data. Re-run after changing lib/mlbb-data.ts or lib/pro-meta.ts.");
lines.push("-- Usage: Supabase Dashboard -> SQL Editor -> paste this file -> Run.");
lines.push("begin;");
lines.push("");
lines.push("truncate table community_votes, pro_build_items, pro_builds, matchups, hero_meta, items, heroes, patches restart identity cascade;");
lines.push("");
lines.push(`insert into patches (version, title, released_at, is_active) values (${sql(appVersion)}, ${sql(`MLBB Draft Helper ${appVersion}`)}, ${sql(proMetaUpdatedAt)}, true);`);
lines.push("");

lines.push("-- Items");
Object.entries(itemCatalog).forEach(([nameEn, item]) => {
  lines.push(
    `insert into items (slug, name_en, name_ru, image_path, tags) values (${sql(item.slug)}, ${sql(nameEn)}, ${sql(item.ru)}, ${sql(`/assets/items/${item.slug}.png`)}, array[]::text[]);`,
  );
});
lines.push("");

lines.push("-- Heroes");
heroes.forEach((hero) => {
  const specialSlugs = { "X.Borg": "xborg" };
  const pngHeroes = new Set(["Kalea", "Lukas", "Marcel", "Obsidia", "Sora", "Suyou", "Zetian"]);
  const slug = specialSlugs[hero.name] ?? slugify(hero.name);
  const extension = pngHeroes.has(hero.name) ? "png" : "jpg";
  lines.push(
    `insert into heroes (slug, name, roles, avatar_path) values (${sql(slug)}, ${sql(hero.name)}, ${arr(hero.roles)}, ${sql(`/assets/heroes/${slug}.${extension}`)});`,
  );
});
lines.push("");

lines.push("-- Local hero meta");
heroes.forEach((hero) => {
  lines.push(`insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)`);
  lines.push(
    `select h.id, p.id, ${sql(hero.tier)}, ${hero.meta}, null, 'manual', 'Локальная база MLBB Draft Helper', 65, ${sql(hero.notes)} from heroes h cross join patches p where h.name = ${sql(hero.name)} and p.version = ${sql(appVersion)};`,
  );
});
lines.push("");

lines.push("-- Pro hero meta signals");
Object.values(proHeroSignals).forEach((signal) => {
  const sourceNames = signal.sourceKeys.map((key) => proMetaSources[key]?.name).filter(Boolean).join(", ");
  lines.push(`insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, source_url, confidence, evidence)`);
  lines.push(
    `select h.id, p.id, ${sql(signal.tier)}, ${Math.min(100, 80 + signal.scoreBoost)}, ${sql(signal.roles[0] ?? null)}, 'pro', ${sql(sourceNames || "Pro meta signals")}, ${sql(proMetaSources[signal.sourceKeys[0]]?.url ?? null)}, 82, ${sql(signal.evidence)} from heroes h cross join patches p where h.name = ${sql(signal.hero)} and p.version = ${sql(appVersion)};`,
  );
});
lines.push("");

lines.push("-- Matchups from hero fields");
heroes.forEach((hero) => {
  [
    ["counters", hero.counters, "Закрывает героя по локальной базе"],
    ["weak_into", hero.weakInto, "Плохо играет в этот матчап"],
    ["synergy", hero.synergies, "Хорошо сочетается с героем"],
  ].forEach(([relation, targets, reason]) => {
    targets.forEach((target) => {
      lines.push(`insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)`);
      lines.push(
        `select h.id, t.id, ${sql(relation)}, 75, ${sql(reason)}, 'manual', p.id from heroes h join heroes t on t.name = ${sql(target)} cross join patches p where h.name = ${sql(hero.name)} and p.version = ${sql(appVersion)} on conflict do nothing;`,
      );
    });
  });
});
lines.push("");

lines.push("-- Counter chart additions");
Object.entries(counterChart).forEach(([target, counters]) => {
  counters.forEach((counter, index) => {
    const weight = Math.max(50, 95 - index * 8);
    lines.push(`insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)`);
    lines.push(
      `select h.id, t.id, 'counters', ${weight}, ${sql(`Counter chart: ${counter} закрывает ${target}`)}, 'manual', p.id from heroes h join heroes t on t.name = ${sql(target)} cross join patches p where h.name = ${sql(counter)} and p.version = ${sql(appVersion)} on conflict do nothing;`,
    );
  });
});
lines.push("");

lines.push("-- Pro build plans");
Object.entries(proBuildPlans).forEach(([heroName, plan]) => {
  lines.push(`insert into pro_builds (hero_id, patch_id, role, style, confidence, source_name, notes)`);
  lines.push(
    `select h.id, p.id, null, ${sql(plan.style)}, ${plan.confidence === "высокая" ? 85 : 70}, ${sql(plan.sourceLabel)}, ${sql(`Уверенность: ${plan.confidence}`)} from heroes h cross join patches p where h.name = ${sql(heroName)} and p.version = ${sql(appVersion)};`,
  );

  plan.items.forEach((itemName, index) => {
    lines.push(`insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)`);
    lines.push(
      `select b.id, i.id, ${index + 1}, ${sql(["0:45-1:30", "3:00-4:30", "5:30-7:30", "8:00-10:30", "11:00-14:00", "15:00+"][index])}, ${sql("Core pro/high-rank slot")}, false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = ${sql(itemName)} where h.name = ${sql(heroName)} and b.style = ${sql(plan.style)};`,
    );
  });

  plan.flexItems.forEach((itemName, index) => {
    lines.push(`insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)`);
    lines.push(
      `select b.id, i.id, ${index + 1}, 'по ситуации', ${sql("Flex slot против конкретного драфта")}, true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = ${sql(itemName)} where h.name = ${sql(heroName)} and b.style = ${sql(plan.style)};`,
    );
  });
});

lines.push("");
lines.push("commit;");
lines.push("");

fs.writeFileSync(path.join(root, "data/supabase-seed.sql"), `${lines.join("\n")}\n`, "utf8");
console.log(`Generated data/supabase-seed.sql with ${heroes.length} heroes, ${Object.keys(itemCatalog).length} items, ${Object.keys(proBuildPlans).length} pro builds.`);
