const roles = ["Любая", "Jungle", "EXP", "Mid", "Gold", "Roam"];
const APP_VERSION = window.MLBB_APP_VERSION || "2026.05.06.18";
const teamRoles = ["Jungle", "EXP", "Mid", "Gold", "Roam"];
const roleBadges = {
  Любая: { short: "All", label: "Все" },
  Jungle: { short: "JG", label: "Jungle" },
  EXP: { short: "EXP", label: "EXP" },
  Mid: { short: "MID", label: "Mid" },
  Gold: { short: "GLD", label: "Gold" },
  Roam: { short: "RM", label: "Roam" },
};

const stageBias = {
  early: [
    "Fanny",
    "Hilda",
    "Jawhead",
    "Natalia",
    "Selena",
    "Saber",
    "Harley",
    "Gusion",
    "Julian",
    "Dyrroth",
    "Khaleed",
    "Franco",
    "Grock",
    "Mathilda",
    "Chou",
    "Baxia",
    "Akai",
    "Paquito",
    "Kadita",
    "Helcurt",
  ],
  mid: [
    "Yi Sun-shin",
    "Fredrinn",
    "Arlott",
    "Sora",
    "Zhuxin",
    "Pharsa",
    "Yve",
    "Valir",
    "Luo Yi",
    "Tigreal",
    "Atlas",
    "Minotaur",
    "Lolita",
    "Khufra",
    "Gloo",
    "Uranus",
    "X.Borg",
    "Terizla",
    "Ruby",
    "Benedetta",
  ],
  late: [
    "Aldous",
    "Alice",
    "Argus",
    "Aulus",
    "Cecilion",
    "Claude",
    "Hanabi",
    "Irithel",
    "Karrie",
    "Layla",
    "Lesley",
    "Miya",
    "Moskov",
    "Natan",
    "Sun",
    "Wanwan",
    "Xavier",
    "Zhask",
    "Zetian",
    "Melissa",
  ],
};

const controlHeroes = new Set([
  "Akai", "Atlas", "Aurora", "Belerick", "Chou", "Diggie", "Edith", "Franco", "Gatotkaca",
  "Gloo", "Guinevere", "Johnson", "Kaja", "Khufra", "Lolita", "Minotaur", "Minsitthar",
  "Nana", "Ruby", "Selena", "Tigreal", "Valir", "Vexana", "Yve", "Zhuxin",
]);
const frontlineHeroes = new Set([
  "Akai", "Alice", "Atlas", "Barats", "Baxia", "Belerick", "Edith", "Fredrinn", "Gatotkaca",
  "Gloo", "Grock", "Hilda", "Hylos", "Khufra", "Lolita", "Minotaur", "Ruby", "Terizla",
  "Tigreal", "Uranus", "X.Borg", "Yu Zhong",
]);
const healingHeroes = new Set(["Angela", "Estes", "Floryn", "Rafaela", "Uranus", "Alpha", "Ruby", "Alice"]);
const antiHealHeroes = new Set(["Baxia", "Valir", "Karrie", "Kimmy", "X.Borg"]);
const magicDamageHeroes = new Set([
  "Aamon", "Alice", "Aurora", "Cecilion", "Chang'e", "Cyclops", "Eudora", "Gord", "Harith",
  "Harley", "Julian", "Kadita", "Kagura", "Kimmy", "Lunox", "Luo Yi", "Lylia", "Nana",
  "Natan", "Novaria", "Odette", "Pharsa", "Valentina", "Vale", "Valir", "Vexana", "Xavier",
  "Yve", "Zetian", "Zhask", "Zhuxin",
]);
const trueDamageHeroes = new Set(["Karrie", "X.Borg", "Alpha", "Baxia", "Lesley"]);

const itemCatalog = {
  "Swift Boots": { ru: "Сапоги скорости", slug: "swift-boots" },
  "Tough Boots": { ru: "Стойкие сапоги", slug: "tough-boots" },
  "Warrior Boots": { ru: "Сапоги воина", slug: "warrior-boots" },
  "Arcane Boots": { ru: "Магические сапоги", slug: "arcane-boots" },
  "Bloodlust Axe": { ru: "Топор кровожадности", slug: "bloodlust-axe" },
  "Corrosion Scythe": { ru: "Коррозийная коса", slug: "corrosion-scythe" },
  "Demon Hunter Sword": { ru: "Меч охотника на демонов", slug: "demon-hunter-sword" },
  "Golden Staff": { ru: "Золотой посох", slug: "golden-staff" },
  "Malefic Roar": { ru: "Злобный рык", slug: "malefic-roar" },
  Immortality: { ru: "Бессмертие", slug: "immortality" },
  Oracle: { ru: "Оракул", slug: "oracle" },
  "Radiant Armor": { ru: "Сияющая броня", slug: "radiant-armor" },
  "Rose Gold Meteor": { ru: "Метеор розового золота", slug: "rose-gold-meteor" },
  "Wind of Nature": { ru: "Ветер природы", slug: "wind-of-nature" },
  Windtalker: { ru: "Говорящий с ветром", slug: "windtalker" },
  "Berserker's Fury": { ru: "Ярость берсерка", slug: "berserkers-fury" },
  "Haas's Claws": { ru: "Когти Хааса", slug: "haass-claws" },
  "Endless Battle": { ru: "Бесконечная битва", slug: "endless-battle" },
  "Blade of the Heptaseas": { ru: "Клинок семи морей", slug: "blade-of-the-heptaseas" },
  "Ice Queen Wand": { ru: "Жезл ледяной королевы", slug: "ice-queen-wand" },
  "Holy Crystal": { ru: "Святой кристалл", slug: "holy-crystal" },
  "Genius Wand": { ru: "Гениальный жезл", slug: "genius-wand" },
  "Lightning Truncheon": { ru: "Молниеносный жезл", slug: "lightning-truncheon" },
  "Clock of Destiny": { ru: "Часы судьбы", slug: "clock-of-destiny" },
  "Concentrated Energy": { ru: "Концентрированная энергия", slug: "concentrated-energy" },
  "Demon Shoes": { ru: "Демонические ботинки", slug: "demon-shoes" },
  "Flask of the Oasis": { ru: "Фляга оазиса", slug: "flask-of-the-oasis" },
  "Fleeting Time": { ru: "Мимолетное время", slug: "fleeting-time" },
  "Necklace of Durance": { ru: "Ожерелье заточения", slug: "necklace-of-durance" },
  "Enchanted Talisman": { ru: "Зачарованный талисман", slug: "enchanted-talisman" },
  "Glowing Wand": { ru: "Пылающий жезл", slug: "glowing-wand" },
  "Wishing Lantern": { ru: "Фонарь желаний", slug: "wishing-lantern" },
  "Divine Glaive": { ru: "Божественный меч", slug: "divine-glaive" },
  "Winter Crown": { ru: "Зимняя корона", slug: "winter-crown" },
  "Sky Piercer": { ru: "Небесный пронзатель", slug: "sky-piercer" },
  "Hunter Strike": { ru: "Удар охотника", slug: "hunter-strike" },
  "Blade of Despair": { ru: "Клинок отчаяния", slug: "blade-of-desperation" },
  "War Axe": { ru: "Боевой топор", slug: "war-axe" },
  "Brute Force Breastplate": { ru: "Кираса грубой силы", slug: "brute-force-breastplate" },
  "Queen's Wings": { ru: "Крылья королевы", slug: "queens-wings" },
  "Dominance Ice": { ru: "Лед господства", slug: "dominance-ice" },
  "Thunder Belt": { ru: "Громовой пояс", slug: "thunder-belt" },
  "Antique Cuirass": { ru: "Древняя кираса", slug: "antique-cuirass" },
  "Athena's Shield": { ru: "Щит Афины", slug: "athenas-shield" },
  "Sea Halberd": { ru: "Морская алебарда", slug: "sea-halberd" },
};

let heroes = [
  {
    name: "Julian",
    roles: ["Jungle", "Mid"],
    tier: "S",
    meta: 96,
    counters: ["Kimmy", "Granger", "Pharsa", "Yve", "Angela"],
    weakInto: ["Kaja", "Khufra", "Minotaur"],
    synergies: ["Angela", "Diggie", "Minotaur"],
    notes: "Сильный темп, быстро наказывает тонких героев и мидов без сейва.",
  },
  {
    name: "Hayabusa",
    roles: ["Jungle"],
    tier: "S",
    meta: 94,
    counters: ["Pharsa", "Yve", "Kimmy", "Karrie", "Zhuxin"],
    weakInto: ["Khufra", "Saber", "Diggie", "Minotaur"],
    synergies: ["Angela", "Floryn"],
    notes: "Хорош против разрозненного состава и слабой защиты задней линии.",
  },
  {
    name: "Yi Sun-shin",
    roles: ["Jungle"],
    tier: "S",
    meta: 93,
    counters: ["Fanny", "Natalia", "Selena", "Harley"],
    weakInto: ["Lolita", "Khufra", "Fredrinn"],
    synergies: ["Minotaur", "Yve", "Angela"],
    notes:
      "Дает вижен и сильный тимфайт, особенно если команда играет от объектов.",
  },
  {
    name: "Harley",
    roles: ["Jungle", "Mid"],
    tier: "S",
    meta: 91,
    counters: ["Kimmy", "Karrie", "Pharsa", "Granger"],
    weakInto: ["Lolita", "Diggie", "Minotaur"],
    synergies: ["Gloo", "Uranus"],
    notes: "Пик для быстрого убийства керри до начала драки.",
  },
  {
    name: "Gusion",
    roles: ["Jungle", "Mid"],
    tier: "S",
    meta: 90,
    counters: ["Kimmy", "Karrie", "Yve", "Floryn"],
    weakInto: ["Khufra", "Minotaur", "Diggie"],
    synergies: ["Angela", "Tigreal"],
    notes: "Работает, когда нужен взрывной магический урон.",
  },
  {
    name: "Sora",
    roles: ["EXP"],
    tier: "S",
    meta: 95,
    counters: ["Uranus", "Gloo", "Karrie", "Granger"],
    weakInto: ["Phoveus", "Kaja", "Valir"],
    synergies: ["Angela", "Floryn", "Minotaur"],
    notes: "Сильный дуэлянт после четвертого уровня и хороший вход в драку.",
  },
  {
    name: "Fredrinn",
    roles: ["EXP", "Jungle"],
    tier: "S",
    meta: 92,
    counters: ["Hayabusa", "Gusion", "Harley", "Saber"],
    weakInto: ["Karrie", "Valir", "X.Borg"],
    synergies: ["Floryn", "Angela", "Yve"],
    notes: "Стабильный фронтлайн и ответ на ассасинов.",
  },
  {
    name: "Arlott",
    roles: ["EXP", "Roam"],
    tier: "S",
    meta: 90,
    counters: ["Kimmy", "Granger", "Zhuxin", "Yve"],
    weakInto: ["Diggie", "Valir", "Minotaur"],
    synergies: ["Tigreal", "Minotaur", "Pharsa"],
    notes: "Нужен контроль в команде, тогда Арлотт раскрывается сильнее.",
  },
  {
    name: "Zhuxin",
    roles: ["Mid"],
    tier: "S",
    meta: 94,
    counters: ["Gloo", "Uranus", "Fredrinn", "Minotaur"],
    weakInto: ["Hayabusa", "Julian", "Gusion"],
    synergies: ["Fredrinn", "Minotaur", "Karrie"],
    notes: "Давит зону и мешает плотным составам заходить в драку.",
  },
  {
    name: "Pharsa",
    roles: ["Mid"],
    tier: "S",
    meta: 91,
    counters: ["Gloo", "Uranus", "Fredrinn", "Tigreal"],
    weakInto: ["Hayabusa", "Harley", "Julian"],
    synergies: ["Minotaur", "Arlott", "Fredrinn"],
    notes: "Хороша, когда нужен дальний урон до начала файта.",
  },
  {
    name: "Yve",
    roles: ["Mid"],
    tier: "S",
    meta: 90,
    counters: ["Gloo", "Uranus", "Fredrinn", "Minotaur"],
    weakInto: ["Hayabusa", "Gusion", "Harley"],
    synergies: ["Fredrinn", "Karrie", "Diggie"],
    notes: "Контроль территории вокруг лорда и черепахи.",
  },
  {
    name: "Kimmy",
    roles: ["Gold", "Mid"],
    tier: "S",
    meta: 93,
    counters: ["Uranus", "Gloo", "Fredrinn", "Minotaur"],
    weakInto: ["Lolita", "Hayabusa", "Julian", "Harley"],
    synergies: ["Angela", "Diggie", "Floryn"],
    notes: "Темповый flex-пик: может идти Gold или Mid против плотного фронта.",
  },
  {
    name: "Granger",
    roles: ["Gold", "Jungle"],
    tier: "S",
    meta: 91,
    counters: ["Uranus", "Gloo", "Fredrinn", "Pharsa"],
    weakInto: ["Lolita", "Arlott", "Hayabusa"],
    synergies: ["Minotaur", "Floryn"],
    notes: "Силен в раннем давлении и быстрых стычках.",
  },
  {
    name: "Karrie",
    roles: ["Gold"],
    tier: "S",
    meta: 90,
    counters: ["Uranus", "Gloo", "Fredrinn", "Minotaur"],
    weakInto: ["Hayabusa", "Harley", "Lolita"],
    synergies: ["Diggie", "Floryn", "Yve"],
    notes: "Лучший ответ, если враг собирает жирный фронтлайн.",
  },
  {
    name: "Angela",
    roles: ["Roam"],
    tier: "S",
    meta: 92,
    counters: ["Harley", "Gusion", "Hayabusa"],
    weakInto: ["Diggie", "Luo Yi", "Baxia"],
    synergies: ["Julian", "Sora", "Fredrinn"],
    notes: "Усиливает темповых керри и спасает от взрывного урона.",
  },
  {
    name: "Floryn",
    roles: ["Roam"],
    tier: "S",
    meta: 90,
    counters: ["Harley", "Gusion", "Pharsa"],
    weakInto: ["Baxia", "Luo Yi", "Atlas"],
    synergies: ["Fredrinn", "Sora", "Karrie"],
    notes: "Стабильная поддержка для затяжных файтов.",
  },
  {
    name: "Diggie",
    roles: ["Roam"],
    tier: "S",
    meta: 89,
    counters: ["Tigreal", "Atlas", "Khufra", "Minotaur", "Arlott"],
    weakInto: ["Natalia", "Luo Yi", "Valentina"],
    synergies: ["Kimmy", "Karrie", "Yve"],
    notes: "Главный ответ на массовый контроль.",
  },
  {
    name: "Uranus",
    roles: ["EXP", "Roam"],
    tier: "S",
    meta: 91,
    counters: ["Pharsa", "Yve", "Harley"],
    weakInto: ["Karrie", "Kimmy", "Valir"],
    synergies: ["Angela", "Yve"],
    notes: "Забирает пространство и заставляет врага тратить ресурсы.",
  },
  {
    name: "Gloo",
    roles: ["EXP", "Roam"],
    tier: "S",
    meta: 90,
    counters: ["Hayabusa", "Gusion", "Harley", "Saber"],
    weakInto: ["Karrie", "Kimmy", "Valir", "Faramis"],
    synergies: ["Yve", "Pharsa", "Floryn"],
    notes: "Силен против героев, которым трудно выйти из контроля.",
  },
  {
    name: "Minotaur",
    roles: ["Roam"],
    tier: "S",
    meta: 89,
    counters: ["Hayabusa", "Gusion", "Julian", "Harley"],
    weakInto: ["Diggie", "Valir", "Karrie"],
    synergies: ["Pharsa", "Yve", "Granger"],
    notes: "Надежный инициализатор с лечением и контрвходом.",
  },
  {
    name: "Lolita",
    roles: ["Roam"],
    tier: "A",
    meta: 84,
    counters: ["Kimmy", "Granger", "Karrie", "Harley"],
    weakInto: ["Diggie", "Valir", "Gloo"],
    synergies: ["Pharsa", "Granger"],
    notes: "Щит ломает много дальнего урона и снарядов.",
  },
  {
    name: "Khufra",
    roles: ["Roam"],
    tier: "A",
    meta: 83,
    counters: ["Hayabusa", "Gusion", "Fanny", "Benedetta", "Julian"],
    weakInto: ["Diggie", "Valir", "Karrie"],
    synergies: ["Pharsa", "Kimmy"],
    notes: "Ответ на мобильных ассасинов и рывки.",
  },
  {
    name: "Valir",
    roles: ["Mid", "Roam"],
    tier: "A",
    meta: 82,
    counters: ["Sora", "Gloo", "Uranus", "Arlott"],
    weakInto: ["Pharsa", "Hayabusa", "Harley"],
    synergies: ["Karrie", "Fredrinn"],
    notes: "Отталкивает фронтлайн и мешает заходить в ближний бой.",
  },
  {
    name: "Baxia",
    roles: ["Jungle", "Roam"],
    tier: "A",
    meta: 81,
    counters: ["Angela", "Floryn", "Uranus", "Gloo"],
    weakInto: ["Karrie", "Yve", "Pharsa"],
    synergies: ["Kimmy", "Zhuxin"],
    notes: "Срезает лечение и быстро начинает драки.",
  },
  {
    name: "Tigreal",
    roles: ["Roam"],
    tier: "A",
    meta: 80,
    counters: ["Kimmy", "Granger", "Pharsa"],
    weakInto: ["Diggie", "Valir", "Karrie"],
    synergies: ["Gusion", "Arlott", "Pharsa"],
    notes: "Пик для wombo-combo, если Diggie не мешает.",
  },
  {
    name: "Saber",
    roles: ["Jungle", "Roam"],
    tier: "B",
    meta: 72,
    counters: ["Hayabusa", "Gusion", "Harley", "Pharsa"],
    weakInto: ["Diggie", "Gloo", "Fredrinn"],
    synergies: ["Angela", "Eudora"],
    notes: "Точечный ответ на одного опасного керри.",
  },
  {
    name: "Fanny",
    roles: ["Jungle"],
    tier: "A",
    meta: 84,
    counters: ["Pharsa", "Yve", "Kimmy"],
    weakInto: ["Khufra", "Saber", "Minotaur"],
    synergies: ["Angela", "Floryn"],
    notes: "Сильна, если у врага мало таргет-контроля.",
  },
  {
    name: "Ling",
    roles: ["Jungle"],
    tier: "A",
    meta: 82,
    counters: ["Pharsa", "Yve", "Kimmy"],
    weakInto: ["Khufra", "Saber", "Minotaur"],
    synergies: ["Angela", "Floryn"],
    notes: "Хорош для сплит-пуша и позднего темпа.",
  },
  {
    name: "Benedetta",
    roles: ["EXP", "Jungle"],
    tier: "A",
    meta: 82,
    counters: ["Pharsa", "Yve", "Kimmy"],
    weakInto: ["Khufra", "Minsitthar", "Minotaur"],
    synergies: ["Angela", "Yve"],
    notes: "Мобильный EXP против тонкой задней линии.",
  },
  {
    name: "X.Borg",
    roles: ["EXP"],
    tier: "A",
    meta: 80,
    counters: ["Fredrinn", "Uranus", "Gloo", "Sora"],
    weakInto: ["Karrie", "Kimmy", "Pharsa"],
    synergies: ["Floryn", "Yve"],
    notes: "Затяжной урон против плотных героев.",
  },
  {
    name: "Kaja",
    roles: ["Roam", "EXP"],
    tier: "A",
    meta: 79,
    counters: ["Sora", "Julian", "Hayabusa", "Gusion"],
    weakInto: ["Diggie", "Pharsa", "Yve"],
    synergies: ["Kimmy", "Granger"],
    notes: "Подходит, когда нужно гарантированно поймать одного героя.",
  },
  {
    name: "Atlas",
    roles: ["Roam"],
    tier: "A",
    meta: 78,
    counters: ["Kimmy", "Granger", "Karrie"],
    weakInto: ["Diggie", "Valir", "Minotaur"],
    synergies: ["Pharsa", "Yve", "Gusion"],
    notes: "Опасен против команд без очищения и разрыва дистанции.",
  },
];

const supplementalHeroes = [
  ["Aamon", ["Jungle"], "A", 86],
  ["Akai", ["Roam", "Jungle"], "B", 75],
  ["Aldous", ["EXP"], "C", 68],
  ["Alice", ["EXP", "Jungle"], "A", 84],
  ["Alpha", ["EXP", "Jungle"], "D", 58],
  ["Alucard", ["Jungle", "EXP"], "C", 68],
  ["Argus", ["EXP"], "B", 76],
  ["Aulus", ["Jungle", "EXP"], "S", 88],
  ["Aurora", ["Mid"], "D", 60],
  ["Badang", ["EXP"], "B", 75],
  ["Balmond", ["Jungle", "EXP"], "D", 56],
  ["Bane", ["EXP", "Mid"], "C", 70],
  ["Barats", ["Jungle", "EXP"], "D", 62],
  ["Beatrix", ["Gold"], "C", 70],
  ["Belerick", ["Roam", "EXP"], "A", 84],
  ["Brody", ["Gold"], "B", 78],
  ["Bruno", ["Gold"], "D", 62],
  ["Carmilla", ["Roam"], "B", 78],
  ["Cecilion", ["Mid"], "C", 70],
  ["Chang'e", ["Mid"], "C", 68],
  ["Chip", ["Roam"], "D", 60],
  ["Chou", ["EXP", "Roam"], "D", 58],
  ["Cici", ["EXP"], "D", 60],
  ["Claude", ["Gold"], "C", 70],
  ["Clint", ["Gold"], "B", 78],
  ["Cyclops", ["Mid"], "B", 78],
  ["Dyrroth", ["EXP", "Jungle"], "C", 70],
  ["Edith", ["EXP", "Roam"], "C", 72],
  ["Esmeralda", ["EXP", "Jungle"], "D", 56],
  ["Estes", ["Roam"], "S", 90],
  ["Eudora", ["Mid"], "C", 68],
  ["Faramis", ["Mid", "Roam"], "D", 64],
  ["Franco", ["Roam"], "D", 58],
  ["Freya", ["EXP", "Jungle"], "S", 90],
  ["Gatotkaca", ["EXP", "Roam"], "D", 60],
  ["Gord", ["Mid"], "S", 90],
  ["Grock", ["Roam", "EXP"], "C", 68],
  ["Guinevere", ["EXP"], "S", 88],
  ["Hanabi", ["Gold"], "S", 90],
  ["Hanzo", ["Jungle"], "B", 76],
  ["Harith", ["Mid", "Gold"], "B", 76],
  ["Helcurt", ["Jungle"], "S", 88],
  ["Hilda", ["EXP", "Roam"], "S", 89],
  ["Hylos", ["Roam"], "C", 68],
  ["Irithel", ["Gold"], "B", 78],
  ["Ixia", ["Gold"], "B", 77],
  ["Jawhead", ["EXP", "Roam"], "D", 60],
  ["Johnson", ["Roam"], "B", 76],
  ["Joy", ["Jungle", "EXP"], "D", 62],
  ["Kadita", ["Mid", "Roam"], "A", 84],
  ["Kagura", ["Mid"], "C", 70],
  ["Kalea", ["Roam", "EXP"], "D", 60],
  ["Karina", ["Jungle"], "D", 58],
  ["Khaleed", ["EXP"], "B", 78],
  ["Lancelot", ["Jungle"], "D", 58],
  ["Lapu-Lapu", ["EXP"], "C", 68],
  ["Layla", ["Gold"], "C", 68],
  ["Leomord", ["Jungle", "EXP"], "A", 84],
  ["Lesley", ["Gold"], "C", 66],
  ["Lukas", ["EXP"], "C", 70],
  ["Lunox", ["Mid", "Gold"], "D", 62],
  ["Luo Yi", ["Mid"], "D", 60],
  ["Lylia", ["Mid"], "C", 68],
  ["Marcel", ["Roam"], "S", 90],
  ["Martis", ["Jungle", "EXP"], "D", 60],
  ["Masha", ["EXP"], "A", 86],
  ["Mathilda", ["Roam"], "D", 58],
  ["Melissa", ["Gold"], "B", 78],
  ["Minsitthar", ["EXP", "Roam"], "S", 89],
  ["Miya", ["Gold"], "A", 84],
  ["Moskov", ["Gold"], "B", 76],
  ["Nana", ["Mid"], "C", 68],
  ["Natalia", ["Roam", "Jungle"], "C", 70],
  ["Natan", ["Gold", "Mid"], "C", 70],
  ["Nolan", ["Jungle"], "D", 60],
  ["Novaria", ["Mid"], "C", 66],
  ["Obsidia", ["Gold"], "B", 77],
  ["Odette", ["Mid"], "B", 76],
  ["Paquito", ["EXP", "Jungle"], "D", 62],
  ["Phoveus", ["EXP"], "B", 76],
  ["Popol and Kupa", ["Gold"], "B", 78],
  ["Rafaela", ["Roam"], "B", 78],
  ["Roger", ["Jungle", "Gold"], "C", 70],
  ["Ruby", ["EXP", "Roam"], "B", 76],
  ["Selena", ["Roam", "Mid"], "C", 68],
  ["Silvanna", ["EXP"], "A", 84],
  ["Sun", ["EXP"], "S", 90],
  ["Suyou", ["Jungle", "EXP"], "S", 89],
  ["Terizla", ["EXP"], "A", 84],
  ["Thamuz", ["EXP"], "B", 76],
  ["Vale", ["Mid", "Roam"], "B", 76],
  ["Valentina", ["Mid"], "D", 58],
  ["Vexana", ["Mid"], "B", 76],
  ["Wanwan", ["Gold"], "D", 62],
  ["Xavier", ["Mid"], "C", 68],
  ["Yin", ["EXP", "Jungle"], "C", 68],
  ["Yu Zhong", ["EXP"], "C", 70],
  ["Zetian", ["Mid"], "S", 90],
  ["Zhask", ["Mid"], "B", 78],
  ["Zilong", ["EXP", "Jungle"], "D", 60],
].map(([name, roles, tier, meta]) => ({
  name,
  roles,
  tier,
  meta,
  counters: [],
  weakInto: [],
  synergies: [],
  notes:
    "Базовая запись: герой доступен для драфта, детальные контрпики можно добавить в базе.",
}));

function mergeHeroPools(coreHeroes, extraHeroes) {
  const merged = new Map();
  [...coreHeroes, ...extraHeroes].forEach((hero) =>
    merged.set(hero.name, hero),
  );
  return [...merged.values()].sort((a, b) => a.name.localeCompare(b.name));
}

heroes = mergeHeroPools(heroes, supplementalHeroes);

const heroPortraits = {
  Aamon:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_51ae6eb2b9d766791b1c60acb30d550f.jpg",
  Akai: "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_97d987784b17e25683dd6c914eb7be7f.jpg",
  Aldous:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_24b9d1fdef5ed3b9a569c408df850233.jpg",
  Alice:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_7135bd847a78dca0147e79c38666ba5b.jpg",
  Alpha:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_cd0dfb56d9e1b111f5f8d6a2c80a7e46.jpg",
  Alucard:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_723ce331bc58554e6f92079c9a54aea5.jpg",
  Angela:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_de614a9c4390c722d08ff6c8902025d2.jpg",
  Argus:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_6cbdd961024b54a89c8496d1c0920017.jpg",
  Arlott:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_c860ff197fcb694b90c0b7b7beb8ddc0.jpg",
  Atlas:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_92f134bd7485a1596b2e8d1c5d28da9e.jpg",
  Aulus:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_4beb05b58c46e8c88d06e88a50cf67e2.jpg",
  Aurora:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_4760ac03ef7df2f0a3f39c9a4b3a033b.jpg",
  Badang:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_8e686dc295c2659b63909e87b54e966e.jpg",
  Balmond:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_78258580fdcd4461a47331ddf0526bdd.jpg",
  Bane: "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_95b0637731ea94edbc6c4da5ed20d75c.jpg",
  Barats:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_adbd4f14b53db6513f0481705ed8ee48.jpg",
  Baxia:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_2fee69d1c7794406d68ad208bde45b95.jpg",
  Beatrix:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_3ae0e1386765b20b92fce0757fda6083.jpg",
  Belerick:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_8f60380e0242bd89dc298037d8b50dd4.jpg",
  Benedetta:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_299a32ea6c9287501faff530532617b5.jpg",
  Brody:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_59bbe13e82041e67c6b1797b8776a461.jpg",
  Bruno:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_a58a8659284c9b852c5fa025638ab888.jpg",
  Carmilla:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_e14d40da9b16a9c748844c25e4ac3668.jpg",
  Cecilion:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_fe2bed368a4a7419ac558327b07d1b2b.jpg",
  "Chang'e":
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_1a83b36d153da3b8ff250a33df0abf6c.jpg",
  Chip: "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_2d61834632c94c00344b2ae0e08354e2.jpg",
  Chou: "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_5a72a356046a7345112c52b79b7372e3.jpg",
  Cici: "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_d83b2e9d43ebc7247cba68643a411bd3.jpg",
  Claude:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_2321faee1f32b66b4bfa82f1cd7ce129.jpg",
  Clint:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_f7716a349ae9c5119841031df22210ed.jpg",
  Cyclops:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_6675619c7a532f918d9f567834690d55.jpg",
  Diggie:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_ceff756a410df7945a46a50a359bc428.jpg",
  Dyrroth:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_7c963e904af6713c39623870a1fc7e71.jpg",
  Edith:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_3bd6f7e58da50b63652d18cf083ac256.jpg",
  Esmeralda:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_d0d6c9e217dcb7a191bc81bbcdd08ce2.jpg",
  Estes:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_fc01c4db086cacb598108433aeaa1237.jpg",
  Eudora:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_00844bbb210fe0884826629fb2ad5f27.jpg",
  Fanny:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_d8f0442a59e3a585218223e57372ea8a.jpg",
  Faramis:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_061a2f01346a777593c66b0f80fede0d.jpg",
  Floryn:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_0f62ea30587c34b8855af43a801da156.jpg",
  Franco:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_d02349fec3a4ebd4986743d32c95ca17.jpg",
  Fredrinn:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_8fb05a9ade9e12e696c9e6b15991c0f3.jpg",
  Freya:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_0059b3d4c9f5db098fa053074d27e7ec.jpg",
  Gatotkaca:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_6554b94d8ee14d8eb24ad655c6ea9896.jpg",
  Gloo: "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_973cc7ce68b9e7b2a90a78e8ba7069b8.jpg",
  Gord: "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_014baf6366c6c635dca89c4b5878f1e0.jpg",
  Granger:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_3342c4916fa8afc548bf6f5dc137ef26.jpg",
  Grock:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_b1963659b31149ae0d4640ff2ad6a6cd.jpg",
  Guinevere:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_a79d26deb05231749de96de6b5794e61.jpg",
  Gusion:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_7bbbe61245a37a818b24e95d097a02f0.jpg",
  Hanabi:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_85db6d25e366e6b97f1e37a6d5e96ea9.jpg",
  Hanzo:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_79f053a70517e5544b93b0070bc7807d.jpg",
  Harith:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_c0492b8461a173c5e22f141589716604.jpg",
  Harley:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_262404fbd4d857939d88ef144f35aa27.jpg",
  Hayabusa:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_41f3b77867e66780da9b5890dfb9964a.jpg",
  Helcurt:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_65be14656935f49b259fdeaee092307a.jpg",
  Hilda:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_566622b6b977fc85490d983169a83788.jpg",
  Hylos:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_ce0d49d4803ed6c58a893d245a900c66.jpg",
  Irithel:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_8bdf0e2f05d6e7849c06ca9386c15349.jpg",
  Ixia: "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_edfaa19ee9ec75545eb74e675886059c.jpg",
  Jawhead:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_fb3df6d1b46ff9329745dab3bc2cd45b.jpg",
  Johnson:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_0d351f0e1d4dbda112b53818afadadb8.jpg",
  Joy: "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_574083a409728dd6b47f89f9059932ac.jpg",
  Julian:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_8359a497952c5215b70b47373e168cfe.jpg",
  Kadita:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_b5bcc58bc3bd0462691c85c45a6c1cb1.jpg",
  Kagura:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_1c0c51d1f28332cb1705ef28c49c90a9.jpg",
  Kaja: "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_10e88c83ee50f042543e6bf497285028.jpg",
  Kalea:
    "https://akmweb.youngjoygame.com/web/svnres/img/mlbb/homepage_1_9_64/100_4f3d4649e301c76daf20bd8811f3095c.png",
  Karina:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_e0e319c392191e1c089270ce257b9af8.jpg",
  Karrie:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_f1814a99af8c860a5755b4b0ad911f80.jpg",
  Khaleed:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_2c011296c9c9a46013034896c2898d52.jpg",
  Khufra:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_571398f137ae470543b88b51beabb5b6.jpg",
  Kimmy:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_b0488bd296b732c713092abb9feb427c.jpg",
  Lancelot:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_09e352c183e12e34ea4c9ecce82c69be.jpg",
  "Lapu-Lapu":
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_4c693b541abb917905cc6ca4c0bcb845.jpg",
  Layla:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_995227993612d04468f763d6c66dcd1a.jpg",
  Leomord:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_ad98bd699e43dda5b217ef39cd1ef260.jpg",
  Lesley:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_5bbcf52dc317a3f64f8baabb577c00d0.jpg",
  Ling: "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_d83c16e9dc3f3b5bf619250518a34d81.jpg",
  Lolita:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_c5c2d90810a4130242ae2aa5b5eb6257.jpg",
  Lukas:
    "https://akmweb.youngjoygame.com/web/svnres/img/mlbb/homepage_1_9_20/100_63040edd0cf15b815fcbbb8b2d08d7f7.png",
  Lunox:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_7b6102875702371070406f9bd0feb3f6.jpg",
  "Luo Yi":
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_45ed52f05d2288e0c87ca858d7f66f23.jpg",
  Lylia:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_781a08aa6bdfd386c6aab8261163217e.jpg",
  Marcel:
    "https://akmweb.youngjoygame.com/web/svnres/img/mlbb/homepage_2_1_42/100_df7603c292198bf4aa7b551d401ea5c1.png",
  Martis:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_024f6f2bf8e25d31120c28ded1fe98db.jpg",
  Masha:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_cb32a0d6ed6e8fa174aab72e61d9e6da.jpg",
  Mathilda:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_1592c36a17a9b513d8b12ddb16e33d8c.jpg",
  Melissa:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_c1a541876dc0c0434e645592a402ff35.jpg",
  Minotaur:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_7368c6c9a42821e902a96d9071d8a0e4.jpg",
  Minsitthar:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_f05d35785d6a3f4ad0b93c3723e84de3.jpg",
  Miya: "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_7c5b221cf1f95a1f06da1b7b644adfec.jpg",
  Moskov:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_4c2ea289662fc611c3e6838033b0048e.jpg",
  Nana: "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_4d1034219db5d3da420b941b4bb94ecc.jpg",
  Natalia:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_2ad70b1e8501f7f7ef08e4e8951e19ec.jpg",
  Natan:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_41f7572b10bc5aeb16fe39482f95b018.jpg",
  Nolan:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_77ac5c8f1a48a10e7c1beb78ac862c2e.jpg",
  Novaria:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_616ae60984f5efeb204c00dadf5930cc.jpg",
  Obsidia:
    "https://akmweb.youngjoygame.com/web/svnres/img/mlbb/homepage_2_1_18/100_9c3daef5625bfade5c4cb8a219845dd3.png",
  Odette:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_dfa2e7ae3f270b7641b43f9a9079c41b.jpg",
  Paquito:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_02466a857c46760a78265713eab7e39c.jpg",
  Pharsa:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_7104968f6a2006df3b593fb9dfb4fe1a.jpg",
  Phoveus:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_250c4be7ee7b3d5d17248d9e7050fb15.jpg",
  "Popol and Kupa":
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_4e209cd7493f719891e723627e91628b.jpg",
  Rafaela:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_f5298620e2902c1c15fb11d5962486f2.jpg",
  Roger:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_ef34009d11ca660530b70a55cb3af71b.jpg",
  Ruby: "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_48351f7507f74f98c8d2299b410fe2ff.jpg",
  Saber:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_a34d4efbc83556361b484f5d3d6cd463.jpg",
  Selena:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_c1eed4818def633691e406d12d51650c.jpg",
  Silvanna:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_c996b205b5d35cab1a1e8bdb993a7606.jpg",
  Sora: "https://akmweb.youngjoygame.com/web/svnres/img/mlbb/homepage_2_1_40/100_8143d7bbd4318d7c699908e808de885e.png",
  Sun: "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_52b71c17a0458bf33a91ac52dff6a71d.jpg",
  Suyou:
    "https://akmweb.youngjoygame.com/web/svnres/img/mlbb/homepage_1_9_20/100_5e4ca70172332dde18bb1dc158ccc5c8.png",
  Terizla:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_dabb8e730ac419d0c20cfe866797a610.jpg",
  Thamuz:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_0451a9cbf5db0669ca787a7102fd7499.jpg",
  Tigreal:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_a9d93ed3dd0d1385f25372eda0aa10e7.jpg",
  Uranus:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_5304cfee29d52b0623adcce7062c6f9a.jpg",
  Vale: "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_a87514553259e474440f23055c229295.jpg",
  Valentina:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_f171b947b9c40f0560f191147054facb.jpg",
  Valir:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_4128d471ee828dad8fe9cf20bfe6a32e.jpg",
  Vexana:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_68354f4ee2a8dfb79801cf122f1046d8.jpg",
  Wanwan:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_4ef161612790082db12838fc04c86643.jpg",
  "X.Borg":
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_3c95c664318bd2e9c61d8d7e15578ff5.jpg",
  Xavier:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_08ccab74114f009b1f5993aedd1dd7a1.jpg",
  "Yi Sun-shin":
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_891fc37964908684f554ca6a552c82e0.jpg",
  Yin: "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_a33bb8889533a8104dd3b84f5e89f5a5.jpg",
  "Yu Zhong":
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_c751a6b50bf2c583747097430c575fc9.jpg",
  Yve: "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_58b166125e207a31bd2c8e57b3dc34d7.jpg",
  Zetian:
    "https://akmweb.youngjoygame.com/web/svnres/img/mlbb/homepage_1_9_90/100_8d965f05f84621a51f799aeb8fb5f4c4.png",
  Zhask:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_a9f6679fb8953d89ea1b53f6ad7ec4ba.jpg",
  Zhuxin:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage_92/100_8b6a9cadd1c781a56ae68b2a1ebe8d8f.jpg",
  Zilong:
    "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_754c164566eda94a8086593d9af23f46.jpg",
};

const counterChart = {
  Aamon: ["Saber", "Khufra", "Kaja", "Lolita", "Minotaur"],
  Akai: ["Valir", "Diggie", "Karrie", "Kimmy"],
  Aldous: ["Valir", "Kaja", "Diggie", "Gloo"],
  Alice: ["Baxia", "Karrie", "Valir", "Kimmy"],
  Alpha: ["Baxia", "Valir", "Karrie", "X.Borg"],
  Alucard: ["Khufra", "Kaja", "Valir", "Baxia"],
  Angela: ["Baxia", "Diggie", "Luo Yi", "Kaja"],
  Argus: ["Valir", "Kaja", "Khufra", "Minsitthar"],
  Arlott: ["Diggie", "Valir", "Minsitthar", "Khufra"],
  Atlas: ["Diggie", "Valir", "Minotaur", "Kaja"],
  Aulus: ["Valir", "Khufra", "Kaja", "Fredrinn"],
  Aurora: ["Lolita", "Diggie", "Hayabusa", "Lancelot"],
  Badang: ["Diggie", "Valir", "Khufra", "Minsitthar"],
  Balmond: ["Karrie", "Valir", "Baxia", "X.Borg"],
  Barats: ["Karrie", "Kimmy", "Valir", "Baxia"],
  Baxia: ["Karrie", "Yve", "Pharsa", "Valir"],
  Beatrix: ["Lolita", "Hayabusa", "Saber", "Harley"],
  Belerick: ["Karrie", "Kimmy", "Valir", "X.Borg"],
  Benedetta: ["Khufra", "Minsitthar", "Kaja", "Phoveus"],
  Brody: ["Lolita", "Hayabusa", "Saber", "Harley"],
  Bruno: ["Lolita", "Hayabusa", "Saber", "Harley"],
  Carmilla: ["Diggie", "Valir", "Baxia", "Kaja"],
  Cecilion: ["Hayabusa", "Lancelot", "Harley", "Julian"],
  "Chang'e": ["Lolita", "Hayabusa", "Lancelot", "Natalia"],
  Chip: ["Diggie", "Valir", "Minotaur", "Kaja"],
  Chou: ["Diggie", "Valir", "Minsitthar", "Khufra"],
  Cici: ["Kaja", "Khufra", "Valir", "Phoveus"],
  Claude: ["Lolita", "Khufra", "Saber", "Kaja"],
  Clint: ["Lolita", "Hayabusa", "Saber", "Harley"],
  Cyclops: ["Lolita", "Hayabusa", "Harley", "Julian"],
  Diggie: ["Natalia", "Luo Yi", "Valentina", "Harley"],
  Dyrroth: ["Valir", "Khufra", "Kaja", "Minsitthar"],
  Edith: ["Karrie", "Valir", "Baxia", "Diggie"],
  Esmeralda: ["Baxia", "Karrie", "Valir", "Dyrroth"],
  Estes: ["Baxia", "Luo Yi", "Atlas", "Tigreal"],
  Eudora: ["Lolita", "Diggie", "Hayabusa", "Lancelot"],
  Fanny: ["Khufra", "Saber", "Kaja", "Minotaur"],
  Faramis: ["Baxia", "Luo Yi", "Kaja", "Valir"],
  Floryn: ["Baxia", "Luo Yi", "Atlas", "Tigreal"],
  Franco: ["Diggie", "Valir", "Minotaur", "Kaja"],
  Fredrinn: ["Karrie", "Valir", "X.Borg", "Kimmy"],
  Freya: ["Valir", "Kaja", "Khufra", "Minsitthar"],
  Gatotkaca: ["Karrie", "Valir", "Diggie", "Baxia"],
  Gloo: ["Faramis", "Valir", "Karrie", "Kimmy"],
  Gord: ["Lolita", "Hayabusa", "Lancelot", "Harley"],
  Granger: ["Lolita", "Hayabusa", "Arlott", "Khufra"],
  Grock: ["Karrie", "Valir", "Diggie", "Kimmy"],
  Guinevere: ["Diggie", "Valir", "Khufra", "Kaja"],
  Gusion: ["Khufra", "Saber", "Minotaur", "Diggie"],
  Hanabi: ["Lolita", "Hayabusa", "Harley", "Saber"],
  Hanzo: ["Natalia", "Ling", "Hayabusa", "Saber"],
  Harley: ["Lolita", "Diggie", "Minotaur", "Baxia"],
  Harith: ["Minsitthar", "Khufra", "Kaja", "Phoveus"],
  Hayabusa: ["Khufra", "Saber", "Kaja", "Minotaur"],
  Helcurt: ["Rafaela", "Diggie", "Khufra", "Kaja"],
  Hilda: ["Valir", "Karrie", "Baxia", "Kaja"],
  Hylos: ["Karrie", "Valir", "Baxia", "Kimmy"],
  Irithel: ["Lolita", "Hayabusa", "Saber", "Harley"],
  Ixia: ["Lolita", "Hayabusa", "Harley", "Saber"],
  Jawhead: ["Diggie", "Valir", "Kaja", "Khufra"],
  Johnson: ["Diggie", "Valir", "Minotaur", "Kaja"],
  Joy: ["Minsitthar", "Khufra", "Kaja", "Phoveus"],
  Julian: ["Kaja", "Khufra", "Minotaur", "Saber"],
  Kadita: ["Diggie", "Lolita", "Khufra", "Kaja"],
  Kagura: ["Lolita", "Hayabusa", "Harley", "Julian"],
  Karina: ["Khufra", "Kaja", "Saber", "Minotaur"],
  Karrie: ["Lolita", "Hayabusa", "Harley", "Saber"],
  Khaleed: ["Valir", "Kaja", "Baxia", "X.Borg"],
  Khufra: ["Diggie", "Valir", "Karrie", "Kimmy"],
  Kimmy: ["Lolita", "Hayabusa", "Julian", "Harley"],
  Lancelot: ["Khufra", "Kaja", "Saber", "Minotaur"],
  "Lapu-Lapu": ["Valir", "Kaja", "Diggie", "X.Borg"],
  Layla: ["Lolita", "Hayabusa", "Harley", "Saber"],
  Leomord: ["Valir", "Kaja", "Khufra", "Minsitthar"],
  Lesley: ["Lolita", "Hayabusa", "Harley", "Saber"],
  Ling: ["Khufra", "Saber", "Kaja", "Minotaur"],
  Lolita: ["Diggie", "Valir", "Gloo", "Karrie"],
  Lunox: ["Lolita", "Hayabusa", "Harley", "Julian"],
  "Luo Yi": ["Hayabusa", "Lancelot", "Harley", "Lolita"],
  Lylia: ["Lolita", "Hayabusa", "Harley", "Julian"],
  Martis: ["Valir", "Kaja", "Khufra", "Minsitthar"],
  Masha: ["Valir", "Kaja", "Karrie", "Baxia"],
  Mathilda: ["Khufra", "Minsitthar", "Kaja", "Phoveus"],
  Melissa: ["Lolita", "Hayabusa", "Harley", "Saber"],
  Minotaur: ["Diggie", "Valir", "Karrie", "Baxia"],
  Minsitthar: ["Valir", "Diggie", "Karrie", "Pharsa"],
  Miya: ["Lolita", "Hayabusa", "Harley", "Saber"],
  Moskov: ["Lolita", "Hayabusa", "Harley", "Saber"],
  Nana: ["Lolita", "Hayabusa", "Harley", "Julian"],
  Natalia: ["Rafaela", "Hylos", "Diggie", "Saber"],
  Natan: ["Lolita", "Hayabusa", "Harley", "Saber"],
  Nolan: ["Khufra", "Kaja", "Minsitthar", "Phoveus"],
  Novaria: ["Lolita", "Hayabusa", "Harley", "Natalia"],
  Odette: ["Diggie", "Kadita", "Chou", "Valir"],
  Paquito: ["Khufra", "Kaja", "Minsitthar", "Valir"],
  Pharsa: ["Hayabusa", "Harley", "Julian", "Lancelot"],
  Phoveus: ["Valir", "Karrie", "Kimmy", "X.Borg"],
  "Popol and Kupa": ["Lolita", "Hayabusa", "Harley", "Saber"],
  Rafaela: ["Baxia", "Luo Yi", "Atlas", "Natalia"],
  Roger: ["Khufra", "Kaja", "Valir", "Saber"],
  Ruby: ["Baxia", "Valir", "Karrie", "Diggie"],
  Saber: ["Diggie", "Gloo", "Fredrinn", "Minotaur"],
  Selena: ["Lolita", "Diggie", "Natalia", "Hylos"],
  Silvanna: ["Diggie", "Valir", "Kaja", "Khufra"],
  Sora: ["Phoveus", "Kaja", "Valir", "Khufra"],
  Sun: ["X.Borg", "Belerick", "Valir", "Gloo"],
  Suyou: ["Khufra", "Kaja", "Minsitthar", "Phoveus"],
  Terizla: ["Valir", "Karrie", "Baxia", "Diggie"],
  Thamuz: ["Valir", "Karrie", "Baxia", "X.Borg"],
  Tigreal: ["Diggie", "Valir", "Karrie", "Minotaur"],
  Uranus: ["Karrie", "Kimmy", "Baxia", "Valir"],
  Vale: ["Lolita", "Hayabusa", "Harley", "Julian"],
  Valentina: ["Hayabusa", "Harley", "Julian", "Lolita"],
  Valir: ["Pharsa", "Hayabusa", "Harley", "Lancelot"],
  Vexana: ["Lolita", "Hayabusa", "Harley", "Julian"],
  Wanwan: ["Khufra", "Minsitthar", "Kaja", "Saber"],
  Xavier: ["Lolita", "Hayabusa", "Harley", "Julian"],
  "X.Borg": ["Karrie", "Kimmy", "Baxia", "Valir"],
  Yin: ["Diggie", "Valir", "Kaja", "Khufra"],
  "Yi Sun-shin": ["Lolita", "Khufra", "Fredrinn", "Natalia"],
  "Yu Zhong": ["Valir", "Kaja", "Baxia", "X.Borg"],
  Zhask: ["Lolita", "Hayabusa", "Harley", "Julian"],
  Zhuxin: ["Hayabusa", "Julian", "Gusion", "Harley"],
  Zilong: ["Khufra", "Kaja", "Minsitthar", "Valir"],
};

const currentHeroIntel = {
  Alpha: {
    targets: ["Uranus", "Barats", "Fredrinn", "Hylos", "Balmond"],
    allies: ["Tigreal", "Atlas", "Angela", "Floryn", "Minotaur"],
    dangers: ["Baxia", "Valir", "Karrie", "X.Borg"],
    source: "MLBB.io hero guide + текущая локальная контр-база",
  },
};

const proBuildProfiles = {
  Alpha: {
    source: "MLBBHub Alpha build, обновлено 13 апреля 2026; сверено с MLBB.io hero/build паттернами",
    core: ["Bloodlust Axe", "Warrior Boots", "War Axe"],
    defaultLate: ["Blade of Despair", "Queen's Wings", "Immortality"],
    situations: {
      antiHeal: "Sea Halberd",
      tankFront: "Malefic Roar",
      mobileBackline: "Hunter Strike",
      physicalBurst: "Antique Cuirass",
      magicBurst: "Athena's Shield",
      sustainDuel: "Oracle",
    },
  },
  marksman: {
    source: "MLBB.io item-build/pro-build patterns: attack speed core + defensive last slot",
    core: ["Swift Boots", "Corrosion Scythe", "Demon Hunter Sword"],
    defaultLate: ["Golden Staff", "Malefic Roar", "Wind of Nature"],
    situations: {
      antiHeal: "Sea Halberd",
      tankFront: "Malefic Roar",
      physicalBurst: "Wind of Nature",
      magicBurst: "Rose Gold Meteor",
      lateSafety: "Immortality",
    },
  },
  mage: {
    source: "MLBB.io item-build/pro-build patterns: mana or poke core into magic penetration",
    core: ["Arcane Boots", "Enchanted Talisman", "Glowing Wand"],
    defaultLate: ["Wishing Lantern", "Divine Glaive", "Winter Crown"],
    situations: {
      tankFront: "Divine Glaive",
      chase: "Ice Queen Wand",
      burst: "Holy Crystal",
      earlyPen: "Genius Wand",
      lateSafety: "Winter Crown",
    },
  },
  assassin: {
    source: "MLBB.io high-rank/pro-build patterns: execute snowball into penetration and safety",
    core: ["Tough Boots", "Sky Piercer", "Hunter Strike"],
    defaultLate: ["Blade of Despair", "Malefic Roar", "Immortality"],
    situations: {
      antiHeal: "Sea Halberd",
      tankFront: "Malefic Roar",
      magicBurst: "Rose Gold Meteor",
      lateSafety: "Immortality",
    },
  },
  fighter: {
    source: "MLBB.io/MLBBHub fighter patterns: War Axe core, then bruiser defense by enemy damage",
    core: ["Warrior Boots", "War Axe", "Hunter Strike"],
    defaultLate: ["Brute Force Breastplate", "Queen's Wings", "Immortality"],
    situations: {
      antiHeal: "Sea Halberd",
      tankFront: "Malefic Roar",
      physicalBurst: "Antique Cuirass",
      magicBurst: "Athena's Shield",
      sustainDuel: "Oracle",
    },
  },
  tank: {
    source: "MLBB.io tank build patterns: anti-heal and mixed defense adjusted by enemy damage profile",
    core: ["Tough Boots", "Dominance Ice", "Thunder Belt"],
    defaultLate: ["Antique Cuirass", "Athena's Shield", "Immortality"],
    situations: {
      antiHeal: "Dominance Ice",
      physicalBurst: "Antique Cuirass",
      magicBurst: "Athena's Shield",
      magicDps: "Radiant Armor",
      lateSafety: "Immortality",
    },
  },
  critMarksman: {
    source: "MLBB.io/pro marksman patterns: crit core, Wind of Nature/Rose Gold defensive swap",
    core: ["Swift Boots", "Windtalker", "Berserker's Fury"],
    defaultLate: ["Haas's Claws", "Malefic Roar", "Wind of Nature"],
    situations: {
      antiHeal: "Sea Halberd",
      tankFront: "Malefic Roar",
      physicalBurst: "Wind of Nature",
      magicBurst: "Rose Gold Meteor",
      lateSafety: "Immortality",
    },
  },
  burstMage: {
    source: "MLBB.io/pro mage patterns: penetration and burst window into safety",
    core: ["Arcane Boots", "Genius Wand", "Lightning Truncheon"],
    defaultLate: ["Holy Crystal", "Divine Glaive", "Winter Crown"],
    situations: {
      tankFront: "Divine Glaive",
      magicDps: "Glowing Wand",
      chase: "Ice Queen Wand",
      lateSafety: "Winter Crown",
    },
  },
  sustainMage: {
    source: "MLBB.io/pro sustain mage patterns: scaling mana/HP into continuous damage",
    core: ["Arcane Boots", "Clock of Destiny", "Concentrated Energy"],
    defaultLate: ["Glowing Wand", "Divine Glaive", "Winter Crown"],
    situations: {
      tankFront: "Divine Glaive",
      magicDps: "Glowing Wand",
      lateSafety: "Winter Crown",
    },
  },
  support: {
    source: "MLBB.io/pro roam support patterns: utility core, anti-heal and safety by draft",
    core: ["Tough Boots", "Flask of the Oasis", "Fleeting Time"],
    defaultLate: ["Dominance Ice", "Athena's Shield", "Immortality"],
    situations: {
      antiHeal: "Dominance Ice",
      physicalBurst: "Antique Cuirass",
      magicBurst: "Athena's Shield",
      magicDps: "Radiant Armor",
      lateSafety: "Immortality",
    },
  },
  burstAssassin: {
    source: "MLBB.io/pro assassin patterns: early kill pressure into penetration",
    core: ["Tough Boots", "Sky Piercer", "Blade of the Heptaseas"],
    defaultLate: ["Hunter Strike", "Blade of Despair", "Immortality"],
    situations: {
      antiHeal: "Sea Halberd",
      tankFront: "Malefic Roar",
      magicBurst: "Rose Gold Meteor",
      lateSafety: "Immortality",
    },
  },
  sustainFighter: {
    source: "MLBBHub/MLBB.io fighter patterns: sustain core into bruiser defense",
    core: ["Warrior Boots", "Bloodlust Axe", "War Axe"],
    defaultLate: ["Hunter Strike", "Queen's Wings", "Immortality"],
    situations: {
      antiHeal: "Sea Halberd",
      tankFront: "Malefic Roar",
      physicalBurst: "Antique Cuirass",
      magicBurst: "Athena's Shield",
      sustainDuel: "Oracle",
    },
  },
};

const buildSourceMeta = {
  checked: "06.05.2026",
  sources: "MLBB.io item-build/pro-build + MLBBHub hero build pages",
};

const proBuildDatabase = [
  {
    id: "atk-speed-gold-front",
    label: "Gold DPS против плотного фронта",
    roles: ["Gold"],
    archetypes: ["marksman"],
    tags: ["tankFront", "antiHeal"],
    source: buildSourceMeta.sources,
    checked: buildSourceMeta.checked,
    core: ["Swift Boots", "Corrosion Scythe", "Demon Hunter Sword"],
    defaultLate: ["Golden Staff", "Malefic Roar", "Wind of Nature"],
    situations: {
      antiHeal: "Sea Halberd",
      tankFront: "Malefic Roar",
      physicalBurst: "Wind of Nature",
      magicBurst: "Rose Gold Meteor",
      lateSafety: "Immortality",
    },
  },
  {
    id: "crit-gold-carry",
    label: "Crit Gold для лейта",
    roles: ["Gold"],
    archetypes: ["marksman"],
    tags: ["physicalBurst", "lateSafety"],
    source: buildSourceMeta.sources,
    checked: buildSourceMeta.checked,
    core: ["Swift Boots", "Windtalker", "Berserker's Fury"],
    defaultLate: ["Haas's Claws", "Malefic Roar", "Wind of Nature"],
    situations: {
      antiHeal: "Sea Halberd",
      tankFront: "Malefic Roar",
      physicalBurst: "Wind of Nature",
      magicBurst: "Rose Gold Meteor",
      lateSafety: "Immortality",
    },
  },
  {
    id: "burst-mm-skill",
    label: "Skill marksman burst",
    roles: ["Gold", "Jungle"],
    archetypes: ["marksman", "assassin"],
    tags: ["mobileBackline", "physicalBurst"],
    source: buildSourceMeta.sources,
    checked: buildSourceMeta.checked,
    core: ["Swift Boots", "Endless Battle", "Blade of Despair"],
    defaultLate: ["Hunter Strike", "Malefic Roar", "Wind of Nature"],
    situations: {
      antiHeal: "Sea Halberd",
      tankFront: "Malefic Roar",
      physicalBurst: "Wind of Nature",
      lateSafety: "Immortality",
    },
  },
  {
    id: "mage-poke-control",
    label: "Poke mage контроль зоны",
    roles: ["Mid"],
    archetypes: ["mage"],
    tags: ["tankFront", "magicDps"],
    source: buildSourceMeta.sources,
    checked: buildSourceMeta.checked,
    core: ["Arcane Boots", "Enchanted Talisman", "Ice Queen Wand"],
    defaultLate: ["Glowing Wand", "Divine Glaive", "Winter Crown"],
    situations: {
      tankFront: "Divine Glaive",
      magicDps: "Glowing Wand",
      chase: "Ice Queen Wand",
      lateSafety: "Winter Crown",
    },
  },
  {
    id: "mage-burst",
    label: "Burst mage окно убийства",
    roles: ["Mid", "Jungle"],
    archetypes: ["mage", "assassin"],
    tags: ["mobileBackline", "magicBurst"],
    source: buildSourceMeta.sources,
    checked: buildSourceMeta.checked,
    core: ["Arcane Boots", "Genius Wand", "Lightning Truncheon"],
    defaultLate: ["Holy Crystal", "Divine Glaive", "Winter Crown"],
    situations: {
      tankFront: "Divine Glaive",
      magicDps: "Glowing Wand",
      lateSafety: "Winter Crown",
    },
  },
  {
    id: "mage-sustain-scaling",
    label: "Sustain mage scaling",
    roles: ["Mid", "EXP"],
    archetypes: ["mage", "fighter"],
    tags: ["magicDps", "lateSafety"],
    source: buildSourceMeta.sources,
    checked: buildSourceMeta.checked,
    core: ["Arcane Boots", "Clock of Destiny", "Concentrated Energy"],
    defaultLate: ["Oracle", "Divine Glaive", "Winter Crown"],
    situations: {
      tankFront: "Divine Glaive",
      magicDps: "Glowing Wand",
      lateSafety: "Winter Crown",
    },
  },
  {
    id: "assassin-physical-snowball",
    label: "Physical assassin snowball",
    roles: ["Jungle"],
    archetypes: ["assassin"],
    tags: ["mobileBackline", "lateSafety"],
    source: buildSourceMeta.sources,
    checked: buildSourceMeta.checked,
    core: ["Tough Boots", "Sky Piercer", "Hunter Strike"],
    defaultLate: ["Blade of Despair", "Malefic Roar", "Immortality"],
    situations: {
      antiHeal: "Sea Halberd",
      tankFront: "Malefic Roar",
      magicBurst: "Rose Gold Meteor",
      lateSafety: "Immortality",
    },
  },
  {
    id: "assassin-pickoff",
    label: "Pickoff assassin",
    roles: ["Jungle", "Roam"],
    archetypes: ["assassin"],
    tags: ["mobileBackline"],
    source: buildSourceMeta.sources,
    checked: buildSourceMeta.checked,
    core: ["Tough Boots", "Sky Piercer", "Blade of the Heptaseas"],
    defaultLate: ["Hunter Strike", "Blade of Despair", "Immortality"],
    situations: {
      antiHeal: "Sea Halberd",
      tankFront: "Malefic Roar",
      magicBurst: "Rose Gold Meteor",
      lateSafety: "Immortality",
    },
  },
  {
    id: "fighter-sustain-exp",
    label: "EXP sustain fighter",
    roles: ["EXP"],
    archetypes: ["fighter", "tank"],
    tags: ["tankFront", "physicalBurst"],
    source: buildSourceMeta.sources,
    checked: buildSourceMeta.checked,
    core: ["Warrior Boots", "Bloodlust Axe", "War Axe"],
    defaultLate: ["Hunter Strike", "Queen's Wings", "Immortality"],
    situations: {
      antiHeal: "Sea Halberd",
      tankFront: "Malefic Roar",
      physicalBurst: "Antique Cuirass",
      magicBurst: "Athena's Shield",
      sustainDuel: "Oracle",
    },
  },
  {
    id: "fighter-bruiser",
    label: "Bruiser fighter темп",
    roles: ["EXP", "Jungle"],
    archetypes: ["fighter"],
    tags: ["physicalBurst", "lateSafety"],
    source: buildSourceMeta.sources,
    checked: buildSourceMeta.checked,
    core: ["Warrior Boots", "War Axe", "Hunter Strike"],
    defaultLate: ["Queen's Wings", "Malefic Roar", "Immortality"],
    situations: {
      antiHeal: "Sea Halberd",
      tankFront: "Malefic Roar",
      physicalBurst: "Antique Cuirass",
      magicBurst: "Athena's Shield",
      sustainDuel: "Oracle",
    },
  },
  {
    id: "tank-roam-standard",
    label: "Roam tank engage",
    roles: ["Roam"],
    archetypes: ["tank"],
    tags: ["antiHeal", "physicalBurst"],
    source: buildSourceMeta.sources,
    checked: buildSourceMeta.checked,
    core: ["Tough Boots", "Dominance Ice", "Thunder Belt"],
    defaultLate: ["Antique Cuirass", "Athena's Shield", "Immortality"],
    situations: {
      antiHeal: "Dominance Ice",
      physicalBurst: "Antique Cuirass",
      magicBurst: "Athena's Shield",
      magicDps: "Radiant Armor",
      lateSafety: "Immortality",
    },
  },
  {
    id: "tank-sustain-front",
    label: "Sustain frontline",
    roles: ["EXP", "Roam", "Jungle"],
    archetypes: ["tank", "fighter"],
    tags: ["magicDps", "lateSafety"],
    source: buildSourceMeta.sources,
    checked: buildSourceMeta.checked,
    core: ["Tough Boots", "Thunder Belt", "Dominance Ice"],
    defaultLate: ["Oracle", "Radiant Armor", "Immortality"],
    situations: {
      antiHeal: "Dominance Ice",
      physicalBurst: "Antique Cuirass",
      magicBurst: "Athena's Shield",
      magicDps: "Radiant Armor",
      lateSafety: "Immortality",
    },
  },
  {
    id: "support-heal-save",
    label: "Support heal/save",
    roles: ["Roam"],
    archetypes: ["tank"],
    tags: ["magicBurst", "lateSafety"],
    source: buildSourceMeta.sources,
    checked: buildSourceMeta.checked,
    core: ["Tough Boots", "Flask of the Oasis", "Fleeting Time"],
    defaultLate: ["Necklace of Durance", "Athena's Shield", "Immortality"],
    situations: {
      antiHeal: "Dominance Ice",
      physicalBurst: "Antique Cuirass",
      magicBurst: "Athena's Shield",
      magicDps: "Radiant Armor",
      lateSafety: "Immortality",
    },
  },
  {
    id: "support-control-roam",
    label: "Utility roam контроль",
    roles: ["Roam"],
    archetypes: ["tank"],
    tags: ["antiHeal", "mobileBackline"],
    source: buildSourceMeta.sources,
    checked: buildSourceMeta.checked,
    core: ["Tough Boots", "Dominance Ice", "Fleeting Time"],
    defaultLate: ["Athena's Shield", "Immortality", "Antique Cuirass"],
    situations: {
      antiHeal: "Dominance Ice",
      physicalBurst: "Antique Cuirass",
      magicBurst: "Athena's Shield",
      magicDps: "Radiant Armor",
      lateSafety: "Immortality",
    },
  },
];

applyCounterChart();

const state = {
  enemies: [],
  allies: [],
  allyBans: [],
  enemyBans: [],
  allySlots: Object.fromEntries(teamRoles.map((role) => [role, null])),
  role: "Любая",
  metaOnly: false,
  activeSide: "enemies",
  search: "",
  focusRole: null,
  pendingRolePick: null,
};

const heroByName = new Map(heroes.map((hero) => [hero.name, hero]));
applyHeroBuildProfiles();
const localHeroPortraits = Object.fromEntries(
  heroes.map((hero) => {
    const remoteUrl = heroPortraits[hero.name] || "";
    const extension = getImageExtension(remoteUrl);
    return [hero.name, `assets/heroes/${getHeroSlug(hero.name)}${extension}`];
  })
);

const enemyPicks = document.querySelector("#enemyPicks");
const allyPicks = document.querySelector("#allyPicks");
const allyBanPicks = document.querySelector("#allyBanPicks");
const enemyBanPicks = document.querySelector("#enemyBanPicks");
const allySlots = document.querySelector("#allySlots");
const recommendations = document.querySelector("#recommendations");
const banRecommendations = document.querySelector("#banRecommendations");
const roleFilter = document.querySelector("#roleFilter");
const draftSummary = document.querySelector("#draftSummary");
const metaOnlyToggle = document.querySelector("#metaOnlyToggle");
const heroSearch = document.querySelector("#heroSearch");
const heroGrid = document.querySelector("#heroGrid");
const pickerTitle = document.querySelector("#pickerTitle");
const draftScore = document.querySelector("#draftScore");
const autoBuildBtn = document.querySelector("#autoBuildBtn");
const autoBanBtn = document.querySelector("#autoBanBtn");
const teamInsights = document.querySelector("#teamInsights");
const shareDraftBtn = document.querySelector("#shareDraftBtn");
const shareStatus = document.querySelector("#shareStatus");
const roleDialog = document.querySelector("#roleDialog");
const roleDialogHero = document.querySelector("#roleDialogHero");
const roleDialogOptions = document.querySelector("#roleDialogOptions");
const roleDialogCancel = document.querySelector("#roleDialogCancel");
const heroProfileDialog = document.querySelector("#heroProfileDialog");
const heroProfileContent = document.querySelector("#heroProfileContent");
const heroProfileClose = document.querySelector("#heroProfileClose");
let imageObserver = null;
let imageHydrationTimer = null;
const loadedImageUrls = new Set();

function init() {
  setAppStatus("JS запущен, рисую интерфейс...");
  loadDraftFromUrl();
  renderRoleFilter();
  bindEvents();
  render();
  document.body.dataset.appReady = "true";
  setAppStatus(`Готово · v${APP_VERSION}`);
}

function setAppStatus(message, tone = "ready") {
  const appStatus = document.querySelector("#appStatus");
  const appVersion = document.querySelector("#appVersion");
  if (appStatus) {
    appStatus.textContent = message;
    appStatus.className = `app-status ${tone}`;
  }
  if (appVersion) appVersion.textContent = `v${APP_VERSION}`;
}

function loadDraftFromUrl() {
  const hash = window.location.hash || "";
  if (!hash.startsWith("#draft=")) return;

  try {
    const payload = JSON.parse(decodeURIComponent(atob(hash.slice(7))));
    const knownNames = new Set(heroes.map((hero) => hero.name));
    const cleanList = (items, limit = 5) =>
      Array.isArray(items)
        ? uniqueList(items.filter((name) => knownNames.has(name))).slice(0, limit)
        : [];

    state.enemies = cleanList(payload.enemies);
    state.allies = cleanList(payload.allies);
    state.allyBans = cleanList(payload.allyBans);
    state.enemyBans = cleanList(payload.enemyBans);
    state.allySlots = Object.fromEntries(teamRoles.map((role) => [role, null]));

    if (payload.allySlots && typeof payload.allySlots === "object") {
      teamRoles.forEach((role) => {
        const name = payload.allySlots[role];
        if (state.allies.includes(name) && heroByName.get(name)?.roles.includes(role)) {
          state.allySlots[role] = name;
        }
      });
    }
  } catch (error) {
    setAppStatus("Не смог прочитать драфт из ссылки", "warn");
  }
}

function getDraftPayload() {
  return {
    enemies: state.enemies,
    allies: state.allies,
    allyBans: state.allyBans,
    enemyBans: state.enemyBans,
    allySlots: state.allySlots,
  };
}

async function shareDraft() {
  const encoded = btoa(encodeURIComponent(JSON.stringify(getDraftPayload())));
  const url = `${window.location.origin}${window.location.pathname}#draft=${encoded}`;

  try {
    await navigator.clipboard.writeText(url);
    shareStatus.textContent = "Ссылка скопирована";
  } catch (error) {
    window.location.hash = `draft=${encoded}`;
    shareStatus.textContent = "Ссылка в адресной строке";
  }

  window.history.replaceState(null, "", url);
  setTimeout(() => {
    shareStatus.textContent = "";
  }, 2200);
}

function applyCounterChart() {
  const indexed = new Map(heroes.map((hero) => [hero.name, hero]));

  Object.entries(counterChart).forEach(([enemyName, counters]) => {
    const enemy = indexed.get(enemyName);
    if (!enemy) return;

    counters.forEach((counterName) => {
      const counter = indexed.get(counterName);
      if (!counter) return;

      if (!counter.counters.includes(enemyName))
        counter.counters.push(enemyName);
      if (!enemy.weakInto.includes(counterName))
        enemy.weakInto.push(counterName);
    });
  });
}

function applyHeroBuildProfiles() {
  heroes.forEach((hero) => {
    if (proBuildProfiles[hero.name]) return;
    const key = getHeroBuildProfileKey(hero);
    const base = proBuildProfiles[key] || proBuildProfiles[getHeroArchetype(hero)] || proBuildProfiles.fighter;
    proBuildProfiles[hero.name] = createHeroBuildProfile(hero, key, base);
  });
}

function getHeroBuildProfileKey(hero) {
  const name = hero.name;

  if (["Angela", "Floryn", "Estes", "Rafaela", "Diggie", "Mathilda"].includes(name)) return "support";
  if (["Tigreal", "Atlas", "Khufra", "Minotaur", "Lolita", "Belerick", "Hylos", "Franco", "Johnson", "Gatotkaca", "Edith", "Baxia", "Akai", "Grock"].includes(name)) return "tank";
  if (["Miya", "Layla", "Lesley", "Irithel", "Bruno", "Clint", "Brody", "Beatrix", "Hanabi", "Melissa", "Ixia"].includes(name)) return "critMarksman";
  if (["Karrie", "Claude", "Wanwan", "Moskov", "Natan", "Kimmy", "Granger", "Popol and Kupa"].includes(name)) return "marksman";
  if (["Eudora", "Kadita", "Kagura", "Aurora", "Vale", "Valentina", "Harley", "Gusion", "Aamon", "Lunox"].includes(name)) return "burstMage";
  if (["Alice", "Esmeralda", "Cecilion", "Cyclops", "Harith", "Lylia", "Zhask", "Yve", "Pharsa", "Xavier", "Valir", "Vexana", "Luo Yi", "Novaria", "Odette", "Zhuxin", "Zetian", "Nana"].includes(name)) return "mage";
  if (["Fanny", "Hayabusa", "Ling", "Lancelot", "Natalia", "Saber", "Helcurt", "Karina", "Nolan", "Selena"].includes(name)) return "burstAssassin";
  if (["Alpha", "Ruby", "Yu Zhong", "Terizla", "Thamuz", "Uranus", "X.Borg", "Fredrinn", "Arlott", "Sora", "Gloo", "Barats"].includes(name)) return "sustainFighter";
  if (["Chou", "Paquito", "Benedetta", "Dyrroth", "Khaleed", "Lapu-Lapu", "Guinevere", "Jawhead", "Martis", "Masha", "Roger", "Suyou"].includes(name)) return "fighter";
  if (hero.roles.includes("Roam")) return "support";
  if (hero.roles.includes("Gold")) return "marksman";
  if (magicDamageHeroes.has(name)) return "mage";
  if (hero.roles.includes("Jungle")) return "burstAssassin";
  return "fighter";
}

function createHeroBuildProfile(hero, key, base) {
  const profile = {
    source: `${base.source}; персональный профиль для ${hero.name}`,
    core: [...base.core],
    defaultLate: [...base.defaultLate],
    situations: { ...base.situations },
  };
  const name = hero.name;

  if (trueDamageHeroes.has(name) && hero.roles.includes("Gold")) {
    profile.core = ["Swift Boots", "Corrosion Scythe", "Demon Hunter Sword"];
    profile.defaultLate = ["Golden Staff", "Malefic Roar", "Wind of Nature"];
  }

  if (["Lesley", "Clint", "Brody", "Granger"].includes(name)) {
    profile.core = ["Swift Boots", "Endless Battle", "Blade of Despair"];
    profile.defaultLate = ["Malefic Roar", "Wind of Nature", "Immortality"];
  }

  if (["Claude", "Wanwan", "Moskov", "Popol and Kupa"].includes(name)) {
    profile.core = ["Swift Boots", "Corrosion Scythe", "Demon Hunter Sword"];
    profile.defaultLate = ["Golden Staff", "Malefic Roar", "Wind of Nature"];
  }

  if (name === "Kimmy") {
    profile.core = ["Arcane Boots", "Genius Wand", "Ice Queen Wand"];
    profile.defaultLate = ["Glowing Wand", "Divine Glaive", "Winter Crown"];
  }

  if (["Fanny", "Ling", "Lancelot", "Hayabusa", "Nolan", "Suyou"].includes(name)) {
    profile.core = ["Tough Boots", "Sky Piercer", "Hunter Strike"];
    profile.defaultLate = ["Blade of Despair", "Malefic Roar", "Immortality"];
  }

  if (["Harley", "Gusion", "Aamon", "Karina", "Julian"].includes(name)) {
    profile.core = ["Arcane Boots", "Genius Wand", "Sky Piercer"];
    profile.defaultLate = ["Holy Crystal", "Divine Glaive", "Winter Crown"];
  }

  if (["Cecilion", "Xavier", "Zhask", "Zetian"].includes(name)) {
    profile.core = ["Demon Shoes", "Clock of Destiny", "Lightning Truncheon"];
    profile.defaultLate = ["Holy Crystal", "Divine Glaive", "Winter Crown"];
  }

  if (["Valir", "Yve", "Lylia", "Zhuxin", "Pharsa", "Novaria"].includes(name)) {
    profile.core = ["Arcane Boots", "Enchanted Talisman", "Ice Queen Wand"];
    profile.defaultLate = ["Glowing Wand", "Divine Glaive", "Winter Crown"];
  }

  if (["Alice", "Esmeralda", "Harith", "Cyclops"].includes(name)) {
    profile.core = ["Arcane Boots", "Clock of Destiny", "Concentrated Energy"];
    profile.defaultLate = ["Oracle", "Divine Glaive", "Winter Crown"];
  }

  if (["Alpha", "Ruby", "Yu Zhong", "Terizla", "Thamuz", "X.Borg", "Sora"].includes(name)) {
    profile.core = ["Warrior Boots", "Bloodlust Axe", "War Axe"];
    profile.defaultLate = ["Hunter Strike", "Queen's Wings", "Immortality"];
  }

  if (["Aldous", "Argus", "Aulus", "Sun", "Zilong", "Masha", "Roger"].includes(name)) {
    profile.core = ["Swift Boots", "Corrosion Scythe", "Demon Hunter Sword"];
    profile.defaultLate = ["Golden Staff", "Malefic Roar", "Immortality"];
  }

  if (["Chou", "Paquito", "Benedetta", "Dyrroth", "Khaleed", "Lapu-Lapu", "Jawhead", "Martis", "Silvanna"].includes(name)) {
    profile.core = ["Warrior Boots", "War Axe", "Hunter Strike"];
    profile.defaultLate = ["Queen's Wings", "Malefic Roar", "Immortality"];
  }

  if (["Angela", "Floryn", "Estes", "Rafaela", "Mathilda"].includes(name)) {
    profile.core = ["Tough Boots", "Flask of the Oasis", "Fleeting Time"];
    profile.defaultLate = ["Necklace of Durance", "Athena's Shield", "Immortality"];
  }

  if (["Diggie", "Kaja", "Minsitthar"].includes(name)) {
    profile.core = ["Tough Boots", "Dominance Ice", "Fleeting Time"];
    profile.defaultLate = ["Athena's Shield", "Immortality", "Antique Cuirass"];
  }

  if (["Tigreal", "Atlas", "Khufra", "Minotaur", "Lolita", "Belerick", "Hylos", "Franco", "Johnson", "Gatotkaca", "Edith", "Grock"].includes(name)) {
    profile.core = ["Tough Boots", "Dominance Ice", "Thunder Belt"];
    profile.defaultLate = ["Antique Cuirass", "Athena's Shield", "Immortality"];
  }

  if (["Baxia", "Akai", "Fredrinn", "Barats", "Gloo", "Uranus"].includes(name)) {
    profile.core = ["Tough Boots", "Thunder Belt", "Dominance Ice"];
    profile.defaultLate = ["Oracle", "Radiant Armor", "Immortality"];
  }

  profile.source = `${profile.source}; тип: ${key}`;
  return profile;
}

function renderRoleFilter() {
  roleFilter.innerHTML = roles
    .map((role) => {
      const badge = roleBadges[role];
      const count = getRoleCount(role);
      return `
        <button class="segment role-chip ${role === state.role ? "active" : ""}" type="button" data-role="${role}">
          <span class="role-mark">${badge.short}</span>
          <span class="role-copy">
            <strong>${badge.label}</strong>
            <em>${count}</em>
          </span>
        </button>
      `;
    })
    .join("");
}

function getRoleCount(role) {
  const picked = new Set([...state.enemies, ...state.allies, ...getAllBans()]);
  return heroes.filter((hero) => {
    if (picked.has(hero.name)) return false;
    if (role !== "Любая" && !hero.roles.includes(role)) return false;
    if (state.metaOnly && !["S", "A"].includes(hero.tier)) return false;
    if (!state.search) return true;
    return `${hero.name} ${hero.roles.join(" ")} ${hero.tier}`
      .toLowerCase()
      .includes(state.search);
  }).length;
}

function bindEvents() {
  document.querySelector("#resetBtn").addEventListener("click", () => {
    state.enemies = [];
    state.allies = [];
    state.allyBans = [];
    state.enemyBans = [];
    state.allySlots = Object.fromEntries(teamRoles.map((role) => [role, null]));
    state.role = "Любая";
    state.metaOnly = false;
    state.activeSide = "enemies";
    state.search = "";
    state.focusRole = null;
    state.pendingRolePick = null;
    metaOnlyToggle.checked = false;
    heroSearch.value = "";
    render();
  });

  document.querySelectorAll(".side-button").forEach((button) => {
    button.addEventListener("click", () => {
      state.activeSide = button.dataset.side;
      state.focusRole = null;
      render();
    });
  });

  roleFilter.addEventListener("click", (event) => {
    const role = event.target.closest("[data-role]")?.dataset.role;
    if (!role) return;
    state.role = role;
    state.focusRole = role === "Любая" ? null : role;
    render();
  });
  metaOnlyToggle.addEventListener("change", (event) => {
    state.metaOnly = event.target.checked;
    render();
  });

  heroSearch.addEventListener("input", (event) => {
    state.search = event.target.value.trim().toLowerCase();
    renderHeroGrid();
  });

  heroGrid.addEventListener("click", (event) => {
    const infoButton = event.target.closest("[data-info-name]");
    if (infoButton) {
      openHeroProfile(infoButton.dataset.infoName);
      return;
    }

    const tile = event.target.closest(".hero-tile");
    if (!tile || tile.classList.contains("picked")) return;
    addPick(state.activeSide, tile.dataset.name);
  });

  autoBuildBtn.addEventListener("click", autoBuildDraft);
  autoBanBtn.addEventListener("click", autoBanDraft);
  shareDraftBtn.addEventListener("click", shareDraft);
  banRecommendations.addEventListener("click", (event) => {
    const button = event.target.closest("[data-ban-name]");
    if (!button) return;
    addPick("allyBans", button.dataset.banName);
  });
  recommendations.addEventListener("click", (event) => {
    const infoButton = event.target.closest("[data-info-name]");
    if (!infoButton) return;
    openHeroProfile(infoButton.dataset.infoName);
  });

  roleDialogOptions.addEventListener("click", (event) => {
    const button = event.target.closest("[data-pick-role]");
    if (!button || !state.pendingRolePick) return;
    addAllyPick(state.pendingRolePick, button.dataset.pickRole);
    closeRoleDialog();
    render();
  });

  roleDialogCancel.addEventListener("click", () => {
    closeRoleDialog();
    renderHeroGrid();
  });

  heroProfileClose.addEventListener("click", closeHeroProfile);
  heroProfileDialog.addEventListener("click", (event) => {
    if (event.target === heroProfileDialog) closeHeroProfile();
    const buildButton = event.target.closest("[data-build-name]");
    if (buildButton) {
      openHeroBuild(buildButton.dataset.buildName);
      return;
    }
    const playButton = event.target.closest("[data-play-around]");
    if (!playButton) return;
    playAroundHero(playButton.dataset.playAround);
  });

  allySlots.addEventListener("click", (event) => {
    const buildName = event.target.closest("[data-slot-build]")?.dataset.slotBuild;
    if (buildName) {
      openHeroBuild(buildName);
      return;
    }

    const suggestRole = event.target.closest("[data-suggest-role]")?.dataset.suggestRole;
    if (suggestRole) {
      focusRecommendationsForRole(suggestRole);
      return;
    }

    const role = event.target.dataset.clearRole;
    if (!role) return;
    const name = state.allySlots[role];
    if (!name) return;
    state.allySlots[role] = null;
    state.allies = state.allies.filter((pick) => pick !== name);
    render();
  });

  allySlots.addEventListener("change", (event) => {
    const select = event.target.closest("[data-role-slot]");
    if (!select) return;
    setAllySlot(select.dataset.roleSlot, select.value);
  });
}

function addPick(side, name) {
  if (!state[side] || state[side].includes(name)) return;
  if (isUnavailable(name)) return;
  if (state[side].length >= 5) return;
  if (side === "allies") {
    const hero = heroByName.get(name);
    if (!hero) return;
    const preferredRole = state.role !== "Любая" && hero.roles.includes(state.role) ? state.role : null;
    if (!preferredRole && hero.roles.filter((role) => teamRoles.includes(role)).length > 1) {
      openRoleDialog(name);
      return;
    }
    addAllyPick(name, preferredRole);
    render();
    return;
  }
  state[side].push(name);
  render();
}

function removePick(side, name) {
  if (!state[side]) return;
  state[side] = state[side].filter((pick) => pick !== name);
  if (side === "allies") {
    teamRoles.forEach((role) => {
      if (state.allySlots[role] === name) state.allySlots[role] = null;
    });
  }
  render();
}

function isUnavailable(name) {
  return state.enemies.includes(name) || state.allies.includes(name) || getAllBans().includes(name);
}

function getAllBans() {
  return [...state.allyBans, ...state.enemyBans];
}

function addAllyPick(name, selectedRole = null) {
  if (state.allies.includes(name) || state.allies.length >= 5 || isUnavailable(name)) return;
  state.allies.push(name);
  assignAllySlot(name, selectedRole);
}

function openRoleDialog(name) {
  const hero = heroByName.get(name);
  if (!hero) return;
  state.pendingRolePick = name;
  roleDialogHero.textContent = name;
  roleDialogOptions.innerHTML = hero.roles
    .filter((role) => teamRoles.includes(role))
    .map(
      (role) =>
        `<button class="segment role-choice" type="button" data-pick-role="${role}">
          <span>${role}</span>
          <em>${state.allySlots[role] ? "заменит слот" : "свободно"}</em>
        </button>`,
    )
    .join("");
  roleDialog.classList.remove("hidden");
}

function closeRoleDialog() {
  state.pendingRolePick = null;
  roleDialog.classList.add("hidden");
}

function openHeroProfile(name) {
  const hero = heroByName.get(name);
  if (!hero) return;
  heroProfileContent.innerHTML = renderHeroProfile(hero);
  heroProfileDialog.classList.remove("hidden");
  scheduleImageHydration();
}

function openHeroBuild(name) {
  const hero = heroByName.get(name);
  if (!hero) return;
  heroProfileContent.innerHTML = renderHeroBuildModal(hero);
  heroProfileDialog.classList.remove("hidden");
}

function closeHeroProfile() {
  heroProfileDialog.classList.add("hidden");
  heroProfileContent.innerHTML = "";
}

function playAroundHero(name) {
  const hero = heroByName.get(name);
  if (!hero) return;

  if (!isUnavailable(name) && state.allies.length < 5) {
    addAllyPick(name, hero.roles.find((role) => teamRoles.includes(role)));
  }

  state.activeSide = "allies";
  state.focusRole = null;
  state.role = "Любая";
  closeHeroProfile();
  render();
}

function assignAllySlot(name, selectedRole = null) {
  const hero = heroByName.get(name);
  if (!hero) return;
  const targetRole =
    selectedRole && hero.roles.includes(selectedRole)
      ? selectedRole
      : hero.roles.find((role) => teamRoles.includes(role) && !state.allySlots[role]);
  if (targetRole) state.allySlots[targetRole] = name;
}

function setAllySlot(role, name) {
  if (!teamRoles.includes(role)) return;

  if (!name) {
    state.allySlots[role] = null;
    render();
    return;
  }

  const hero = heroByName.get(name);
  if (!hero || !hero.roles.includes(role)) return;

  teamRoles.forEach((slotRole) => {
    if (state.allySlots[slotRole] === name) state.allySlots[slotRole] = null;
  });

  state.allySlots[role] = name;
  render();
}

function focusRecommendationsForRole(role) {
  if (!teamRoles.includes(role)) return;
  state.focusRole = role;
  state.role = role;
  state.activeSide = "allies";
  state.search = "";
  heroSearch.value = "";
  render();
}

function autoBuildDraft() {
  const nextAllies = [];
  const nextSlots = Object.fromEntries(teamRoles.map((role) => [role, null]));
  const unavailable = new Set([...state.enemies, ...getAllBans()]);

  teamRoles.forEach((role) => {
    const best = heroes
      .filter((hero) => hero.roles.includes(role))
      .filter((hero) => !unavailable.has(hero.name))
      .map((hero) => scoreHeroForDraft(hero, nextAllies))
      .sort((a, b) => b.score - a.score)[0];

    if (!best) return;
    unavailable.add(best.hero.name);
    nextAllies.push(best.hero.name);
    nextSlots[role] = best.hero.name;
  });

  state.allies = nextAllies;
  state.allySlots = nextSlots;
  state.activeSide = "enemies";
  render();
}

function autoBanDraft() {
  const unavailable = new Set([...state.enemies, ...state.allies, ...getAllBans()]);
  const slotsLeft = Math.max(0, 5 - state.allyBans.length);
  if (!slotsLeft) return;

  getBanRecommendations(12)
    .map((item) => item.hero.name)
    .filter((name) => !unavailable.has(name))
    .slice(0, slotsLeft)
    .forEach((name) => {
      if (!state.allyBans.includes(name) && state.allyBans.length < 5) {
        state.allyBans.push(name);
        unavailable.add(name);
      }
    });

  render();
}

function scoreHeroForDraft(hero, plannedAllies = []) {
  const base = scoreHero(hero).score;
  const rolePenalty = plannedAllies.some((name) => heroByName.get(name)?.roles.some((role) => hero.roles.includes(role)))
    ? -8
    : 0;
  return {
    hero,
    score: base + rolePenalty,
  };
}

function render() {
  renderRoleFilter();
  renderSideMode();
  renderChips(allyBanPicks, "allyBans");
  renderChips(enemyBanPicks, "enemyBans");
  renderChips(enemyPicks, "enemies");
  renderChips(allyPicks, "allies");
  renderAllySlots();
  renderHeroGrid();
  renderDraftScore();
  renderBanRecommendations();
  renderRecommendations();
  renderTeamInsights();
  scheduleImageHydration();
}

function renderSideMode() {
  document.querySelectorAll(".side-button").forEach((button) => {
    button.classList.toggle("active", button.dataset.side === state.activeSide);
  });
  pickerTitle.textContent =
    state.activeSide === "enemies"
      ? "Добавить героя врага"
      : state.activeSide === "allies"
        ? "Добавить нашего героя"
        : state.activeSide === "allyBans"
          ? "Добавить наш бан"
          : "Добавить бан врага";
}

function renderChips(container, side) {
  if (!state[side].length) {
    container.innerHTML = `<span class="muted">Пока пусто</span>`;
    return;
  }

  container.innerHTML = state[side]
    .map(
      (name) =>
        `<span class="chip">
          ${renderLazyImage("chip-avatar", name)}
          <button class="chip-name" type="button" data-info-name="${name}" aria-label="Профиль ${name}">${name}</button>
          ${side === "allies" ? `<button class="chip-build" type="button" data-build-name="${name}" aria-label="Билд ${name}">Билд</button>` : ""}
          <button type="button" aria-label="Убрать ${name}" data-side="${side}" data-name="${name}">x</button>
        </span>`,
    )
    .join("");

  container.querySelectorAll("button").forEach((button) => {
    if (button.dataset.infoName) {
      button.addEventListener("click", () => openHeroProfile(button.dataset.infoName));
      return;
    }
    if (button.dataset.buildName) {
      button.addEventListener("click", () => openHeroBuild(button.dataset.buildName));
      return;
    }
    button.addEventListener("click", () =>
      removePick(button.dataset.side, button.dataset.name),
    );
  });
}

function renderHeroGrid() {
  const picked = new Set([...state.enemies, ...state.allies, ...getAllBans()]);
  const filtered = heroes
    .filter((hero) => state.role === "Любая" || hero.roles.includes(state.role))
    .filter((hero) => !state.metaOnly || ["S", "A"].includes(hero.tier))
    .filter((hero) => {
      if (!state.search) return true;
      return `${hero.name} ${hero.roles.join(" ")} ${hero.tier}`
        .toLowerCase()
        .includes(state.search);
    });

  heroGrid.innerHTML = filtered
    .map((hero) => renderHeroTile(hero, picked.has(hero.name), getAllBans().includes(hero.name)))
    .join("");
}

function renderHeroTile(hero, isPicked, isBanned) {
  return `
    <button class="hero-tile ${isPicked ? "picked" : ""} ${isBanned ? "banned" : ""}" type="button" data-name="${hero.name}" ${isPicked ? "disabled" : ""}>
      <span class="tile-info" role="button" tabindex="0" data-info-name="${hero.name}" aria-label="Профиль ${hero.name}">i</span>
      <span class="hero-avatar">
        ${getHeroInitials(hero.name)}
        ${renderLazyImage("", hero.name)}
      </span>
      <span class="hero-name">${hero.name}</span>
      <span class="tile-meta">
        <span>${hero.tier}</span>
        <span>${hero.roles[0]}</span>
      </span>
    </button>
  `;
}

function renderAllySlots() {
  allySlots.innerHTML = teamRoles
    .map((role) => {
      const name = state.allySlots[role];
      const options = getSlotOptions(role, name);
      return `
        <div class="role-slot">
          <strong>${role}</strong>
          <select data-role-slot="${role}" aria-label="Выбрать героя на ${role}">
            <option value="">свободно</option>
            ${options
              .map(
                (optionName) =>
                  `<option value="${optionName}" ${optionName === name ? "selected" : ""}>${optionName}</option>`,
              )
              .join("")}
          </select>
          <button class="slot-suggest" type="button" data-suggest-role="${role}" aria-label="Подобрать героя на ${role}">
            Подбор
          </button>
          ${name ? `<button class="slot-build" type="button" data-slot-build="${name}" aria-label="Открыть билд ${name}">Билд</button>` : ""}
          ${name ? `<button class="slot-clear" type="button" data-clear-role="${role}" aria-label="Очистить ${role}">x</button>` : ""}
        </div>
      `;
    })
    .join("");
}

function getSlotOptions(role, currentName) {
  return state.allies
    .filter((name) => name === currentName || heroByName.get(name)?.roles.includes(role))
    .sort((a, b) => a.localeCompare(b));
}

function getHeroImageUrl(name) {
  const remoteUrl =
    heroPortraits[name] ||
    `https://mlbbhub.com/heroes/${getHeroSlug(name)}/opengraph-image`;
  return localHeroPortraits[name] || remoteUrl;
}

function renderLazyImage(className, name) {
  const classAttr = className ? ` class="${className}"` : "";
  const url = getHeroImageUrl(name);
  const sourceAttr = loadedImageUrls.has(url) ? `src="${url}"` : `data-src="${url}"`;
  return `<img${classAttr} ${sourceAttr} alt="" decoding="async" onload="this.dataset.loaded='true'" onerror="this.remove()" />`;
}

function scheduleImageHydration() {
  clearTimeout(imageHydrationTimer);
  imageHydrationTimer = setTimeout(hydrateVisibleImages, loadedImageUrls.size ? 60 : 450);
}

function hydrateVisibleImages() {
  const images = document.querySelectorAll("img[data-src]");
  if (!images.length) return;

  if (!("IntersectionObserver" in window)) {
    images.forEach(loadImage);
    return;
  }

  if (!imageObserver) {
    imageObserver = new IntersectionObserver(
      (entries) => {
        entries.forEach((entry) => {
          if (!entry.isIntersecting) return;
          loadImage(entry.target);
          imageObserver.unobserve(entry.target);
        });
      },
      { rootMargin: "220px 0px" },
    );
  }

  images.forEach((image) => imageObserver.observe(image));
}

function loadImage(image) {
  if (!image.dataset.src) return;
  image.src = image.dataset.src;
  loadedImageUrls.add(image.dataset.src);
  image.removeAttribute("data-src");
}

function getHeroSlug(name) {
  return name
    .toLowerCase()
    .replace(/\./g, "")
    .replace(/&/g, "and")
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/^-|-$/g, "");
}

function getImageExtension(url) {
  const cleanUrl = url.split("?")[0];
  const extension = cleanUrl.match(/\.(png|jpg|jpeg|webp)$/i)?.[0];
  return extension || ".jpg";
}

function getHeroInitials(name) {
  return name
    .split(/[\s.-]+/)
    .filter(Boolean)
    .slice(0, 2)
    .map((part) => part[0])
    .join("");
}

function renderDraftScore() {
  const score = scoreDraft();
  const matchup = getMatchupDetails();
  const stages = getDraftStageProfile(state.allies, state.enemies);
  draftScore.innerHTML = `
    <div class="win-ring" style="--win: ${score.win}%">
      <div class="win-ring-inner">
        <strong>${score.win}%</strong>
      </div>
    </div>
    <div class="score-breakdown">
      <h3>${score.label}</h3>
      ${score.lines.map((line) => `<div class="score-line"><span>${line.label}</span><strong>${line.value}</strong></div>`).join("")}
    </div>
    <div class="stage-panel">
      <div class="stage-head">
        <h4>Сила по стадиям</h4>
        <span>${stages.label}</span>
      </div>
      ${renderStageBar("Старт", stages.early)}
      ${renderStageBar("Мидгейм", stages.mid)}
      ${renderStageBar("Лейт", stages.late)}
    </div>
    <div class="matchup-summary">
      ${renderMatchupGroup("Наши контры", matchup.advantages, "good")}
      ${renderMatchupGroup("Опасность", matchup.threats, "bad")}
      ${renderMatchupGroup("Не закрыто", matchup.unanswered, "neutral")}
    </div>
  `;
}

function renderStageBar(label, value) {
  return `
    <div class="stage-row">
      <span>${label}</span>
      <div class="stage-track"><i style="width: ${value}%"></i></div>
      <strong>${value}</strong>
    </div>
  `;
}

function renderMatchupGroup(title, items, tone) {
  const body = items.length
    ? items
        .slice(0, 6)
        .map((item) => `<li>${item}</li>`)
        .join("")
    : `<li class="empty">Пока нет данных</li>`;

  return `
    <div class="matchup-group ${tone}">
      <h4>${title}</h4>
      <ul>${body}</ul>
    </div>
  `;
}

function scoreDraft(extraAllyName = null) {
  const allies = extraAllyName
    ? [...state.allies, extraAllyName]
    : state.allies;
  const allyHeroes = allies.map((name) => heroByName.get(name)).filter(Boolean);
  const enemyHeroes = state.enemies
    .map((name) => heroByName.get(name))
    .filter(Boolean);

  const allyMeta = average(
    allyHeroes.map((hero) => hero.meta),
    75,
  );
  const enemyMeta = average(
    enemyHeroes.map((hero) => hero.meta),
    75,
  );
  const matchup = calculateMatchupDelta(allies, state.enemies);
  const synergy = calculateSynergyDelta(allies);
  const coverage = calculateRoleCoverage(allies);

  const raw =
    50 +
    (allyMeta - enemyMeta) * 0.18 +
    matchup * 2.2 +
    synergy * 1.3 +
    coverage;
  const win = clamp(Math.round(raw), 18, 82);

  return {
    win,
    label: getWinLabel(win),
    lines: [
      {
        label: "Сила нашей меты",
        value: allyHeroes.length ? Math.round(allyMeta) : "-",
      },
      {
        label: "Сила вражеской меты",
        value: enemyHeroes.length ? Math.round(enemyMeta) : "-",
      },
      { label: "Контрматчапы", value: signed(matchup) },
      { label: "Синергия и роли", value: signed(synergy + coverage) },
    ],
  };
}

function calculateMatchupDelta(allies, enemies) {
  let delta = 0;
  allies.forEach((allyName) => {
    const ally = heroByName.get(allyName);
    if (!ally) return;

    enemies.forEach((enemyName) => {
      const enemy = heroByName.get(enemyName);
      if (!enemy) return;

      const allyCounterWeight = getCounterWeight(ally.name, enemyName);
      const enemyCounterWeight = getCounterWeight(enemyName, ally.name);

      if (allyCounterWeight) delta += allyCounterWeight / 32;
      if (ally.weakInto.includes(enemyName)) delta -= 3.4;
      if (enemyCounterWeight) delta -= enemyCounterWeight / 38;
      if (enemy.weakInto.includes(allyName)) delta += 1.8;
    });
  });
  return delta;
}

function getCounterWeight(counterName, targetName) {
  const list = counterChart[targetName] || [];
  const index = list.indexOf(counterName);
  if (index >= 0) return Math.max(64, 100 - index * 8);

  const counter = heroByName.get(counterName);
  if (counter?.counters.includes(targetName)) return 76;
  return 0;
}

function getMatchupDetails(extraAllyName = null) {
  const allies = extraAllyName
    ? [...state.allies, extraAllyName]
    : state.allies;
  const enemies = state.enemies;
  const advantages = [];
  const threats = [];
  const coveredEnemies = new Set();

  allies.forEach((allyName) => {
    const ally = heroByName.get(allyName);
    if (!ally) return;

    enemies.forEach((enemyName) => {
      const enemy = heroByName.get(enemyName);
      if (!enemy) return;

      if (
        getCounterWeight(allyName, enemyName) ||
        enemy.weakInto.includes(allyName)
      ) {
        advantages.push(`${allyName} -> ${enemyName}`);
        coveredEnemies.add(enemyName);
      }

      if (
        ally.weakInto.includes(enemyName) ||
        getCounterWeight(enemyName, allyName)
      ) {
        threats.push(`${enemyName} -> ${allyName}`);
      }
    });
  });

  const unanswered = enemies
    .filter((enemyName) => !coveredEnemies.has(enemyName))
    .map((enemyName) => {
      const options = getCounterOptions(enemyName, allies);
      return options.length
        ? `${enemyName}: ${options.slice(0, 3).join(", ")}`
        : `${enemyName}: нет точного ответа`;
    });

  return {
    advantages: uniqueList(advantages),
    threats: uniqueList(threats),
    unanswered,
  };
}

function getCounterOptions(enemyName, excludeNames = []) {
  const excluded = new Set([...excludeNames, ...state.enemies, ...getAllBans()]);
  return heroes
    .filter((hero) => !excluded.has(hero.name))
    .filter(
      (hero) =>
        getCounterWeight(hero.name, enemyName) ||
        heroByName.get(enemyName)?.weakInto.includes(hero.name),
    )
    .sort(
      (a, b) =>
        getCounterWeight(b.name, enemyName) +
        b.meta / 2 -
        (getCounterWeight(a.name, enemyName) + a.meta / 2),
    )
    .map((hero) => hero.name);
}

function uniqueList(items) {
  return [...new Set(items)];
}

function calculateSynergyDelta(allies) {
  let delta = 0;
  allies.forEach((name, index) => {
    const hero = heroByName.get(name);
    if (!hero) return;
    allies.slice(index + 1).forEach((otherName) => {
      const other = heroByName.get(otherName);
      if (!other) return;
      if (hero.synergies.includes(otherName) || other.synergies.includes(name))
        delta += 1.6;
    });
  });
  return delta;
}

function calculateRoleCoverage(allies) {
  const covered = new Set();
  Object.entries(state.allySlots).forEach(([role, name]) => {
    if (name && allies.includes(name)) covered.add(role);
  });
  allies.forEach((name) => {
    const assigned = Object.values(state.allySlots).includes(name);
    if (!assigned) heroByName.get(name)?.roles.forEach((role) => covered.add(role));
  });
  const keyRoles = ["Jungle", "EXP", "Mid", "Gold", "Roam"];
  return (
    keyRoles.filter((role) => covered.has(role)).length * 0.9 -
    Math.max(0, allies.length - covered.size) * 0.5
  );
}

function getDraftStageProfile(allies, enemies = []) {
  const allyProfile = getTeamStageScores(allies);
  const enemyProfile = getTeamStageScores(enemies);
  const stages = {
    early: clamp(
      Math.round(50 + (allyProfile.early - enemyProfile.early) * 0.38),
      15,
      90,
    ),
    mid: clamp(
      Math.round(50 + (allyProfile.mid - enemyProfile.mid) * 0.38),
      15,
      90,
    ),
    late: clamp(
      Math.round(50 + (allyProfile.late - enemyProfile.late) * 0.38),
      15,
      90,
    ),
  };

  return {
    ...stages,
    label: getStageLabel(stages),
  };
}

function getTeamStageScores(names) {
  if (!names.length) return { early: 50, mid: 50, late: 50 };

  const total = names.reduce(
    (sum, name) => {
      const hero = heroByName.get(name);
      const profile = getHeroStageScores(hero);
      return {
        early: sum.early + profile.early,
        mid: sum.mid + profile.mid,
        late: sum.late + profile.late,
      };
    },
    { early: 0, mid: 0, late: 0 },
  );

  return {
    early: total.early / names.length,
    mid: total.mid / names.length,
    late: total.late / names.length,
  };
}

function getHeroStageScores(hero) {
  if (!hero) return { early: 50, mid: 50, late: 50 };

  const scores = { early: 50, mid: 55, late: 50 };
  scores.mid += (hero.meta - 75) * 0.12;

  hero.roles.forEach((role) => {
    if (role === "Jungle" || role === "Roam") {
      scores.early += 8;
      scores.mid += 4;
      scores.late -= 3;
    }
    if (role === "Gold") {
      scores.early -= 5;
      scores.mid += 2;
      scores.late += 12;
    }
    if (role === "Mid") {
      scores.early += 3;
      scores.mid += 8;
      scores.late += 2;
    }
    if (role === "EXP") {
      scores.early += 2;
      scores.mid += 7;
      scores.late += 3;
    }
  });

  if (stageBias.early.includes(hero.name)) {
    scores.early += 16;
    scores.mid += 4;
    scores.late -= 8;
  }
  if (stageBias.mid.includes(hero.name)) {
    scores.early += 3;
    scores.mid += 16;
    scores.late += 3;
  }
  if (stageBias.late.includes(hero.name)) {
    scores.early -= 8;
    scores.mid += 4;
    scores.late += 18;
  }

  return {
    early: clamp(Math.round(scores.early), 20, 95),
    mid: clamp(Math.round(scores.mid), 20, 95),
    late: clamp(Math.round(scores.late), 20, 95),
  };
}

function getStageLabel(stages) {
  const ordered = [
    ["early", stages.early, "сильнее на старте"],
    ["mid", stages.mid, "сильнее в мидгейме"],
    ["late", stages.late, "сильнее в лейте"],
  ].sort((a, b) => b[1] - a[1]);

  if (ordered[0][1] - ordered[2][1] <= 5) return "ровный темп";
  return ordered[0][2];
}

function hasControl(hero) {
  return controlHeroes.has(hero.name) || hero.roles.includes("Roam");
}

function hasFrontline(hero) {
  return frontlineHeroes.has(hero.name) || hero.roles.includes("Roam");
}

function getDamageProfile(team) {
  return team.reduce(
    (profile, hero) => {
      if (trueDamageHeroes.has(hero.name)) profile.trueDamage += 1;
      else if (magicDamageHeroes.has(hero.name)) profile.magic += 1;
      else profile.physical += 1;
      return profile;
    },
    { physical: 0, magic: 0, trueDamage: 0 },
  );
}

function average(values, fallback) {
  if (!values.length) return fallback;
  return values.reduce((sum, value) => sum + value, 0) / values.length;
}

function clamp(value, min, max) {
  return Math.max(min, Math.min(max, value));
}

function signed(value) {
  const rounded = Math.round(value * 10) / 10;
  return rounded > 0 ? `+${rounded}` : `${rounded}`;
}

function getWinLabel(win) {
  if (win >= 62) return "Пик выглядит сильнее";
  if (win >= 54) return "Небольшое преимущество";
  if (win >= 47) return "Примерно равный драфт";
  return "Нужен контрпик";
}

function renderRecommendations() {
  const picked = new Set([...state.enemies, ...state.allies, ...getAllBans()]);
  const targetRole = state.focusRole || (state.role !== "Любая" ? state.role : null);
  const scored = heroes
    .filter((hero) => !picked.has(hero.name))
    .filter((hero) => !targetRole || hero.roles.includes(targetRole))
    .filter((hero) => !state.metaOnly || ["S", "A"].includes(hero.tier))
    .map(scoreHero)
    .sort((a, b) => b.score - a.score)
    .slice(0, 8);

  draftSummary.textContent = targetRole
    ? `Подбор на ${targetRole}: учитываю врагов, баны и уже выбранных союзников.`
    : state.enemies.length
    ? `Считаю против: ${state.enemies.join(", ")}`
    : getAllBans().length
      ? `Исключаю баны: ${getAllBans().join(", ")}`
      : "Добавь вражеских героев, и рекомендации станут точнее.";

  recommendations.innerHTML = scored.map(renderHeroCard).join("");
}

function renderBanRecommendations() {
  const items = getBanRecommendations();
  banRecommendations.innerHTML = `
    <div class="ban-head">
      <div>
        <h3>Кого лучше банить</h3>
        <span>${state.allyBans.length}/5 наших банов</span>
      </div>
      <p>Советы считаются от наших героев и общей силы меты.</p>
    </div>
    <div class="ban-grid">
      ${items.map(renderBanCard).join("")}
    </div>
  `;
}

function getBanRecommendations(limit = 4) {
  const unavailable = new Set([...state.enemies, ...state.allies, ...getAllBans()]);
  return heroes
    .filter((hero) => !unavailable.has(hero.name))
    .map((hero) => {
      const reasons = [];
      let score = hero.meta;

      state.allies.forEach((allyName) => {
        const weight = getCounterWeight(hero.name, allyName);
        const ally = heroByName.get(allyName);
        if (weight || ally?.weakInto.includes(hero.name)) {
          score += (weight || 72) / 3.8;
          reasons.push(`${hero.name} опасен для ${allyName}`);
        }
      });

      state.enemies.forEach((enemyName) => {
        const enemy = heroByName.get(enemyName);
        if (hero.synergies.includes(enemyName) || enemy?.synergies.includes(hero.name)) {
          score += 9;
          reasons.push(`усиливает ${enemyName}`);
        }
      });

      if (!reasons.length) reasons.push(`сильный ${hero.tier}-tier в мете`);
      return { hero, score, reasons };
    })
    .sort((a, b) => b.score - a.score)
    .slice(0, limit);
}

function renderBanCard(item) {
  return `
    <button class="ban-card" type="button" data-ban-name="${item.hero.name}" ${state.allyBans.length >= 5 ? "disabled" : ""}>
      ${renderLazyImage("chip-avatar", item.hero.name)}
      <span>
        <strong>${item.hero.name}</strong>
        <em>${item.reasons.slice(0, 2).join(" · ")}</em>
      </span>
    </button>
  `;
}

function renderTeamInsights() {
  const insights = getTeamInsights();
  teamInsights.innerHTML = `
    <div class="insights-head">
      <h3>Анализ состава</h3>
      <span>${state.allies.length}/5 героев</span>
    </div>
    <div class="insight-grid">
      ${insights.map(renderInsight).join("")}
    </div>
  `;
}

function renderInsight(item) {
  return `
    <div class="insight ${item.tone}">
      <strong>${item.title}</strong>
      <span>${item.text}</span>
    </div>
  `;
}

function getTeamInsights() {
  const allyHeroes = state.allies.map((name) => heroByName.get(name)).filter(Boolean);
  const enemyHeroes = state.enemies.map((name) => heroByName.get(name)).filter(Boolean);
  const assignedRoles = new Set(Object.entries(state.allySlots).filter(([, name]) => name).map(([role]) => role));
  const missingRoles = teamRoles.filter((role) => !assignedRoles.has(role));
  const ccCount = allyHeroes.filter(hasControl).length;
  const frontCount = allyHeroes.filter(hasFrontline).length;
  const antiHealNeed = enemyHeroes.some((hero) => healingHeroes.has(hero.name));
  const antiHealAnswer = allyHeroes.some((hero) => antiHealHeroes.has(hero.name));
  const damage = getDamageProfile(allyHeroes);
  const stages = getDraftStageProfile(state.allies, state.enemies);

  return [
    missingRoles.length
      ? { tone: "warn", title: "Роли", text: `Не закрыто: ${missingRoles.join(", ")}` }
      : { tone: "good", title: "Роли", text: "Все 5 ролей закрыты" },
    ccCount >= 2
      ? { tone: "good", title: "Контроль", text: `Есть ${ccCount} героя с контролем` }
      : { tone: "bad", title: "Контроль", text: "Мало надежного контроля" },
    frontCount >= 1
      ? { tone: "good", title: "Фронтлайн", text: `Есть ${frontCount} герой для входа/впитывания` }
      : { tone: "warn", title: "Фронтлайн", text: "Некому начинать драку или держать линию" },
    damage.physical >= 3 || damage.magic >= 3
      ? { tone: "warn", title: "Урон", text: `Перекос: ${damage.physical} физ / ${damage.magic} маг` }
      : { tone: "good", title: "Урон", text: `${damage.physical} физ / ${damage.magic} маг / ${damage.trueDamage} true` },
    antiHealNeed && !antiHealAnswer
      ? { tone: "bad", title: "Anti-heal", text: "Врагу нужен ответ на лечение" }
      : { tone: "good", title: "Anti-heal", text: antiHealNeed ? "Ответ на лечение есть" : "Критичной угрозы лечения нет" },
    { tone: stages.late < 45 ? "warn" : "good", title: "План игры", text: stages.label },
  ];
}

function scoreHero(hero) {
  let score = hero.meta;
  const reasons = [`Мета ${hero.tier}: ${hero.meta}`];
  const directCounters = [];
  let hardCounters = 0;
  let danger = 0;

  state.enemies.forEach((enemy) => {
    const counterWeight = getCounterWeight(hero.name, enemy);
    if (counterWeight) {
      score += counterWeight / 4.2;
      hardCounters += 1;
      directCounters.push(enemy);
      reasons.push(`${hero.name} -> ${enemy} (${counterWeight})`);
    }

    if (hero.weakInto.includes(enemy)) {
      score -= 28;
      danger += 1;
      reasons.push(`Риск против ${enemy}`);
    }

    const enemyCounterWeight = getCounterWeight(enemy, hero.name);
    if (enemyCounterWeight) {
      score -= enemyCounterWeight / 5;
      danger += 1;
      reasons.push(`${enemy} может законтрить (${enemyCounterWeight})`);
    }
  });

  state.allies.forEach((ally) => {
    if (
      hero.synergies.includes(ally) ||
      heroByName.get(ally)?.synergies.includes(hero.name)
    ) {
      score += 10;
      reasons.push(`Синергия с ${ally}`);
    }
  });

  if (state.role !== "Любая" && hero.roles.includes(state.role)) {
    score += 8;
  }

  const projected = scoreDraft(hero.name).win;
  const details = getMatchupDetails(hero.name);
  const stageProfile = getHeroStageScores(hero);
  if (hardCounters === 0 && state.enemies.length)
    reasons.push("Нет точного контра в базе");
  if (danger === 0 && state.enemies.length)
    reasons.push("Нет явного плохого матчапа");

  return {
    hero,
    score: Math.max(0, Math.min(150, score)),
    win: projected,
    reasons,
    directCounters,
    threats: details.threats.filter((item) => item.endsWith(`-> ${hero.name}`)),
    stageProfile,
  };
}

function renderHeroCard(item) {
  const { hero, score, win, reasons, directCounters, threats, stageProfile } =
    item;
  return `
    <article class="hero-card">
      <div>
        <div class="hero-title">
          ${renderLazyImage("card-avatar", hero.name)}
          <h3>${hero.name}</h3>
          <span class="badge">${hero.tier}-tier</span>
          <button class="profile-link" type="button" data-info-name="${hero.name}">Профиль</button>
        </div>
        <ul class="role-list">${hero.roles.map((role) => `<li>${role}</li>`).join("")}</ul>
        <p class="muted">${hero.notes}</p>
        ${renderHeroStageLine(stageProfile)}
        ${renderCounterLine(hero.name, directCounters, threats)}
        <ul class="reason-list">${reasons
          .slice(0, 4)
          .map((reason) => `<li>${reason}</li>`)
          .join("")}</ul>
      </div>
      <div class="score">
        <strong>${win}%</strong>
        <span>win</span>
      </div>
    </article>
  `;
}

function renderHeroStageLine(stageProfile) {
  const best = [
    ["Старт", stageProfile.early],
    ["Мид", stageProfile.mid],
    ["Лейт", stageProfile.late],
  ].sort((a, b) => b[1] - a[1])[0];

  return `
    <div class="hero-stage-line">
      <span>Сильнее: <strong>${best[0]}</strong></span>
      <span>Старт ${stageProfile.early}</span>
      <span>Мид ${stageProfile.mid}</span>
      <span>Лейт ${stageProfile.late}</span>
    </div>
  `;
}

function renderCounterLine(heroName, directCounters, threats) {
  if (!state.enemies.length) return "";
  const counterText = directCounters.length
    ? directCounters.join(", ")
    : "точных контров нет";
  const threatText = threats.length
    ? threats.map((item) => item.split(" -> ")[0]).join(", ")
    : "явных угроз нет";

  return `
    <div class="counter-line">
      <span><strong>${heroName}</strong> закрывает: ${counterText}</span>
      <span>Опасно: ${threatText}</span>
    </div>
  `;
}

function renderHeroProfile(hero) {
  const stageProfile = getHeroStageScores(hero);
  const build = getBuildRecommendation(hero);
  const matchup = getHeroMatchupProfile(hero);
  const plan = getHeroGamePlan(hero, build);

  return `
    <div class="profile-hero-head">
      ${renderLazyImage("profile-avatar", hero.name)}
      <div>
        <h2>${hero.name}</h2>
        <p>${hero.notes}</p>
        <ul class="role-list">${hero.roles.map((role) => `<li>${role}</li>`).join("")}</ul>
      </div>
    </div>
    ${renderHeroStageLine(stageProfile)}
    <div class="profile-actions">
      <button class="ghost-button" type="button" data-play-around="${hero.name}">
        Играть вокруг ${hero.name}
      </button>
      <button class="ghost-button" type="button" data-build-name="${hero.name}">
        Сборка против пика
      </button>
    </div>
    <div class="profile-grid">
      ${renderProfileBlock("Кого закрывает", matchup.targets, "good")}
      ${renderProfileBlock("Опасные враги", matchup.dangers, "bad")}
      ${renderProfileBlock("Лучшие союзники", matchup.synergies, "neutral")}
    </div>
    <p class="profile-source">Матчапы: ${currentHeroIntel[hero.name]?.source || "MLBB.io / локальная контр-база / role-matchup эвристика"} · v${APP_VERSION}</p>
    <div class="profile-section">
      <h3>Билд под текущих врагов</h3>
      <p>${build.summary}</p>
      <p class="profile-source">Основа сборки: ${build.source}</p>
      ${renderBuildVariantInfo(build)}
      <div class="build-list">
        ${build.items.map(renderBuildItem).join("")}
      </div>
    </div>
    <div class="profile-section">
      <h3>План на игру</h3>
      <ul class="profile-list">${plan.map((item) => `<li>${item}</li>`).join("")}</ul>
    </div>
  `;
}

function renderHeroBuildModal(hero) {
  const build = getBuildRecommendation(hero);
  const threats = state.enemies.length
    ? state.enemies.join(", ")
    : "враги еще не выбраны";

  return `
    <div class="profile-hero-head">
      ${renderLazyImage("profile-avatar", hero.name)}
      <div>
        <h2>Сборка: ${hero.name}</h2>
        <p>Считаю под текущий пик противников: ${threats}.</p>
        <ul class="role-list">${hero.roles.map((role) => `<li>${role}</li>`).join("")}</ul>
      </div>
    </div>
    <div class="profile-section build-focus">
      <h3>Предметы и тайминги</h3>
      <p>${build.summary}</p>
      <p class="profile-source">Основа сборки: ${build.source}</p>
      ${renderBuildVariantInfo(build)}
      <div class="build-list">
        ${build.items.map(renderBuildItem).join("")}
      </div>
    </div>
    <div class="profile-section">
      <h3>Как читать сборку</h3>
      <ul class="profile-list">
        <li>Если враги изменились, закрой окно и открой билд заново — он пересчитается.</li>
        <li>Anti-heal появляется против лечения и сильного вампиризма.</li>
        <li>Пробой и защитные предметы подставляются против плотного фронта или burst-угроз.</li>
      </ul>
    </div>
  `;
}

function renderProfileBlock(title, items, tone) {
  const body = items.length
    ? items.map((item) => `<li>${item}</li>`).join("")
    : `<li class="empty">Нет точных данных</li>`;

  return `
    <div class="matchup-group ${tone}">
      <h4>${title}</h4>
      <ul>${body}</ul>
    </div>
  `;
}

function renderBuildItem(item, index) {
  return `
    <div class="build-item">
      <img class="item-icon" src="${getItemImageUrl(item.id)}" alt="" loading="lazy" decoding="async" onerror="this.remove()" />
      <div>
        <strong>${index + 1}. ${getItemName(item.id)}</strong>
        <span>${item.timing}</span>
        <p>${item.reason}</p>
      </div>
    </div>
  `;
}

function renderBuildVariantInfo(build) {
  if (!build.variant) return "";
  const tags = build.variant.tags?.length
    ? build.variant.tags.map((tag) => `<li>${getBuildTagLabel(tag)}</li>`).join("")
    : "<li>базовая ситуация</li>";
  return `
    <div class="build-variant">
      <strong>${build.variant.label}</strong>
      <span>Совпадение: ${build.variant.match}% · проверено ${build.variant.checked}</span>
      <ul>${tags}</ul>
    </div>
  `;
}

function getItemName(itemId) {
  return itemCatalog[itemId]?.ru || itemId;
}

function getItemImageUrl(itemId) {
  const slug = itemCatalog[itemId]?.slug || getHeroSlug(itemId);
  return `assets/items/${slug}.png`;
}

function getHeroMatchupProfile(hero) {
  const intel = currentHeroIntel[hero.name] || {};
  const targets = getCounteredTargets(hero, intel)
    .map((name) => explainMatchup(hero.name, name, "good"))
    .slice(0, 5);
  const dangers = getDangerousMatchups(hero, intel)
    .map((name) => explainMatchup(name, hero.name, "bad"))
    .slice(0, 5);
  const synergies = getBestAllies(hero, intel)
    .map((name) => explainSynergy(hero, heroByName.get(name)))
    .slice(0, 5);

  return { targets, dangers, synergies };
}

function getCounteredTargets(hero, intel = {}) {
  const scores = new Map();
  const add = (name, value) => {
    if (!heroByName.has(name) || name === hero.name) return;
    scores.set(name, (scores.get(name) || 0) + value + (heroByName.get(name)?.meta || 70) / 10);
  };

  (intel.targets || []).forEach((name, index) => add(name, 120 - index * 8));
  hero.counters.forEach((name, index) => add(name, 100 - index * 7));

  heroes.forEach((target) => {
    const chartWeight = getCounterWeight(hero.name, target.name);
    if (chartWeight) add(target.name, chartWeight);
    if (target.weakInto.includes(hero.name)) add(target.name, 86);
    if (trueDamageHeroes.has(hero.name) && hasFrontline(target)) add(target.name, 38);
    if (antiHealHeroes.has(hero.name) && healingHeroes.has(target.name)) add(target.name, 44);
    if (hasControl(hero) && (target.roles.includes("Jungle") || target.roles.includes("Gold"))) add(target.name, 22);
  });

  return sortNamesByScore(scores);
}

function getDangerousMatchups(hero, intel = {}) {
  const scores = new Map();
  const add = (name, value) => {
    if (!heroByName.has(name) || name === hero.name) return;
    scores.set(name, (scores.get(name) || 0) + value + (heroByName.get(name)?.meta || 70) / 10);
  };

  (intel.dangers || []).forEach((name, index) => add(name, 125 - index * 8));
  hero.weakInto.forEach((name, index) => add(name, 105 - index * 8));
  (counterChart[hero.name] || []).forEach((name, index) => add(name, 100 - index * 8));

  state.enemies.forEach((name) => {
    if (getCounterWeight(name, hero.name)) add(name, 112);
  });

  return sortNamesByScore(scores);
}

function getBestAllies(hero, intel = {}) {
  const scores = new Map();
  const add = (name, value) => {
    if (!heroByName.has(name) || name === hero.name) return;
    scores.set(name, (scores.get(name) || 0) + value + (heroByName.get(name)?.meta || 70) / 12);
  };

  (intel.allies || []).forEach((name, index) => add(name, 125 - index * 8));
  hero.synergies.forEach((name, index) => add(name, 110 - index * 8));

  heroes.forEach((ally) => {
    if (ally.synergies.includes(hero.name)) add(ally.name, 90);
    if ((hero.roles.includes("Gold") || hero.roles.includes("Mid")) && ["Lolita", "Minotaur", "Diggie", "Angela", "Floryn"].includes(ally.name)) add(ally.name, 64);
    if ((hero.roles.includes("EXP") || hero.roles.includes("Jungle")) && ["Tigreal", "Atlas", "Angela", "Floryn", "Minotaur", "Mathilda"].includes(ally.name)) add(ally.name, 62);
    if ((hero.roles.includes("Roam") || hasFrontline(hero)) && ["Pharsa", "Yve", "Kimmy", "Granger", "Karrie", "Luo Yi"].includes(ally.name)) add(ally.name, 58);
    state.enemies.forEach((enemyName) => {
      if (getCounterWeight(ally.name, enemyName)) add(ally.name, 18);
    });
  });

  return sortNamesByScore(scores);
}

function sortNamesByScore(scores) {
  return [...scores.entries()]
    .sort((a, b) => b[1] - a[1])
    .map(([name]) => name);
}

function explainMatchup(actorName, targetName, tone) {
  const actor = heroByName.get(actorName);
  const target = heroByName.get(targetName);
  const actorRoles = actor?.roles || [];
  const targetRoles = target?.roles || [];

  if (controlHeroes.has(actorName) || actorRoles.includes("Roam")) {
    return `${actorName} -> ${targetName}: контроль мешает входу и сбивает темп`;
  }
  if (trueDamageHeroes.has(actorName) && (frontlineHeroes.has(targetName) || targetRoles.includes("EXP"))) {
    return `${actorName} -> ${targetName}: true damage и sustain хорошо работают против плотной цели`;
  }
  if (antiHealHeroes.has(actorName) && healingHeroes.has(targetName)) {
    return `${actorName} -> ${targetName}: режет лечение и затяжной sustain`;
  }
  if (frontlineHeroes.has(targetName) || targetRoles.includes("EXP")) {
    return `${actorName} -> ${targetName}: хорошо пробивает плотный фронт`;
  }
  if (targetRoles.includes("Gold") || targetRoles.includes("Mid")) {
    return `${actorName} -> ${targetName}: быстро наказывает тонкую backline-позицию`;
  }
  if (tone === "bad") {
    return `${actorName} -> ${targetName}: опасный матчап, лучше закрывать баном или сейвом`;
  }
  return `${actorName} -> ${targetName}: хороший ответ по базе контрпиков`;
}

function explainSynergy(hero, ally) {
  if (!ally) return "Нет данных";
  if (hero.synergies.includes(ally.name) || ally.synergies.includes(hero.name)) {
    return `${ally.name}: прямая синергия из актуальной базы`;
  }
  if (["Angela", "Floryn"].includes(ally.name)) {
    return `${ally.name}: дает sustain и помогает пережить фокус`;
  }
  if (["Tigreal", "Atlas", "Minotaur"].includes(ally.name)) {
    return `${ally.name}: собирает врагов под вход и продолжение урона`;
  }
  if (["Lolita", "Diggie"].includes(ally.name)) {
    return `${ally.name}: защищает от engage и снарядов, дает безопасный файт`;
  }
  if (ally.roles.includes("Mid")) {
    return `${ally.name}: добавляет контроль зоны и урон перед дракой`;
  }
  if (ally.roles.includes("Gold")) {
    return `${ally.name}: добавляет лейт-урон, пока ${hero.name} создает пространство`;
  }
  return `${ally.name}: закрывает роль и усиливает баланс состава`;
}

function getBuildRecommendation(hero) {
  const archetype = getHeroArchetype(hero);
  const enemyHeroes = state.enemies.map((name) => heroByName.get(name)).filter(Boolean);
  const situation = getEnemyBuildSituation(enemyHeroes);
  const profile = chooseProBuildProfile(hero, archetype, situation);
  const items = [...profile.core, ...profile.defaultLate];
  const notes = [];
  const applySituation = (condition, key, note) => {
    const item = profile.situations?.[key];
    if (!condition || !item) return;
    placeSituationalItem(items, item);
    notes.push(note);
  };

  applySituation(situation.hasHealing, "antiHeal", "anti-heal против лечения/вампиризма");
  applySituation(situation.hasFront, "tankFront", "пробой против плотного фронта");
  applySituation(situation.hasMobileBackline, "mobileBackline", "ускоренный заход в мобильную backline");
  applySituation(situation.hasPhysicalBurst, "physicalBurst", "защита от физического burst");
  applySituation(situation.hasMagicBurst, "magicBurst", "защита от магического burst");
  applySituation(situation.hasMagicDps, "magicDps", "защита от продолжительного магического урона");
  applySituation(situation.needsSafety, "lateSafety", "страховка для решающего лейт-файта");
  applySituation(hero.name === "Alpha" && situation.hasFront, "sustainDuel", "больше sustain в затяжных дуэлях");

  return {
    summary: notes.length
      ? `Адаптация: ${uniqueList(notes).join(", ")}.`
      : "Выбран ближайший pro/high-rank вариант без жесткой контры от текущих врагов.",
    source: profile.source,
    variant: profile.variant,
    items: items.map((name, index) => ({
      id: name,
      timing: getItemTiming(index),
      reason: getItemReason(name, hero, archetype),
    })),
  };
}

function chooseProBuildProfile(hero, archetype, situation) {
  const personal = proBuildProfiles[hero.name] || proBuildProfiles[archetype] || getBaseBuild(archetype);
  const ranked = proBuildDatabase
    .map((variant) => ({
      variant,
      score: scoreBuildVariant(variant, hero, archetype, situation),
    }))
    .sort((a, b) => b.score - a.score);
  const best = ranked[0];
  if (!best || best.score < 20) {
    return {
      ...personal,
      source: `${personal.source}; ${buildSourceMeta.sources}, проверено ${buildSourceMeta.checked}`,
      variant: {
        label: "Персональный fallback-профиль",
        match: 55,
        checked: buildSourceMeta.checked,
        tags: ["fallback"],
      },
    };
  }

  return {
    source: `${best.variant.source}; проверено ${best.variant.checked}`,
    core: [...best.variant.core],
    defaultLate: [...best.variant.defaultLate],
    situations: { ...personal.situations, ...best.variant.situations },
    variant: {
      label: best.variant.label,
      match: Math.max(55, Math.min(99, Math.round(best.score))),
      checked: best.variant.checked,
      tags: getActiveBuildTags(situation).filter((tag) => best.variant.tags.includes(tag)),
    },
  };
}

function scoreBuildVariant(variant, hero, archetype, situation) {
  let score = 0;
  if (variant.archetypes.includes(archetype)) score += 34;
  hero.roles.forEach((role) => {
    if (variant.roles.includes(role)) score += 18;
  });

  const heroKey = getHeroBuildProfileKey(hero);
  if (
    (heroKey === "critMarksman" && variant.id === "crit-gold-carry") ||
    (heroKey === "marksman" && variant.id === "atk-speed-gold-front") ||
    (heroKey === "burstMage" && variant.id === "mage-burst") ||
    (heroKey === "mage" && variant.id === "mage-poke-control") ||
    (heroKey === "sustainMage" && variant.id === "mage-sustain-scaling") ||
    (heroKey === "burstAssassin" && variant.id.includes("assassin")) ||
    (heroKey === "sustainFighter" && variant.id === "fighter-sustain-exp") ||
    (heroKey === "fighter" && variant.id === "fighter-bruiser") ||
    (heroKey === "support" && variant.id.includes("support")) ||
    (heroKey === "tank" && variant.id.includes("tank"))
  ) {
    score += 24;
  }

  getActiveBuildTags(situation).forEach((tag) => {
    if (variant.tags.includes(tag)) score += 10;
  });

  if (hero.roles.includes("Roam") && variant.id.includes("support") && ["Angela", "Floryn", "Estes", "Rafaela", "Mathilda"].includes(hero.name)) score += 24;
  if (hero.roles.includes("Roam") && variant.id === "tank-roam-standard" && hasFrontline(hero)) score += 22;
  if (["Kimmy", "Natan", "Harley", "Gusion", "Aamon", "Julian"].includes(hero.name) && variant.id === "mage-burst") score += 18;
  if (["Alice", "Esmeralda", "Harith", "Cyclops"].includes(hero.name) && variant.id === "mage-sustain-scaling") score += 24;
  if (["Granger", "Brody", "Clint", "Lesley"].includes(hero.name) && variant.id === "burst-mm-skill") score += 24;

  return score;
}

function getActiveBuildTags(situation) {
  return [
    situation.hasHealing ? "antiHeal" : null,
    situation.hasFront ? "tankFront" : null,
    situation.hasMobileBackline ? "mobileBackline" : null,
    situation.hasPhysicalBurst ? "physicalBurst" : null,
    situation.hasMagicBurst ? "magicBurst" : null,
    situation.hasMagicDps ? "magicDps" : null,
    situation.needsSafety ? "lateSafety" : null,
  ].filter(Boolean);
}

function getBuildTagLabel(tag) {
  const labels = {
    antiHeal: "anti-heal",
    tankFront: "пробой фронта",
    mobileBackline: "доступ к backline",
    physicalBurst: "защита от физ burst",
    magicBurst: "защита от маг burst",
    magicDps: "длинный магический урон",
    lateSafety: "страховка в лейте",
    fallback: "нет точного совпадения",
  };
  return labels[tag] || tag;
}

function getEnemyBuildSituation(enemyHeroes) {
  const magicCount = enemyHeroes.filter((enemy) => magicDamageHeroes.has(enemy.name)).length;
  const physicalCount = enemyHeroes.length - magicCount;
  const burstNames = ["Saber", "Hayabusa", "Harley", "Gusion", "Julian", "Aamon", "Fanny", "Eudora", "Kadita"];
  const mobileBacklineNames = ["Pharsa", "Yve", "Kimmy", "Granger", "Karrie", "Wanwan", "Claude", "Natan"];

  return {
    hasHealing: enemyHeroes.some((enemy) => healingHeroes.has(enemy.name) || ["Uranus", "Ruby", "Alpha", "Alice", "Estes", "Floryn", "Angela"].includes(enemy.name)),
    hasFront: enemyHeroes.filter((enemy) => hasFrontline(enemy)).length >= 2,
    hasPhysicalBurst: physicalCount >= 3 || enemyHeroes.some((enemy) => ["Saber", "Hayabusa", "Fanny", "Lancelot", "Ling"].includes(enemy.name)),
    hasMagicBurst: magicCount >= 2 || enemyHeroes.some((enemy) => ["Harley", "Gusion", "Julian", "Aamon", "Eudora", "Kadita"].includes(enemy.name)),
    hasMagicDps: enemyHeroes.some((enemy) => ["Chang'e", "Valir", "Yve", "Zhuxin", "Lylia", "Cecilion"].includes(enemy.name)),
    hasMobileBackline: enemyHeroes.some((enemy) => mobileBacklineNames.includes(enemy.name)),
    needsSafety: enemyHeroes.length >= 4 || enemyHeroes.some((enemy) => burstNames.includes(enemy.name)),
  };
}

function getHeroArchetype(hero) {
  if (hero.roles.includes("Roam") || frontlineHeroes.has(hero.name)) return "tank";
  if (hero.roles.includes("Gold")) return "marksman";
  if (magicDamageHeroes.has(hero.name)) return "mage";
  if (hero.roles.includes("Jungle") && !hero.roles.includes("EXP")) return "assassin";
  return "fighter";
}

function getBaseBuild(archetype) {
  const builds = {
    marksman: proBuildProfiles.marksman,
    mage: proBuildProfiles.mage,
    assassin: proBuildProfiles.assassin,
    fighter: proBuildProfiles.fighter,
    tank: proBuildProfiles.tank,
  };
  const base = builds[archetype] || builds.fighter;
  return {
    source: `${base.source}; fallback-профиль`,
    core: [...base.core],
    defaultLate: [...base.defaultLate],
    situations: { ...base.situations },
  };
}

function placeSituationalItem(items, itemName) {
  if (items.includes(itemName)) return;
  items[Math.max(2, items.length - 2)] = itemName;
}

function getItemTiming(index) {
  return [
    "0:45-1:30",
    "3:00-4:30",
    "5:30-7:30",
    "8:00-10:30",
    "11:00-14:00",
    "15:00+",
  ][index] || "по ситуации";
}

function getItemReason(itemName, hero, archetype) {
  if (itemName.includes("Boots")) return "ранний темп, ротации и выживаемость на линии";
  if (itemName === "Dominance Ice" || itemName === "Sea Halberd") return "режет лечение и реген врагов";
  if (itemName === "Malefic Roar" || itemName === "Divine Glaive") return "пробивает защиту в мид/лейт стадии";
  if (itemName === "Immortality" || itemName === "Winter Crown") return "позволяет пережить решающий burst";
  if (itemName === "Bloodlust Axe" || itemName === "Concentrated Energy") return "дает sustain, чтобы дольше драться без выхода с карты";
  if (itemName === "War Axe" || itemName === "Brute Force Breastplate") return "набирает ценность в длинных драках и при постоянном давлении";
  if (itemName === "Queen's Wings" || itemName === "Oracle") return "усиливает живучесть в затяжном файте";
  if (itemName === "Windtalker" || itemName === "Berserker's Fury" || itemName === "Haas's Claws") return "ускоряет критический DPS и силу лейта";
  if (itemName === "Corrosion Scythe" || itemName === "Demon Hunter Sword" || itemName === "Golden Staff") return "дает стабильный DPS против плотных целей";
  if (itemName === "Endless Battle" || itemName === "Blade of Despair") return "усиливает burst и добивание ключевой цели";
  if (itemName === "Blade of the Heptaseas" || itemName === "Hunter Strike") return "помогает быстро вскрывать тонкую backline";
  if (itemName === "Genius Wand" || itemName === "Lightning Truncheon" || itemName === "Holy Crystal") return "ускоряет магический burst и пик силы после core-предметов";
  if (itemName === "Clock of Destiny" || itemName === "Demon Shoes" || itemName === "Enchanted Talisman") return "закрывает ману и скейлинг для стабильного темпа";
  if (itemName === "Flask of the Oasis" || itemName === "Fleeting Time") return "усиливает сейв союзников и частоту ключевых ультимейтов";
  if (itemName === "Necklace of Durance") return "режет лечение врагов, когда саппорт не может брать физический anti-heal";
  if (itemName === "Antique Cuirass" || itemName === "Athena's Shield" || itemName === "Radiant Armor" || itemName === "Rose Gold Meteor") return "подстраивает защиту под главный тип урона врагов";
  if (itemName === "Thunder Belt") return "усиливает затяжные драки и контроль фронта";
  if (itemName === "Wishing Lantern" || itemName === "Glowing Wand") return "сильный poke и урон по плотным целям";
  if (itemName === "Sky Piercer") return "ускоряет добивание тонких целей в текущей мете";
  return archetype === "tank"
    ? "дает плотность для входа и защиты команды"
    : `усиливает основной урон ${hero.name}`;
}

function getHeroGamePlan(hero, build) {
  const stages = getHeroStageScores(hero);
  const bestStage = [
    ["старте", stages.early],
    ["мидгейме", stages.mid],
    ["лейте", stages.late],
  ].sort((a, b) => b[1] - a[1])[0][0];
  const plan = [
    `Пик сильнее в ${bestStage}: играй вокруг этой стадии.`,
    `Первый ключевой слот: ${getItemName(build.items[1]?.id) || "первый core-предмет"} к ${build.items[1]?.timing || "4 минуте"}.`,
  ];

  if (hero.roles.includes("Gold")) plan.push("До 2 предметов не форсируй лишние драки без сейва роама.");
  if (hero.roles.includes("Jungle")) plan.push("Играй через turtle и быстрый темп после первого core-предмета.");
  if (hero.roles.includes("Roam")) plan.push("Главная задача: вижен, защита backline и старт драки по ключевой цели.");
  if (state.enemies.length) plan.push(`Против текущих врагов следи за: ${state.enemies.slice(0, 3).join(", ")}.`);
  return plan;
}

init();
