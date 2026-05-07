export type ProMetaSource = {
  name: string;
  url: string;
  note: string;
};

export type ProHeroSignal = {
  hero: string;
  roles: string[];
  tier: "S+" | "S" | "A";
  scoreBoost: number;
  banPriority: number;
  evidence: string;
  sourceKeys: string[];
};

export type ProBuildPlan = {
  style: string;
  items: string[];
  flexItems: string[];
  sourceLabel: string;
  confidence: "высокая" | "средняя";
};

export const proMetaUpdatedAt = "2026-05-07";

export const proMetaSources: Record<string, ProMetaSource> = {
  mplIdStats: {
    name: "MPL Indonesia S17 statistics",
    url: "https://id-mpl.com/id/statistics",
    note: "Официальная статистика MPL ID по героям: pick, ban, win rate.",
  },
  mlbbdleId: {
    name: "MLBBdle MPL ID S17 patch 2.1.67",
    url: "https://mlbb-tierlist-nu.vercel.app/",
    note: "Сводка по MPL ID S17: пики, баны и самые contested герои.",
  },
  mlbbdlePh: {
    name: "MLBBdle MPL PH S17 patch 2.1.67",
    url: "https://mlbb-tierlist-nu.vercel.app/",
    note: "Сводка по MPL PH S17: пики, баны и региональные приоритеты.",
  },
  tools: {
    name: "MLBB.tools tier list 2026-05-07",
    url: "https://mlbb.tools/",
    note: "Свежий ranked/high-rank слой для проверки, что pro-пики не выпали из обычной игры.",
  },
};

export const proHeroSignals: Record<string, ProHeroSignal> = {
  Fanny: {
    hero: "Fanny",
    roles: ["Jungle"],
    tier: "S+",
    scoreBoost: 9,
    banPriority: 24,
    evidence: "Один из самых банимых героев в MPL ID/PH, требует точечного ответа или бана.",
    sourceKeys: ["mlbbdleId", "mlbbdlePh"],
  },
  Freya: {
    hero: "Freya",
    roles: ["EXP", "Jungle"],
    tier: "S+",
    scoreBoost: 8,
    banPriority: 23,
    evidence: "Высокий ban priority в MPL ID и MPL PH на patch 2.1.67.",
    sourceKeys: ["mlbbdleId", "mlbbdlePh"],
  },
  Zhuxin: {
    hero: "Zhuxin",
    roles: ["Mid"],
    tier: "S+",
    scoreBoost: 9,
    banPriority: 20,
    evidence: "Самый частый pick в MPL ID S17 и высокий ban priority в MPL PH.",
    sourceKeys: ["mlbbdleId", "mlbbdlePh", "tools"],
  },
  Baxia: {
    hero: "Baxia",
    roles: ["Jungle", "Roam"],
    tier: "S+",
    scoreBoost: 8,
    banPriority: 20,
    evidence: "Сильный pro-приоритет как антихил/темп, особенно против sustain-драфтов.",
    sourceKeys: ["mlbbdlePh", "mlbbdleId"],
  },
  Guinevere: {
    hero: "Guinevere",
    roles: ["EXP", "Jungle"],
    tier: "S",
    scoreBoost: 7,
    banPriority: 18,
    evidence: "Высокие баны в MPL ID и заметная ranked/high-rank сила.",
    sourceKeys: ["mlbbdleId", "tools"],
  },
  Marcel: {
    hero: "Marcel",
    roles: ["Jungle", "EXP"],
    tier: "S",
    scoreBoost: 8,
    banPriority: 18,
    evidence: "Новый contested герой в MPL ID и high-rank tier lists.",
    sourceKeys: ["mlbbdleId", "tools"],
  },
  Kalea: {
    hero: "Kalea",
    roles: ["Roam", "EXP"],
    tier: "S",
    scoreBoost: 7,
    banPriority: 15,
    evidence: "Высокий ban priority в MPL PH, сильна как гибкий front/engage.",
    sourceKeys: ["mlbbdlePh"],
  },
  Gloo: {
    hero: "Gloo",
    roles: ["EXP", "Roam"],
    tier: "S",
    scoreBoost: 8,
    banPriority: 11,
    evidence: "Топовый pick MPL ID S17 и актуальный ranked S-tier.",
    sourceKeys: ["mlbbdleId", "tools"],
  },
  Leomord: {
    hero: "Leomord",
    roles: ["Jungle", "EXP"],
    tier: "S",
    scoreBoost: 7,
    banPriority: 8,
    evidence: "Стабильный pro pick в MPL ID/PH как темповый jungle/EXP.",
    sourceKeys: ["mlbbdleId", "mlbbdlePh"],
  },
  Yve: {
    hero: "Yve",
    roles: ["Mid"],
    tier: "S",
    scoreBoost: 7,
    banPriority: 8,
    evidence: "Частый MPL ID pick для контроля зоны вокруг объектов.",
    sourceKeys: ["mlbbdleId"],
  },
  Claude: {
    hero: "Claude",
    roles: ["Gold"],
    tier: "S",
    scoreBoost: 8,
    banPriority: 7,
    evidence: "Самый частый MPL PH S17 pick по сводке patch 2.1.67.",
    sourceKeys: ["mlbbdlePh"],
  },
  Valentina: {
    hero: "Valentina",
    roles: ["Mid"],
    tier: "S",
    scoreBoost: 7,
    banPriority: 8,
    evidence: "Топовый MPL PH pick, особенно ценна против сильных ultimates.",
    sourceKeys: ["mlbbdlePh"],
  },
  Khaleed: {
    hero: "Khaleed",
    roles: ["EXP", "Roam"],
    tier: "S",
    scoreBoost: 7,
    banPriority: 8,
    evidence: "Один из самых частых MPL PH picks как ранний pressure/front.",
    sourceKeys: ["mlbbdlePh"],
  },
  Harley: {
    hero: "Harley",
    roles: ["Jungle", "Mid"],
    tier: "A",
    scoreBoost: 5,
    banPriority: 7,
    evidence: "Частый MPL PH pick и сильный ranked/high-rank assassin mage.",
    sourceKeys: ["mlbbdlePh", "tools"],
  },
  Harith: {
    hero: "Harith",
    roles: ["Gold", "Mid"],
    tier: "A",
    scoreBoost: 5,
    banPriority: 6,
    evidence: "Pro/high-rank gold flex, часто требует раннего defensive flex против burst.",
    sourceKeys: ["mlbbdleId", "tools"],
  },
  Beatrix: {
    hero: "Beatrix",
    roles: ["Gold"],
    tier: "A",
    scoreBoost: 5,
    banPriority: 5,
    evidence: "Pro gold-lane comfort pick: ценится за range, objective pressure и гибкие defensive slots.",
    sourceKeys: ["mlbbdleId"],
  },
  Irithel: {
    hero: "Irithel",
    roles: ["Gold"],
    tier: "A",
    scoreBoost: 5,
    banPriority: 4,
    evidence: "Pro gold DPS вариант против составов, которые трудно пробивать одним burst.",
    sourceKeys: ["mlbbdleId"],
  },
  Aulus: {
    hero: "Aulus",
    roles: ["Jungle", "EXP"],
    tier: "A",
    scoreBoost: 5,
    banPriority: 5,
    evidence: "Pro/high-rank scaling fighter: требует стабильного фронта и времени на предметы.",
    sourceKeys: ["mlbbdleId"],
  },
  Dyrroth: {
    hero: "Dyrroth",
    roles: ["EXP", "Jungle"],
    tier: "A",
    scoreBoost: 5,
    banPriority: 5,
    evidence: "Pro answer против плотных EXP/frontline через armor shred и ранний темп.",
    sourceKeys: ["mlbbdleId"],
  },
  Sora: {
    hero: "Sora",
    roles: ["EXP"],
    tier: "S",
    scoreBoost: 8,
    banPriority: 10,
    evidence: "Очень частый MPL ID pick, сильный дуэльный EXP/front.",
    sourceKeys: ["mlbbdleId"],
  },
};

export const proBuildPlans: Record<string, ProBuildPlan> = {
  Claude: {
    style: "pro gold DPS",
    items: ["Swift Boots", "Demon Hunter Sword", "Golden Staff", "Corrosion Scythe", "Malefic Roar", "Wind of Nature"],
    flexItems: ["Rose Gold Meteor", "Immortality", "Sea Halberd"],
    sourceLabel: "MPL PH gold-lane pattern + high-rank core",
    confidence: "высокая",
  },
  Zhuxin: {
    style: "pro mid zone control",
    items: ["Demon Shoes", "Enchanted Talisman", "Ice Queen Wand", "Glowing Wand", "Divine Glaive", "Winter Crown"],
    flexItems: ["Necklace of Durance", "Fleeting Time", "Immortality"],
    sourceLabel: "MPL ID/PH mid-control pattern",
    confidence: "высокая",
  },
  Yve: {
    style: "pro objective control",
    items: ["Demon Shoes", "Enchanted Talisman", "Ice Queen Wand", "Glowing Wand", "Divine Glaive", "Winter Crown"],
    flexItems: ["Necklace of Durance", "Holy Crystal", "Immortality"],
    sourceLabel: "MPL ID zone-control pattern",
    confidence: "высокая",
  },
  Valentina: {
    style: "pro flex mage",
    items: ["Arcane Boots", "Enchanted Talisman", "Genius Wand", "Lightning Truncheon", "Divine Glaive", "Winter Crown"],
    flexItems: ["Necklace of Durance", "Holy Crystal", "Immortality"],
    sourceLabel: "MPL PH mid flex pattern",
    confidence: "средняя",
  },
  Fanny: {
    style: "pro snowball jungle",
    items: ["Tough Boots", "Sky Piercer", "Blade of the Heptaseas", "Hunter Strike", "Malefic Roar", "Immortality"],
    flexItems: ["Rose Gold Meteor", "Blade of Despair", "Sea Halberd"],
    sourceLabel: "pro jungle snowball pattern",
    confidence: "средняя",
  },
  Freya: {
    style: "pro fighter burst DPS",
    items: ["Warrior Boots", "War Axe", "Haas's Claws", "Malefic Roar", "Queen's Wings", "Immortality"],
    flexItems: ["Sea Halberd", "Rose Gold Meteor", "Wind of Nature"],
    sourceLabel: "MPL ban-priority fighter pattern",
    confidence: "средняя",
  },
  Baxia: {
    style: "pro anti-heal tempo",
    items: ["Tough Boots", "Dominance Ice", "Thunder Belt", "Antique Cuirass", "Athena's Shield", "Immortality"],
    flexItems: ["Radiant Armor", "Oracle", "Brute Force Breastplate"],
    sourceLabel: "MPL PH/ID anti-sustain tank pattern",
    confidence: "высокая",
  },
  Gloo: {
    style: "pro EXP sustain front",
    items: ["Tough Boots", "Thunder Belt", "Dominance Ice", "Oracle", "Athena's Shield", "Immortality"],
    flexItems: ["Antique Cuirass", "Radiant Armor", "Brute Force Breastplate"],
    sourceLabel: "MPL ID EXP/front pattern",
    confidence: "высокая",
  },
  Khaleed: {
    style: "pro early pressure EXP",
    items: ["Warrior Boots", "War Axe", "Hunter Strike", "Queen's Wings", "Malefic Roar", "Immortality"],
    flexItems: ["Sea Halberd", "Antique Cuirass", "Athena's Shield"],
    sourceLabel: "MPL PH early-pressure EXP pattern",
    confidence: "средняя",
  },
  Leomord: {
    style: "pro tempo jungle",
    items: ["Tough Boots", "War Axe", "Hunter Strike", "Blade of Despair", "Malefic Roar", "Immortality"],
    flexItems: ["Sea Halberd", "Queen's Wings", "Rose Gold Meteor"],
    sourceLabel: "MPL ID/PH tempo jungle pattern",
    confidence: "средняя",
  },
  Sora: {
    style: "pro duel EXP",
    items: ["Warrior Boots", "War Axe", "Hunter Strike", "Queen's Wings", "Malefic Roar", "Immortality"],
    flexItems: ["Sea Halberd", "Athena's Shield", "Oracle"],
    sourceLabel: "MPL ID EXP duel pattern",
    confidence: "средняя",
  },
  Guinevere: {
    style: "pro magic engage",
    items: ["Arcane Boots", "Genius Wand", "Concentrated Energy", "Holy Crystal", "Divine Glaive", "Winter Crown"],
    flexItems: ["Necklace of Durance", "Immortality", "Oracle"],
    sourceLabel: "MPL ban-priority engage pattern",
    confidence: "средняя",
  },
  Marcel: {
    style: "pro new-hero bruiser",
    items: ["Warrior Boots", "War Axe", "Hunter Strike", "Queen's Wings", "Malefic Roar", "Immortality"],
    flexItems: ["Sea Halberd", "Athena's Shield", "Brute Force Breastplate"],
    sourceLabel: "MPL ID contested new-hero pattern",
    confidence: "средняя",
  },
  Harith: {
    style: "pro gold magic DPS",
    items: ["Tough Boots", "Genius Wand", "Concentrated Energy", "Holy Crystal", "Divine Glaive", "Winter Crown"],
    flexItems: ["Rose Gold Meteor", "Immortality", "Necklace of Durance"],
    sourceLabel: "pro gold flex magic-DPS pattern",
    confidence: "средняя",
  },
  Beatrix: {
    style: "pro gold burst/range",
    items: ["Swift Boots", "Blade of the Heptaseas", "Hunter Strike", "Malefic Roar", "Blade of Despair", "Wind of Nature"],
    flexItems: ["Rose Gold Meteor", "Sea Halberd", "Immortality"],
    sourceLabel: "pro gold comfort pattern",
    confidence: "средняя",
  },
  Irithel: {
    style: "pro gold crit DPS",
    items: ["Swift Boots", "Windtalker", "Berserker's Fury", "Haas's Claws", "Malefic Roar", "Wind of Nature"],
    flexItems: ["Sea Halberd", "Rose Gold Meteor", "Immortality"],
    sourceLabel: "pro scaling gold pattern",
    confidence: "средняя",
  },
  Aulus: {
    style: "pro scaling fighter",
    items: ["Warrior Boots", "War Axe", "Golden Staff", "Demon Hunter Sword", "Malefic Roar", "Immortality"],
    flexItems: ["Sea Halberd", "Queen's Wings", "Athena's Shield"],
    sourceLabel: "pro scaling fighter pattern",
    confidence: "средняя",
  },
  Dyrroth: {
    style: "pro armor-shred EXP",
    items: ["Warrior Boots", "War Axe", "Hunter Strike", "Sea Halberd", "Malefic Roar", "Immortality"],
    flexItems: ["Queen's Wings", "Rose Gold Meteor", "Antique Cuirass"],
    sourceLabel: "pro anti-frontline EXP pattern",
    confidence: "средняя",
  },
};

export function getProSignal(heroName: string) {
  return proHeroSignals[heroName];
}

export function getProBuildPlan(heroName: string) {
  return proBuildPlans[heroName];
}
