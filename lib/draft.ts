import { counterChart, heroes, itemCatalog, type Hero, type Role } from "@/lib/mlbb-data";
import { getProBuildPlan, getProSignal } from "@/lib/pro-meta";
import { slugify } from "@/lib/utils";

export type Side = "enemies" | "allies" | "allyBans" | "enemyBans";
export type PoolLevel = "none" | "medium" | "strong";

export type DraftState = {
  enemies: string[];
  allies: string[];
  allyBans: string[];
  enemyBans: string[];
  role: Role | "Любая";
  metaOnly: boolean;
  activeSide: Side;
  search: string;
};

export type BuildItem = {
  id: string;
  timing: string;
  reason: string;
};

export const heroByName = new Map(heroes.map((hero) => [hero.name, hero]));

const frontlineHeroes = new Set([
  "Akai",
  "Alice",
  "Atlas",
  "Barats",
  "Baxia",
  "Belerick",
  "Edith",
  "Fredrinn",
  "Gatotkaca",
  "Gloo",
  "Grock",
  "Hilda",
  "Hylos",
  "Khufra",
  "Lolita",
  "Minotaur",
  "Ruby",
  "Terizla",
  "Tigreal",
  "Uranus",
  "X.Borg",
  "Yu Zhong",
]);

const healingHeroes = new Set(["Angela", "Estes", "Floryn", "Rafaela", "Uranus", "Alpha", "Ruby", "Alice"]);
const magicDamageHeroes = new Set([
  "Aamon",
  "Alice",
  "Aurora",
  "Cecilion",
  "Chang'e",
  "Cyclops",
  "Eudora",
  "Gord",
  "Harith",
  "Harley",
  "Julian",
  "Kadita",
  "Kagura",
  "Kimmy",
  "Lunox",
  "Luo Yi",
  "Lylia",
  "Nana",
  "Natan",
  "Novaria",
  "Odette",
  "Pharsa",
  "Valentina",
  "Vale",
  "Valir",
  "Vexana",
  "Xavier",
  "Yve",
  "Zetian",
  "Zhask",
  "Zhuxin",
]);

const trueDamageHeroes = new Set(["Karrie", "X.Borg", "Alpha", "Baxia", "Lesley"]);
const controlHeroes = new Set([
  "Akai",
  "Atlas",
  "Aurora",
  "Belerick",
  "Chou",
  "Diggie",
  "Edith",
  "Franco",
  "Gatotkaca",
  "Gloo",
  "Guinevere",
  "Johnson",
  "Kaja",
  "Khufra",
  "Lolita",
  "Minotaur",
  "Minsitthar",
  "Nana",
  "Ruby",
  "Selena",
  "Tigreal",
  "Valir",
  "Vexana",
  "Yve",
  "Zhuxin",
]);

const buildProfiles = {
  marksman: ["Swift Boots", "Corrosion Scythe", "Demon Hunter Sword", "Golden Staff", "Malefic Roar", "Wind of Nature"],
  critMarksman: ["Swift Boots", "Windtalker", "Berserker's Fury", "Haas's Claws", "Malefic Roar", "Wind of Nature"],
  mage: ["Arcane Boots", "Enchanted Talisman", "Ice Queen Wand", "Glowing Wand", "Divine Glaive", "Winter Crown"],
  burstMage: ["Arcane Boots", "Genius Wand", "Lightning Truncheon", "Holy Crystal", "Divine Glaive", "Winter Crown"],
  assassin: ["Tough Boots", "Sky Piercer", "Hunter Strike", "Blade of Despair", "Malefic Roar", "Immortality"],
  fighter: ["Warrior Boots", "War Axe", "Hunter Strike", "Queen's Wings", "Malefic Roar", "Immortality"],
  sustainFighter: ["Warrior Boots", "Bloodlust Axe", "War Axe", "Hunter Strike", "Queen's Wings", "Immortality"],
  tank: ["Tough Boots", "Dominance Ice", "Thunder Belt", "Antique Cuirass", "Athena's Shield", "Immortality"],
  support: ["Tough Boots", "Flask of the Oasis", "Fleeting Time", "Dominance Ice", "Athena's Shield", "Immortality"],
} as const;

export function heroImage(name: string) {
  const specialSlugs: Record<string, string> = {
    "X.Borg": "xborg",
  };
  const pngHeroes = new Set(["Kalea", "Lukas", "Marcel", "Obsidia", "Sora", "Suyou", "Zetian"]);
  const remote = specialSlugs[name] ?? name.toLowerCase().replace(/[^a-z0-9]+/g, "-").replace(/^-|-$/g, "");
  const extension = pngHeroes.has(name) ? "png" : "jpg";
  return `${process.env.NEXT_PUBLIC_BASE_PATH || ""}/assets/heroes/${remote}.${extension}`;
}

export function itemImage(item: string) {
  const slug = itemCatalog[item]?.slug ?? slugify(item);
  return `${process.env.NEXT_PUBLIC_BASE_PATH || ""}/assets/items/${slug}.png`;
}

export function getAllBans(state: DraftState) {
  return [...state.allyBans, ...state.enemyBans];
}

export function getCounterWeight(counterName: string, targetName: string) {
  const list = counterChart[targetName] || [];
  const index = list.indexOf(counterName);
  return index === -1 ? 0 : 95 - index * 8;
}

export function scoreHero(hero: Hero, state: DraftState, pool: Record<string, PoolLevel>) {
  let score = hero.meta;
  const proSignal = getProSignal(hero.name);
  const reasons = [`Мета ${hero.tier}: ${hero.meta}`];
  const directCounters: string[] = [];
  const threats: string[] = [];

  if (proSignal) {
    score += proSignal.scoreBoost;
    reasons.push(`Pro-сигнал ${proSignal.tier}: ${proSignal.evidence}`);
  }

  state.enemies.forEach((enemyName) => {
    const counterWeight = getCounterWeight(hero.name, enemyName);
    if (counterWeight) {
      score += counterWeight / 4.2;
      directCounters.push(enemyName);
      reasons.push(`${hero.name} закрывает ${enemyName}`);
    }
    if (hero.weakInto.includes(enemyName)) {
      score -= 28;
      threats.push(enemyName);
      reasons.push(`Риск против ${enemyName}`);
    }
    const enemyCounterWeight = getCounterWeight(enemyName, hero.name);
    if (enemyCounterWeight) {
      score -= enemyCounterWeight / 5;
      threats.push(enemyName);
      reasons.push(`${enemyName} может законтрить`);
    }
  });

  state.allies.forEach((ally) => {
    if (hero.synergies.includes(ally) || heroByName.get(ally)?.synergies.includes(hero.name)) {
      score += 10;
      reasons.push(`Синергия с ${ally}`);
    }
  });

  if (state.role !== "Любая" && hero.roles.includes(state.role)) score += 8;

  const level = pool[hero.name] || "none";
  if (level === "strong") {
    score += 18;
    reasons.push("Есть в твоём сильном пуле");
  } else if (level === "medium") {
    score += 7;
    reasons.push("Есть в твоём среднем пуле");
  } else if (Object.values(pool).some((item) => item !== "none")) {
    score -= 16;
    reasons.push("Не отмечен в твоём пуле");
  }

  return {
    hero,
    score: Math.max(0, Math.min(150, score)),
    win: Math.max(35, Math.min(72, Math.round(48 + (score - 75) / 3))),
    reasons,
    directCounters,
    threats: [...new Set(threats)],
    stageProfile: getHeroStageScores(hero),
  };
}

export function getRecommendations(state: DraftState, pool: Record<string, PoolLevel>) {
  const unavailable = new Set([...state.enemies, ...state.allies, ...getAllBans(state)]);
  return heroes
    .filter((hero) => !unavailable.has(hero.name))
    .filter((hero) => state.role === "Любая" || hero.roles.includes(state.role))
    .filter((hero) => !state.metaOnly || hero.tier === "S" || hero.tier === "A")
    .filter((hero) => !state.search || `${hero.name} ${hero.roles.join(" ")} ${hero.tier}`.toLowerCase().includes(state.search))
    .map((hero) => scoreHero(hero, state, pool))
    .sort((a, b) => b.score - a.score)
    .slice(0, 8);
}

export function getBanRecommendations(state: DraftState) {
  const unavailable = new Set([...state.enemies, ...state.allies, ...getAllBans(state)]);
  return heroes
    .filter((hero) => !unavailable.has(hero.name))
    .map((hero) => {
      let score = hero.meta;
      const proSignal = getProSignal(hero.name);
      const reasons: string[] = [];
      if (proSignal) {
        score += proSignal.banPriority;
        reasons.push(`Pro ban priority: ${proSignal.evidence}`);
      }
      state.allies.forEach((allyName) => {
        const weight = getCounterWeight(hero.name, allyName);
        if (weight) {
          score += weight / 3.8;
          reasons.push(`${hero.name} опасен для ${allyName}`);
        }
      });
      if (!reasons.length) reasons.push(`${hero.tier}-tier в мете`);
      return { hero, score, reasons };
    })
    .sort((a, b) => b.score - a.score)
    .slice(0, 4);
}

export function getHeroStageScores(hero: Hero) {
  const scores = { early: 56, mid: 62, late: 58 };
  if (hero.roles.includes("Jungle") || hero.roles.includes("Roam")) {
    scores.early += 8;
    scores.mid += 4;
    scores.late -= 3;
  }
  if (hero.roles.includes("Gold")) {
    scores.early -= 5;
    scores.mid += 2;
    scores.late += 12;
  }
  if (hero.roles.includes("Mid")) {
    scores.early += 3;
    scores.mid += 8;
    scores.late += 2;
  }
  if (hero.roles.includes("EXP")) {
    scores.early += 2;
    scores.mid += 7;
    scores.late += 3;
  }
  return scores;
}

export function getBuild(hero: Hero, state: DraftState) {
  const enemies = state.enemies.map((name) => heroByName.get(name)).filter(Boolean) as Hero[];
  const profileKey = getProfileKey(hero);
  const proPlan = getProBuildPlan(hero.name);
  const items = [...(proPlan?.items ?? buildProfiles[profileKey])];
  const notes: string[] = [];
  const hasHealing = enemies.some((enemy) => healingHeroes.has(enemy.name));
  const hasFront = enemies.filter((enemy) => hasFrontline(enemy)).length >= 2;
  const magicCount = enemies.filter((enemy) => magicDamageHeroes.has(enemy.name)).length;

  if (hasHealing) {
    replaceLate(items, profileKey === "mage" || profileKey === "burstMage" ? "Necklace of Durance" : "Sea Halberd");
    notes.push("anti-heal против лечения");
  }
  if (hasFront) {
    replaceLate(items, profileKey === "mage" || profileKey === "burstMage" ? "Divine Glaive" : "Malefic Roar");
    notes.push("пробой против плотного фронта");
  }
  if (magicCount >= 2 && (profileKey === "tank" || profileKey === "fighter" || profileKey === "sustainFighter")) {
    replaceLate(items, "Athena's Shield");
    notes.push("защита от магического burst");
  }

  return {
    summary: notes.length
      ? `Адаптация: ${notes.join(", ")}.`
      : proPlan
        ? `Pro-шаблон: ${proPlan.style}. Уверенность: ${proPlan.confidence}.`
        : "Базовый pro/high-rank паттерн под роль героя.",
    source: proPlan
      ? `${proPlan.sourceLabel}; сверено с pro-сигналами MPL и high-rank метой`
      : "Ролевой pro/high-rank паттерн, локальная адаптация под драфт",
    flexItems: proPlan?.flexItems ?? [],
    items: items.map((id, index) => ({
      id,
      timing: ["0:45-1:30", "3:00-4:30", "5:30-7:30", "8:00-10:30", "11:00-14:00", "15:00+"][index] || "по ситуации",
      reason: getItemReason(id, hero, profileKey),
    })),
  };
}

function replaceLate(items: string[], item: string) {
  if (items.includes(item)) return;
  items[Math.max(2, items.length - 2)] = item;
}

function getProfileKey(hero: Hero): keyof typeof buildProfiles {
  if (["Angela", "Floryn", "Estes", "Rafaela", "Diggie", "Mathilda"].includes(hero.name)) return "support";
  if (hero.roles.includes("Roam") || frontlineHeroes.has(hero.name)) return "tank";
  if (["Miya", "Layla", "Lesley", "Irithel", "Bruno", "Clint", "Brody", "Beatrix", "Hanabi", "Melissa", "Ixia"].includes(hero.name)) return "critMarksman";
  if (hero.roles.includes("Gold")) return "marksman";
  if (["Harley", "Gusion", "Aamon", "Julian", "Eudora", "Kadita", "Kagura", "Aurora"].includes(hero.name)) return "burstMage";
  if (magicDamageHeroes.has(hero.name)) return "mage";
  if (["Alpha", "Ruby", "Yu Zhong", "Terizla", "Thamuz", "X.Borg", "Sora"].includes(hero.name)) return "sustainFighter";
  if (hero.roles.includes("Jungle")) return "assassin";
  return "fighter";
}

function hasFrontline(hero: Hero) {
  return frontlineHeroes.has(hero.name) || hero.roles.includes("Roam");
}

function getItemReason(itemName: string, hero: Hero, profile: string) {
  if (itemName.includes("Boots")) return "ранний темп, ротации и выживаемость";
  if (itemName === "Dominance Ice" || itemName === "Sea Halberd" || itemName === "Necklace of Durance") return "режет лечение и реген врагов";
  if (itemName === "Malefic Roar" || itemName === "Divine Glaive") return "пробивает защиту в мид/лейт стадии";
  if (itemName === "Immortality" || itemName === "Winter Crown") return "страховка от решающего burst";
  if (itemName === "Windtalker" || itemName === "Berserker's Fury") return "критический DPS и сила лейта";
  if (itemName === "War Axe" || itemName === "Bloodlust Axe") return "сила в длинных драках и sustain";
  if (itemName === "Flask of the Oasis" || itemName === "Fleeting Time") return "сейв союзников и частые ультимейты";
  return profile === "tank" ? "плотность для входа и защиты команды" : `усиливает основной урон ${hero.name}`;
}

export function getHeroMatchups(hero: Hero) {
  const targets = new Set<string>(hero.counters);
  const dangers = new Set<string>(hero.weakInto);
  Object.entries(counterChart).forEach(([target, counters]) => {
    if (counters.includes(hero.name)) targets.add(target);
    if (target === hero.name) counters.forEach((counter) => dangers.add(counter));
  });
  return {
    targets: [...targets].filter((name) => heroByName.has(name)).slice(0, 5),
    dangers: [...dangers].filter((name) => heroByName.has(name)).slice(0, 5),
    allies: hero.synergies.slice(0, 5),
  };
}

export function getDraftInsights(state: DraftState) {
  const allyHeroes = state.allies.map((name) => heroByName.get(name)).filter(Boolean) as Hero[];
  const enemyHeroes = state.enemies.map((name) => heroByName.get(name)).filter(Boolean) as Hero[];
  const roles = new Set(allyHeroes.flatMap((hero) => hero.roles));
  const missingRoles = ["Jungle", "EXP", "Mid", "Gold", "Roam"].filter((role) => !roles.has(role as Role));
  const ccCount = allyHeroes.filter((hero) => controlHeroes.has(hero.name) || hero.roles.includes("Roam")).length;
  const frontCount = allyHeroes.filter(hasFrontline).length;
  const antiHealNeed = enemyHeroes.some((hero) => healingHeroes.has(hero.name));
  const antiHealAnswer = allyHeroes.some((hero) => ["Baxia", "Valir", "Karrie", "Kimmy", "X.Borg"].includes(hero.name));
  const magic = allyHeroes.filter((hero) => magicDamageHeroes.has(hero.name)).length;
  const trueDamage = allyHeroes.filter((hero) => trueDamageHeroes.has(hero.name)).length;
  const physical = Math.max(0, allyHeroes.length - magic - trueDamage);
  return [
    missingRoles.length ? `Не закрыто: ${missingRoles.join(", ")}` : "Все 5 ролей закрыты",
    ccCount >= 2 ? `Контроль хороший: ${ccCount}` : "Мало надежного контроля",
    frontCount >= 1 ? `Фронтлайн есть: ${frontCount}` : "Нужен герой для входа/фронта",
    antiHealNeed && !antiHealAnswer ? "Нужен anti-heal против лечения" : "Anti-heal критично не провисает",
    `Урон: ${physical} физ / ${magic} маг / ${trueDamage} true`,
  ];
}
