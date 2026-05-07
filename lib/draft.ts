import { counterChart, heroes, itemCatalog, teamRoles, type Hero, type Role } from "@/lib/mlbb-data";
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

export type BuildVariant = {
  name: string;
  items: string[];
  reason: string;
};

export type HeroLoadout = {
  emblem: string;
  talents: string[];
  spell: string;
  spellOptions: Array<{ spell: string; when: string }>;
  note: string;
};

export type ScoreBreakdownItem = {
  label: string;
  value: number;
  detail: string;
  tone: "good" | "bad" | "neutral";
};

export type DraftInsight = {
  label: string;
  value: string;
  detail: string;
  tone: "good" | "bad" | "neutral";
};

export type HeroGamePlan = {
  winCondition: string;
  timeline: Array<{ timing: string; task: string }>;
  warnings: string[];
  itemGoals: string[];
};

export type TeamGamePlan = {
  style: string;
  strongestStage: string;
  engage: string;
  damage: string;
  protect: string;
  nextPick: string;
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
  const breakdown: ScoreBreakdownItem[] = [
    {
      label: "Мета",
      value: hero.meta,
      detail: `${hero.tier}-tier в текущей базе`,
      tone: hero.tier === "S" || hero.tier === "A" ? "good" : "neutral",
    },
  ];
  const directCounters: string[] = [];
  const threats: string[] = [];

  if (proSignal) {
    score += proSignal.scoreBoost;
    reasons.push(`Pro-сигнал ${proSignal.tier}: ${proSignal.evidence}`);
    breakdown.push({
      label: "Pro-сигнал",
      value: proSignal.scoreBoost,
      detail: proSignal.evidence,
      tone: "good",
    });
  }

  state.enemies.forEach((enemyName) => {
    const counterWeight = getCounterWeight(hero.name, enemyName);
    if (counterWeight) {
      const value = Math.round(counterWeight / 4.2);
      score += counterWeight / 4.2;
      directCounters.push(enemyName);
      reasons.push(`${hero.name} закрывает ${enemyName}`);
      breakdown.push({
        label: `Контрит ${enemyName}`,
        value,
        detail: "Есть прямой матчап в базе контрпиков",
        tone: "good",
      });
    }
    if (hero.weakInto.includes(enemyName)) {
      score -= 28;
      threats.push(enemyName);
      reasons.push(`Риск против ${enemyName}`);
      breakdown.push({
        label: `Опасен ${enemyName}`,
        value: -28,
        detail: "Герой плохо играет в этот матчап",
        tone: "bad",
      });
    }
    const enemyCounterWeight = getCounterWeight(enemyName, hero.name);
    if (enemyCounterWeight) {
      const value = -Math.round(enemyCounterWeight / 5);
      score -= enemyCounterWeight / 5;
      threats.push(enemyName);
      reasons.push(`${enemyName} может законтрить`);
      breakdown.push({
        label: `${enemyName} контрит`,
        value,
        detail: "Враг является ответом на этот пик",
        tone: "bad",
      });
    }
  });

  state.allies.forEach((ally) => {
    if (hero.synergies.includes(ally) || heroByName.get(ally)?.synergies.includes(hero.name)) {
      score += 10;
      reasons.push(`Синергия с ${ally}`);
      breakdown.push({
        label: `Синергия с ${ally}`,
        value: 10,
        detail: "Пик усиливает уже выбранного союзника",
        tone: "good",
      });
    }
  });

  if (state.role !== "Любая" && hero.roles.includes(state.role)) {
    score += 8;
    breakdown.push({
      label: "Подходит под слот",
      value: 8,
      detail: `Герой может играть ${state.role}`,
      tone: "good",
    });
  }

  const level = pool[hero.name] || "none";
  if (level === "strong") {
    score += 18;
    reasons.push("Есть в твоём сильном пуле");
    breakdown.push({
      label: "Твой пул",
      value: 18,
      detail: "Отмечен как сильный герой",
      tone: "good",
    });
  } else if (level === "medium") {
    score += 7;
    reasons.push("Есть в твоём среднем пуле");
    breakdown.push({
      label: "Твой пул",
      value: 7,
      detail: "Отмечен как средний герой",
      tone: "good",
    });
  } else if (Object.values(pool).some((item) => item !== "none")) {
    score -= 16;
    reasons.push("Не отмечен в твоём пуле");
    breakdown.push({
      label: "Нет в пуле",
      value: -16,
      detail: "Ты уже отметил других героев, но не этого",
      tone: "bad",
    });
  }

  return {
    hero,
    score: Math.max(0, Math.min(150, score)),
    win: Math.max(35, Math.min(72, Math.round(48 + (score - 75) / 3))),
    reasons,
    breakdown,
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
    loadout: getHeroLoadout(hero, enemies, profileKey),
    variants: getBuildVariants(hero, enemies, profileKey, items),
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

function getHeroLoadout(hero: Hero, enemies: Hero[], profile: keyof typeof buildProfiles): HeroLoadout {
  const hasControl = enemies.some((enemy) => controlHeroes.has(enemy.name));
  const hasBurst = enemies.filter((enemy) => magicDamageHeroes.has(enemy.name) || enemy.roles.includes("Jungle")).length >= 2;
  const hasFront = enemies.filter(hasFrontline).length >= 2;

  if (profile === "tank") {
    return {
      emblem: "Танк",
      talents: ["Vitality", "Tenacity", "Concussive Blast"],
      spell: hero.roles.includes("Roam") ? "Flicker" : "Vengeance",
      spellOptions: [
        { spell: "Flicker", when: "для внезапного engage или сейва позиции" },
        { spell: "Vengeance", when: "против burst и долгих драк в центре файта" },
        { spell: "Petrify", when: "если команде нужен дополнительный контроль" },
      ],
      note: "Задача - начать драку, пережить первый урон и дать команде пространство.",
    };
  }

  if (profile === "support") {
    return {
      emblem: "Поддержка",
      talents: ["Agility", "Pull Yourself Together", "Focusing Mark"],
      spell: hasControl ? "Purify" : "Flicker",
      spellOptions: [
        { spell: "Flicker", when: "для сейва позиции и неожиданных заходов" },
        { spell: "Purify", when: "против цепного контроля" },
        { spell: "Aegis", when: "если нужно прикрыть gold/mid керри" },
      ],
      note: "Ставь приоритет на сейв ключевого керри и тайминг ультимейта.",
    };
  }

  if (profile === "mage" || profile === "burstMage") {
    return {
      emblem: "Маг",
      talents: ["Rupture", "Bargain Hunter", profile === "burstMage" ? "Lethal Ignition" : "Impure Rage"],
      spell: hasControl ? "Purify" : "Flicker",
      spellOptions: [
        { spell: "Flicker", when: "стандарт для позиции и добивания" },
        { spell: "Purify", when: "если враги ловят контролем" },
        { spell: "Flameshot", when: "если нужен дальний poke и добивание" },
      ],
      note: hasFront ? "Против плотного фронта быстрее выходи в пробой." : "Держи дистанцию и играй от первого контроля команды.",
    };
  }

  if (profile === "marksman" || profile === "critMarksman") {
    return {
      emblem: "Стрелок",
      talents: ["Fatal", "Weapon Master", "Quantum Charge"],
      spell: hasBurst ? "Aegis" : "Flicker",
      spellOptions: [
        { spell: "Flicker", when: "универсальный сейв и reposition" },
        { spell: "Aegis", when: "против dive/burst ассасинов" },
        { spell: "Purify", when: "против hard CC, который гарантирует смерть" },
      ],
      note: "Твой пик раскрывается через предметы, поэтому не разменивайся без вижена и фронта.",
    };
  }

  if (profile === "assassin") {
    return {
      emblem: "Ассасин",
      talents: ["Rupture", "Seasoned Hunter", "Killing Spree"],
      spell: "Retribution",
      spellOptions: [
        { spell: "Ice Retribution", when: "чтобы догонять мобильных керри" },
        { spell: "Flame Retribution", when: "для дуэли и burst trade" },
        { spell: "Bloody Retribution", when: "если нужно жить в затяжной драке" },
      ],
      note: "Ищи изолированную цель, не начинай первым в плотный контроль.",
    };
  }

  return {
    emblem: "Боец",
    talents: ["Firmness", "Festival of Blood", "Brave Smite"],
    spell: hero.roles.includes("Jungle") ? "Retribution" : "Flicker",
    spellOptions: [
      { spell: "Flicker", when: "для engage, добивания или выхода после входа" },
      { spell: "Vengeance", when: "если враги играют через burst и автоатаки" },
      { spell: "Petrify", when: "если нужно гарантировать контроль в комбо" },
    ],
    note: "Выбирай момент входа после траты ключевого контроля врага.",
  };
}

function getBuildVariants(hero: Hero, enemies: Hero[], profile: keyof typeof buildProfiles, currentItems: string[]): BuildVariant[] {
  const variants: BuildVariant[] = [
    {
      name: "Core",
      items: currentItems,
      reason: "Основной порядок покупки под роль героя и текущий драфт.",
    },
  ];
  const hasHealing = enemies.some((enemy) => healingHeroes.has(enemy.name));
  const hasFront = enemies.filter(hasFrontline).length >= 2;
  const magicCount = enemies.filter((enemy) => magicDamageHeroes.has(enemy.name)).length;
  const physicalDive = enemies.filter((enemy) => enemy.roles.includes("Jungle") || ["Chou", "Saber", "Hayabusa", "Fanny", "Ling", "Lancelot"].includes(enemy.name)).length;

  if (hasHealing) {
    variants.push({
      name: "Против лечения",
      items: withSituationalItem(currentItems, profile === "mage" || profile === "burstMage" ? "Necklace of Durance" : "Sea Halberd"),
      reason: "Бери раньше, если у врага Estes, Floryn, Angela, Ruby, Alpha, Uranus или сильный sustain.",
    });
  }

  if (hasFront) {
    variants.push({
      name: "Против танков",
      items: withSituationalItem(currentItems, profile === "mage" || profile === "burstMage" ? "Divine Glaive" : "Malefic Roar"),
      reason: "Ускоряет пробой плотного фронта и героев с ранней защитой.",
    });
  }

  if (magicCount >= 2 && ["tank", "fighter", "sustainFighter"].includes(profile)) {
    variants.push({
      name: "Против маг burst",
      items: withSituationalItem(currentItems, magicCount >= 3 ? "Radiant Armor" : "Athena's Shield"),
      reason: "Защищает от магического взрыва и poke до начала драки.",
    });
  }

  if (physicalDive >= 2 && profile !== "tank" && profile !== "support") {
    variants.push({
      name: "Если тебя фокусят",
      items: withSituationalItem(currentItems, profile === "marksman" || profile === "critMarksman" ? "Wind of Nature" : "Immortality"),
      reason: "Сдвигай defensive item раньше, если тебя постоянно ловят первым.",
    });
  }

  const snowballItem =
    profile === "mage" || profile === "burstMage"
      ? "Holy Crystal"
      : profile === "tank" || profile === "support"
        ? "Immortality"
        : "Blade of Despair";

  variants.push({
    name: "Когда ведём",
    items: withSituationalItem(currentItems, snowballItem),
    reason: "Снежный ком: больше урона, быстрее закрываешь карту и объекты.",
  });

  return variants.slice(0, 5);
}

function withSituationalItem(items: string[], item: string) {
  if (items.includes(item)) return items;
  const next = [...items];
  next[Math.max(2, next.length - 2)] = item;
  return next;
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
  return getDraftChecklist(state).map((insight) => `${insight.label}: ${insight.value}`);
}

export function getHeroGamePlan(hero: Hero, state: DraftState): HeroGamePlan {
  const build = getBuild(hero, state);
  const profile = getProfileKey(hero);
  const stages = getHeroStageScores(hero);
  const enemies = state.enemies.map((name) => heroByName.get(name)).filter(Boolean) as Hero[];
  const hasControlThreat = enemies.some((enemy) => controlHeroes.has(enemy.name));
  const hasHealThreat = enemies.some((enemy) => healingHeroes.has(enemy.name));
  const hasFrontThreat = enemies.filter(hasFrontline).length >= 2;
  const hasDiveThreat = enemies.some((enemy) => enemy.roles.includes("Jungle") || ["Chou", "Saber", "Hayabusa", "Fanny", "Ling", "Lancelot"].includes(enemy.name));

  const strongestStage =
    stages.early >= stages.mid && stages.early >= stages.late ? "ранний темп" : stages.mid >= stages.late ? "мидгейм" : "лейт";

  const winConditionByProfile: Record<keyof typeof buildProfiles, string> = {
    assassin: "сломать темп врага через быстрые ганги, забирать тонких керри и не давать им выйти в предметы",
    burstMage: "играть от первого контроля, быстро удалять тонкую цель и открывать карту через мид",
    mage: "держать дистанцию, чистить волны и выигрывать драки через poke/контроль",
    marksman: "дожить до ключевых предметов, играть за фронтом и стабильно забирать Lord/Turtle",
    critMarksman: "не отдавать линию до 2 предметов, затем играть через позиционку и лейт-урон",
    fighter: "давить боковую линию, заходить вторым темпом и ломать строй врага",
    sustainFighter: "затягивать драку, вынуждать врага тратить контроль и выигрывать на sustain",
    tank: "открывать вижен, начинать драки только когда команда рядом и принимать первый урон",
    support: "защищать главного керри, ловить момент для сейва/инициации и не отдавать позицию",
  };

  const timelineByProfile: Record<keyof typeof buildProfiles, Array<{ timing: string; task: string }>> = {
    assassin: [
      { timing: "0-2 мин", task: "забери быстрый jungle clear и проверь уязвимую боковую линию" },
      { timing: "2-5 мин", task: "играй вокруг Turtle, заходи после траты контроля врага" },
      { timing: "5-10 мин", task: "лови mage/gold до объектов, не трать ульт в плотный фронт" },
      { timing: "10+ мин", task: "ищи flank и не показывайся первым на карте" },
    ],
    burstMage: [
      { timing: "0-2 мин", task: "зачисти мид и помоги river/roam на первом движении" },
      { timing: "2-5 мин", task: "играй от контроля на Turtle, цель - вражеский jungle или gold" },
      { timing: "5-10 мин", task: "держи bush pressure и наказывай одиночные ротации" },
      { timing: "10+ мин", task: "не входи без вижена, burst держи под главного керри" },
    ],
    mage: [
      { timing: "0-2 мин", task: "не теряй волну, помогай river и защищай свой jungle вход" },
      { timing: "2-5 мин", task: "poke перед Turtle важнее случайного all-in" },
      { timing: "5-10 мин", task: "чисти mid wave первым и двигайся с roam" },
      { timing: "10+ мин", task: "держи дистанцию и играй через зону перед Lord" },
    ],
    marksman: [
      { timing: "0-2 мин", task: "играй линию без лишнего риска, важнее фарм и plate" },
      { timing: "2-5 мин", task: "не приходи в драку без волны и безопасного пути отхода" },
      { timing: "5-10 мин", task: "после 2 предметов подключайся к объектам за фронтом" },
      { timing: "10+ мин", task: "ты главный DPS, не бей фронт без позиции и вижена" },
    ],
    critMarksman: [
      { timing: "0-2 мин", task: "сохрани здоровье и добери ранний фарм" },
      { timing: "2-5 мин", task: "играй от сейва roam, не принимай честный all-in без преимущества" },
      { timing: "5-10 мин", task: "жми темп после первого crit power spike" },
      { timing: "10+ мин", task: "играй вокруг Lord, твоя смерть почти всегда отдаёт объект" },
    ],
    fighter: [
      { timing: "0-2 мин", task: "получи контроль линии и не отдай ранний freeze" },
      { timing: "2-5 мин", task: "сдвигайся к Turtle, если wave под контролем" },
      { timing: "5-10 мин", task: "ломай боковую башню или заходи вторым темпом в драку" },
      { timing: "10+ мин", task: "держи flank на керри, не бей танка первым" },
    ],
    sustainFighter: [
      { timing: "0-2 мин", task: "разменивайся коротко и не отдавай wave control" },
      { timing: "2-5 мин", task: "в драке тяни время и заставляй врага тратить скиллы" },
      { timing: "5-10 мин", task: "играй через split pressure и долгие skirmish" },
      { timing: "10+ мин", task: "заходи после engage, когда контроль врага уже потрачен" },
    ],
    tank: [
      { timing: "0-2 мин", task: "дай вижен jungle входов и помоги миду получить первую волну" },
      { timing: "2-5 мин", task: "готовь позицию под Turtle заранее, не начинай без команды" },
      { timing: "5-10 мин", task: "лови чужие ротации и защищай главного damage дилера" },
      { timing: "10+ мин", task: "проверяй кусты перед Lord, engage только по ключевой цели" },
    ],
    support: [
      { timing: "0-2 мин", task: "помоги миду/лесу и не оставляй gold без информации" },
      { timing: "2-5 мин", task: "сейв спелл держи под первый burst врага" },
      { timing: "5-10 мин", task: "играй рядом с самым сильным союзником" },
      { timing: "10+ мин", task: "главная задача - не дать врагу добраться до carry" },
    ],
  };

  const warnings = [
    hasControlThreat ? "Не отдавай Purify/Flicker до ключевого контроля врага." : "",
    hasDiveThreat ? "Следи за flank: у врага есть герой, который может быстро добраться до backline." : "",
    hasHealThreat ? "Если враг играет через лечение, anti-heal нужен раньше обычного." : "",
    hasFrontThreat ? "Против плотного фронта не затягивай пробивной предмет." : "",
    hero.weakInto.length ? `Особенно осторожно против: ${hero.weakInto.slice(0, 3).join(", ")}.` : "",
  ].filter(Boolean);

  return {
    winCondition: `${hero.name}: ${winConditionByProfile[profile]}. Самая сильная стадия - ${strongestStage}.`,
    timeline: timelineByProfile[profile],
    warnings,
    itemGoals: build.items.slice(1, 5).map((item) => `${itemCatalog[item.id]?.ru || item.id}: ${item.reason}`),
  };
}

export function getTeamGamePlan(state: DraftState): TeamGamePlan {
  const allies = state.allies.map((name) => heroByName.get(name)).filter(Boolean) as Hero[];
  const enemies = state.enemies.map((name) => heroByName.get(name)).filter(Boolean) as Hero[];
  const stageTotals = allies.reduce(
    (acc, hero) => {
      const stages = getHeroStageScores(hero);
      acc.early += stages.early;
      acc.mid += stages.mid;
      acc.late += stages.late;
      return acc;
    },
    { early: 0, mid: 0, late: 0 },
  );
  const strongestStage =
    stageTotals.early >= stageTotals.mid && stageTotals.early >= stageTotals.late ? "старт" : stageTotals.mid >= stageTotals.late ? "мидгейм" : "лейт";
  const front = allies.find(hasFrontline);
  const control = allies.find((hero) => controlHeroes.has(hero.name) || hero.roles.includes("Roam"));
  const gold = allies.find((hero) => hero.roles.includes("Gold"));
  const jungle = allies.find((hero) => hero.roles.includes("Jungle"));
  const magicCount = allies.filter((hero) => magicDamageHeroes.has(hero.name)).length;
  const physicalCount = Math.max(0, allies.length - magicCount);
  const missingRoles = teamRoles.filter((role) => !allies.some((hero) => hero.roles.includes(role)));
  const enemyHealing = enemies.some((hero) => healingHeroes.has(hero.name));

  return {
    style:
      strongestStage === "старт"
        ? "Играйте от раннего темпа: river, Turtle и быстрые ротации важнее пассивного фарма."
        : strongestStage === "мидгейм"
          ? "Пик раскрывается в мидгейме: дожмите первые предметы и навяжите драки за объекты."
          : "Пик сильнее в лейте: избегайте случайных смертей до 2-3 предметов у керри.",
    strongestStage,
    engage: control ? `${control.name} должен задавать начало драки, остальные заходят после контроля.` : "Не хватает явного инициатора, лучше брать героя с hard CC или играть от counter-engage.",
    damage:
      magicCount === 0 || physicalCount === 0
        ? "Урон выглядит однобоко, врагу проще купить защиту. Следующий пик лучше взять с другим типом урона."
        : `Урон распределён нормально: ${physicalCount} физ / ${magicCount} маг.`,
    protect: gold ? `Защищайте ${gold.name}: это главный стабильный DPS для объектов.` : jungle ? `Играйте вокруг ${jungle.name}: jungle сейчас главный темповый герой.` : front ? `Держитесь за ${front.name}: он открывает карту и принимает первый урон.` : "Назначьте, кого команда защищает в драке: сейчас главный carry неочевиден.",
    nextPick: enemyHealing
      ? "Против лечения врага заранее планируй anti-heal или героя, который давит sustain."
      : missingRoles.length
        ? `Следующий пик лучше закрыть под роль: ${missingRoles.join(", ")}.`
        : "Роли закрыты, следующий пик выбирай по контрматчапу и комфорту из пула.",
  };
}

export function getDraftChecklist(state: DraftState): DraftInsight[] {
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
    {
      label: "Роли",
      value: missingRoles.length ? missingRoles.join(", ") : "закрыты",
      detail: missingRoles.length ? "Закрой недостающий слот или бери flex героя" : "Команда покрывает все основные позиции",
      tone: missingRoles.length ? "bad" : "good",
    },
    {
      label: "Контроль",
      value: `${ccCount}`,
      detail: ccCount >= 2 ? "Есть чем начинать и останавливать драки" : "Нужен hard CC или герой, который ловит мобильных врагов",
      tone: ccCount >= 2 ? "good" : "bad",
    },
    {
      label: "Фронт",
      value: `${frontCount}`,
      detail: frontCount >= 1 ? "Есть герой для входа и проверки кустов" : "Команде не хватает тела для входа",
      tone: frontCount >= 1 ? "good" : "bad",
    },
    {
      label: "Anti-heal",
      value: antiHealNeed && !antiHealAnswer ? "нужен" : "ок",
      detail: antiHealNeed && !antiHealAnswer ? "У врага есть лечение/sustain, нужен Baxia, anti-heal item или герой с давлением" : "Критичной проблемы с лечением сейчас нет",
      tone: antiHealNeed && !antiHealAnswer ? "bad" : "good",
    },
    {
      label: "Урон",
      value: `${physical} физ / ${magic} маг / ${trueDamage} true`,
      detail: magic === 0 || physical === 0 ? "Урон может быть слишком однобоким, врагу проще закупиться в защиту" : "Типы урона распределены нормально",
      tone: magic === 0 || physical === 0 ? "neutral" : "good",
    },
  ];
}
