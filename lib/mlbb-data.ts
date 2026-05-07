export type Role = 'Jungle' | 'EXP' | 'Mid' | 'Gold' | 'Roam';
export type Tier = 'S' | 'A' | 'B' | 'C' | 'D';

export type Hero = {
  name: string;
  roles: Role[];
  tier: Tier;
  meta: number;
  counters: string[];
  weakInto: string[];
  synergies: string[];
  notes: string;
};

export type ItemInfo = { ru: string; slug: string };

export const teamRoles = ['Jungle', 'EXP', 'Mid', 'Gold', 'Roam'] as const;
export const roles = ['Любая', ...teamRoles] as const;
export const appVersion = '2026.05.07.17';

export const itemCatalog = {
  "Swift Boots": {
    "ru": "Сапоги скорости",
    "slug": "swift-boots"
  },
  "Tough Boots": {
    "ru": "Стойкие сапоги",
    "slug": "tough-boots"
  },
  "Warrior Boots": {
    "ru": "Сапоги воина",
    "slug": "warrior-boots"
  },
  "Arcane Boots": {
    "ru": "Магические сапоги",
    "slug": "arcane-boots"
  },
  "Bloodlust Axe": {
    "ru": "Топор кровожадности",
    "slug": "bloodlust-axe"
  },
  "Corrosion Scythe": {
    "ru": "Коррозийная коса",
    "slug": "corrosion-scythe"
  },
  "Demon Hunter Sword": {
    "ru": "Меч охотника на демонов",
    "slug": "demon-hunter-sword"
  },
  "Golden Staff": {
    "ru": "Золотой посох",
    "slug": "golden-staff"
  },
  "Malefic Roar": {
    "ru": "Злобный рык",
    "slug": "malefic-roar"
  },
  "Immortality": {
    "ru": "Бессмертие",
    "slug": "immortality"
  },
  "Oracle": {
    "ru": "Оракул",
    "slug": "oracle"
  },
  "Radiant Armor": {
    "ru": "Сияющая броня",
    "slug": "radiant-armor"
  },
  "Rose Gold Meteor": {
    "ru": "Метеор розового золота",
    "slug": "rose-gold-meteor"
  },
  "Wind of Nature": {
    "ru": "Ветер природы",
    "slug": "wind-of-nature"
  },
  "Windtalker": {
    "ru": "Говорящий с ветром",
    "slug": "windtalker"
  },
  "Berserker's Fury": {
    "ru": "Ярость берсерка",
    "slug": "berserkers-fury"
  },
  "Haas's Claws": {
    "ru": "Когти Хааса",
    "slug": "haass-claws"
  },
  "Endless Battle": {
    "ru": "Бесконечная битва",
    "slug": "endless-battle"
  },
  "Blade of the Heptaseas": {
    "ru": "Клинок семи морей",
    "slug": "blade-of-the-heptaseas"
  },
  "Ice Queen Wand": {
    "ru": "Жезл ледяной королевы",
    "slug": "ice-queen-wand"
  },
  "Holy Crystal": {
    "ru": "Святой кристалл",
    "slug": "holy-crystal"
  },
  "Genius Wand": {
    "ru": "Гениальный жезл",
    "slug": "genius-wand"
  },
  "Lightning Truncheon": {
    "ru": "Молниеносный жезл",
    "slug": "lightning-truncheon"
  },
  "Clock of Destiny": {
    "ru": "Часы судьбы",
    "slug": "clock-of-destiny"
  },
  "Concentrated Energy": {
    "ru": "Концентрированная энергия",
    "slug": "concentrated-energy"
  },
  "Demon Shoes": {
    "ru": "Демонические ботинки",
    "slug": "demon-shoes"
  },
  "Flask of the Oasis": {
    "ru": "Фляга оазиса",
    "slug": "flask-of-the-oasis"
  },
  "Fleeting Time": {
    "ru": "Мимолетное время",
    "slug": "fleeting-time"
  },
  "Necklace of Durance": {
    "ru": "Ожерелье заточения",
    "slug": "necklace-of-durance"
  },
  "Enchanted Talisman": {
    "ru": "Зачарованный талисман",
    "slug": "enchanted-talisman"
  },
  "Glowing Wand": {
    "ru": "Пылающий жезл",
    "slug": "glowing-wand"
  },
  "Wishing Lantern": {
    "ru": "Фонарь желаний",
    "slug": "wishing-lantern"
  },
  "Divine Glaive": {
    "ru": "Божественный меч",
    "slug": "divine-glaive"
  },
  "Winter Crown": {
    "ru": "Р—РёРјРЅСЏСЏ РєРѕСЂРѕРЅР°",
    "slug": "winter-crown"
  },
  "Sky Piercer": {
    "ru": "Небесный пронзатель",
    "slug": "sky-piercer"
  },
  "Hunter Strike": {
    "ru": "Удар охотника",
    "slug": "hunter-strike"
  },
  "Blade of Despair": {
    "ru": "Клинок отчаяния",
    "slug": "blade-of-desperation"
  },
  "War Axe": {
    "ru": "Боевой топор",
    "slug": "war-axe"
  },
  "Brute Force Breastplate": {
    "ru": "Кираса грубой силы",
    "slug": "brute-force-breastplate"
  },
  "Queen's Wings": {
    "ru": "Крылья королевы",
    "slug": "queens-wings"
  },
  "Dominance Ice": {
    "ru": "Лед господства",
    "slug": "dominance-ice"
  },
  "Thunder Belt": {
    "ru": "Громовой пояс",
    "slug": "thunder-belt"
  },
  "Antique Cuirass": {
    "ru": "Древняя кираса",
    "slug": "antique-cuirass"
  },
  "Athena's Shield": {
    "ru": "Щит Афины",
    "slug": "athenas-shield"
  },
  "Sea Halberd": {
    "ru": "Морская алебарда",
    "slug": "sea-halberd"
  }
} as Record<string, ItemInfo>;

export const heroes = [
  {
    "name": "Aamon",
    "roles": [
      "Jungle"
    ],
    "tier": "A",
    "meta": 86,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Akai",
    "roles": [
      "Roam",
      "Jungle"
    ],
    "tier": "B",
    "meta": 75,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Aldous",
    "roles": [
      "EXP"
    ],
    "tier": "C",
    "meta": 68,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Alice",
    "roles": [
      "EXP",
      "Jungle"
    ],
    "tier": "A",
    "meta": 84,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Alpha",
    "roles": [
      "EXP",
      "Jungle"
    ],
    "tier": "D",
    "meta": 58,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Alucard",
    "roles": [
      "Jungle",
      "EXP"
    ],
    "tier": "C",
    "meta": 68,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Angela",
    "roles": [
      "Roam"
    ],
    "tier": "S",
    "meta": 92,
    "counters": [
      "Harley",
      "Gusion",
      "Hayabusa"
    ],
    "weakInto": [
      "Diggie",
      "Luo Yi",
      "Baxia"
    ],
    "synergies": [
      "Julian",
      "Sora",
      "Fredrinn"
    ],
    "notes": "Усиливает темповых керри и спасает от взрывного урона."
  },
  {
    "name": "Argus",
    "roles": [
      "EXP"
    ],
    "tier": "B",
    "meta": 76,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Arlott",
    "roles": [
      "EXP",
      "Roam"
    ],
    "tier": "S",
    "meta": 90,
    "counters": [
      "Kimmy",
      "Granger",
      "Zhuxin",
      "Yve"
    ],
    "weakInto": [
      "Diggie",
      "Valir",
      "Minotaur"
    ],
    "synergies": [
      "Tigreal",
      "Minotaur",
      "Pharsa"
    ],
    "notes": "Нужен контроль в команде, тогда Арлотт раскрывается сильнее."
  },
  {
    "name": "Atlas",
    "roles": [
      "Roam"
    ],
    "tier": "A",
    "meta": 78,
    "counters": [
      "Kimmy",
      "Granger",
      "Karrie"
    ],
    "weakInto": [
      "Diggie",
      "Valir",
      "Minotaur"
    ],
    "synergies": [
      "Pharsa",
      "Yve",
      "Gusion"
    ],
    "notes": "Опасен против команд без очищения и разрыва дистанции."
  },
  {
    "name": "Aulus",
    "roles": [
      "Jungle",
      "EXP"
    ],
    "tier": "S",
    "meta": 88,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Aurora",
    "roles": [
      "Mid"
    ],
    "tier": "D",
    "meta": 60,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Badang",
    "roles": [
      "EXP"
    ],
    "tier": "B",
    "meta": 75,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Balmond",
    "roles": [
      "Jungle",
      "EXP"
    ],
    "tier": "D",
    "meta": 56,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Bane",
    "roles": [
      "EXP",
      "Mid"
    ],
    "tier": "C",
    "meta": 70,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Barats",
    "roles": [
      "Jungle",
      "EXP"
    ],
    "tier": "D",
    "meta": 62,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Baxia",
    "roles": [
      "Jungle",
      "Roam"
    ],
    "tier": "A",
    "meta": 81,
    "counters": [
      "Angela",
      "Floryn",
      "Uranus",
      "Gloo"
    ],
    "weakInto": [
      "Karrie",
      "Yve",
      "Pharsa"
    ],
    "synergies": [
      "Kimmy",
      "Zhuxin"
    ],
    "notes": "Срезает лечение и быстро начинает драки."
  },
  {
    "name": "Beatrix",
    "roles": [
      "Gold"
    ],
    "tier": "C",
    "meta": 70,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Belerick",
    "roles": [
      "Roam",
      "EXP"
    ],
    "tier": "A",
    "meta": 84,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Benedetta",
    "roles": [
      "EXP",
      "Jungle"
    ],
    "tier": "A",
    "meta": 82,
    "counters": [
      "Pharsa",
      "Yve",
      "Kimmy"
    ],
    "weakInto": [
      "Khufra",
      "Minsitthar",
      "Minotaur"
    ],
    "synergies": [
      "Angela",
      "Yve"
    ],
    "notes": "Мобильный EXP против тонкой задней линии."
  },
  {
    "name": "Brody",
    "roles": [
      "Gold"
    ],
    "tier": "B",
    "meta": 78,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Bruno",
    "roles": [
      "Gold"
    ],
    "tier": "D",
    "meta": 62,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Carmilla",
    "roles": [
      "Roam"
    ],
    "tier": "B",
    "meta": 78,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Cecilion",
    "roles": [
      "Mid"
    ],
    "tier": "C",
    "meta": 70,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Chang'e",
    "roles": [
      "Mid"
    ],
    "tier": "C",
    "meta": 68,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Chip",
    "roles": [
      "Roam"
    ],
    "tier": "D",
    "meta": 60,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Chou",
    "roles": [
      "EXP",
      "Roam"
    ],
    "tier": "D",
    "meta": 58,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Cici",
    "roles": [
      "EXP"
    ],
    "tier": "D",
    "meta": 60,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Claude",
    "roles": [
      "Gold"
    ],
    "tier": "C",
    "meta": 70,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Clint",
    "roles": [
      "Gold"
    ],
    "tier": "B",
    "meta": 78,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Cyclops",
    "roles": [
      "Mid"
    ],
    "tier": "B",
    "meta": 78,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Diggie",
    "roles": [
      "Roam"
    ],
    "tier": "S",
    "meta": 89,
    "counters": [
      "Tigreal",
      "Atlas",
      "Khufra",
      "Minotaur",
      "Arlott"
    ],
    "weakInto": [
      "Natalia",
      "Luo Yi",
      "Valentina"
    ],
    "synergies": [
      "Kimmy",
      "Karrie",
      "Yve"
    ],
    "notes": "Главный ответ на массовый контроль."
  },
  {
    "name": "Dyrroth",
    "roles": [
      "EXP",
      "Jungle"
    ],
    "tier": "C",
    "meta": 70,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Edith",
    "roles": [
      "EXP",
      "Roam"
    ],
    "tier": "C",
    "meta": 72,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Esmeralda",
    "roles": [
      "EXP",
      "Jungle"
    ],
    "tier": "D",
    "meta": 56,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Estes",
    "roles": [
      "Roam"
    ],
    "tier": "S",
    "meta": 90,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Eudora",
    "roles": [
      "Mid"
    ],
    "tier": "C",
    "meta": 68,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Fanny",
    "roles": [
      "Jungle"
    ],
    "tier": "A",
    "meta": 84,
    "counters": [
      "Pharsa",
      "Yve",
      "Kimmy"
    ],
    "weakInto": [
      "Khufra",
      "Saber",
      "Minotaur"
    ],
    "synergies": [
      "Angela",
      "Floryn"
    ],
    "notes": "Сильна, если у врага мало таргет-контроля."
  },
  {
    "name": "Faramis",
    "roles": [
      "Mid",
      "Roam"
    ],
    "tier": "D",
    "meta": 64,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Floryn",
    "roles": [
      "Roam"
    ],
    "tier": "S",
    "meta": 90,
    "counters": [
      "Harley",
      "Gusion",
      "Pharsa"
    ],
    "weakInto": [
      "Baxia",
      "Luo Yi",
      "Atlas"
    ],
    "synergies": [
      "Fredrinn",
      "Sora",
      "Karrie"
    ],
    "notes": "Стабильная поддержка для затяжных файтов."
  },
  {
    "name": "Franco",
    "roles": [
      "Roam"
    ],
    "tier": "D",
    "meta": 58,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Fredrinn",
    "roles": [
      "EXP",
      "Jungle"
    ],
    "tier": "S",
    "meta": 92,
    "counters": [
      "Hayabusa",
      "Gusion",
      "Harley",
      "Saber"
    ],
    "weakInto": [
      "Karrie",
      "Valir",
      "X.Borg"
    ],
    "synergies": [
      "Floryn",
      "Angela",
      "Yve"
    ],
    "notes": "Стабильный фронтлайн и ответ на ассасинов."
  },
  {
    "name": "Freya",
    "roles": [
      "EXP",
      "Jungle"
    ],
    "tier": "S",
    "meta": 90,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Gatotkaca",
    "roles": [
      "EXP",
      "Roam"
    ],
    "tier": "D",
    "meta": 60,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Gloo",
    "roles": [
      "EXP",
      "Roam"
    ],
    "tier": "S",
    "meta": 90,
    "counters": [
      "Hayabusa",
      "Gusion",
      "Harley",
      "Saber"
    ],
    "weakInto": [
      "Karrie",
      "Kimmy",
      "Valir",
      "Faramis"
    ],
    "synergies": [
      "Yve",
      "Pharsa",
      "Floryn"
    ],
    "notes": "Силен против героев, которым трудно выйти из контроля."
  },
  {
    "name": "Gord",
    "roles": [
      "Mid"
    ],
    "tier": "S",
    "meta": 90,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Granger",
    "roles": [
      "Gold",
      "Jungle"
    ],
    "tier": "S",
    "meta": 91,
    "counters": [
      "Uranus",
      "Gloo",
      "Fredrinn",
      "Pharsa"
    ],
    "weakInto": [
      "Lolita",
      "Arlott",
      "Hayabusa"
    ],
    "synergies": [
      "Minotaur",
      "Floryn"
    ],
    "notes": "Силен в раннем давлении и быстрых стычках."
  },
  {
    "name": "Grock",
    "roles": [
      "Roam",
      "EXP"
    ],
    "tier": "C",
    "meta": 68,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Guinevere",
    "roles": [
      "EXP"
    ],
    "tier": "S",
    "meta": 88,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Gusion",
    "roles": [
      "Jungle",
      "Mid"
    ],
    "tier": "S",
    "meta": 90,
    "counters": [
      "Kimmy",
      "Karrie",
      "Yve",
      "Floryn"
    ],
    "weakInto": [
      "Khufra",
      "Minotaur",
      "Diggie"
    ],
    "synergies": [
      "Angela",
      "Tigreal"
    ],
    "notes": "Работает, когда нужен взрывной магический урон."
  },
  {
    "name": "Hanabi",
    "roles": [
      "Gold"
    ],
    "tier": "S",
    "meta": 90,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Hanzo",
    "roles": [
      "Jungle"
    ],
    "tier": "B",
    "meta": 76,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Harith",
    "roles": [
      "Mid",
      "Gold"
    ],
    "tier": "B",
    "meta": 76,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Harley",
    "roles": [
      "Jungle",
      "Mid"
    ],
    "tier": "S",
    "meta": 91,
    "counters": [
      "Kimmy",
      "Karrie",
      "Pharsa",
      "Granger"
    ],
    "weakInto": [
      "Lolita",
      "Diggie",
      "Minotaur"
    ],
    "synergies": [
      "Gloo",
      "Uranus"
    ],
    "notes": "Пик для быстрого убийства керри до начала драки."
  },
  {
    "name": "Hayabusa",
    "roles": [
      "Jungle"
    ],
    "tier": "S",
    "meta": 94,
    "counters": [
      "Pharsa",
      "Yve",
      "Kimmy",
      "Karrie",
      "Zhuxin"
    ],
    "weakInto": [
      "Khufra",
      "Saber",
      "Diggie",
      "Minotaur"
    ],
    "synergies": [
      "Angela",
      "Floryn"
    ],
    "notes": "Хорош против разрозненного состава и слабой защиты задней линии."
  },
  {
    "name": "Helcurt",
    "roles": [
      "Jungle"
    ],
    "tier": "S",
    "meta": 88,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Hilda",
    "roles": [
      "EXP",
      "Roam"
    ],
    "tier": "S",
    "meta": 89,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Hylos",
    "roles": [
      "Roam"
    ],
    "tier": "C",
    "meta": 68,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Irithel",
    "roles": [
      "Gold"
    ],
    "tier": "B",
    "meta": 78,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Ixia",
    "roles": [
      "Gold"
    ],
    "tier": "B",
    "meta": 77,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Jawhead",
    "roles": [
      "EXP",
      "Roam"
    ],
    "tier": "D",
    "meta": 60,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Johnson",
    "roles": [
      "Roam"
    ],
    "tier": "B",
    "meta": 76,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Joy",
    "roles": [
      "Jungle",
      "EXP"
    ],
    "tier": "D",
    "meta": 62,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Julian",
    "roles": [
      "Jungle",
      "Mid"
    ],
    "tier": "S",
    "meta": 96,
    "counters": [
      "Kimmy",
      "Granger",
      "Pharsa",
      "Yve",
      "Angela"
    ],
    "weakInto": [
      "Kaja",
      "Khufra",
      "Minotaur"
    ],
    "synergies": [
      "Angela",
      "Diggie",
      "Minotaur"
    ],
    "notes": "Сильный темп, быстро наказывает тонких героев и мидов без сейва."
  },
  {
    "name": "Kadita",
    "roles": [
      "Mid",
      "Roam"
    ],
    "tier": "A",
    "meta": 84,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Kagura",
    "roles": [
      "Mid"
    ],
    "tier": "C",
    "meta": 70,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Kaja",
    "roles": [
      "Roam",
      "EXP"
    ],
    "tier": "A",
    "meta": 79,
    "counters": [
      "Sora",
      "Julian",
      "Hayabusa",
      "Gusion"
    ],
    "weakInto": [
      "Diggie",
      "Pharsa",
      "Yve"
    ],
    "synergies": [
      "Kimmy",
      "Granger"
    ],
    "notes": "Подходит, когда нужно гарантированно поймать одного героя."
  },
  {
    "name": "Kalea",
    "roles": [
      "Roam",
      "EXP"
    ],
    "tier": "D",
    "meta": 60,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Karina",
    "roles": [
      "Jungle"
    ],
    "tier": "D",
    "meta": 58,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Karrie",
    "roles": [
      "Gold"
    ],
    "tier": "S",
    "meta": 90,
    "counters": [
      "Uranus",
      "Gloo",
      "Fredrinn",
      "Minotaur"
    ],
    "weakInto": [
      "Hayabusa",
      "Harley",
      "Lolita"
    ],
    "synergies": [
      "Diggie",
      "Floryn",
      "Yve"
    ],
    "notes": "Лучший ответ, если враг собирает жирный фронтлайн."
  },
  {
    "name": "Khaleed",
    "roles": [
      "EXP"
    ],
    "tier": "B",
    "meta": 78,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Khufra",
    "roles": [
      "Roam"
    ],
    "tier": "A",
    "meta": 83,
    "counters": [
      "Hayabusa",
      "Gusion",
      "Fanny",
      "Benedetta",
      "Julian"
    ],
    "weakInto": [
      "Diggie",
      "Valir",
      "Karrie"
    ],
    "synergies": [
      "Pharsa",
      "Kimmy"
    ],
    "notes": "Ответ на мобильных ассасинов и рывки."
  },
  {
    "name": "Kimmy",
    "roles": [
      "Gold",
      "Mid"
    ],
    "tier": "S",
    "meta": 93,
    "counters": [
      "Uranus",
      "Gloo",
      "Fredrinn",
      "Minotaur"
    ],
    "weakInto": [
      "Lolita",
      "Hayabusa",
      "Julian",
      "Harley"
    ],
    "synergies": [
      "Angela",
      "Diggie",
      "Floryn"
    ],
    "notes": "Темповый flex-пик: может идти Gold или Mid против плотного фронта."
  },
  {
    "name": "Lancelot",
    "roles": [
      "Jungle"
    ],
    "tier": "D",
    "meta": 58,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Lapu-Lapu",
    "roles": [
      "EXP"
    ],
    "tier": "C",
    "meta": 68,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Layla",
    "roles": [
      "Gold"
    ],
    "tier": "C",
    "meta": 68,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Leomord",
    "roles": [
      "Jungle",
      "EXP"
    ],
    "tier": "A",
    "meta": 84,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Lesley",
    "roles": [
      "Gold"
    ],
    "tier": "C",
    "meta": 66,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Ling",
    "roles": [
      "Jungle"
    ],
    "tier": "A",
    "meta": 82,
    "counters": [
      "Pharsa",
      "Yve",
      "Kimmy"
    ],
    "weakInto": [
      "Khufra",
      "Saber",
      "Minotaur"
    ],
    "synergies": [
      "Angela",
      "Floryn"
    ],
    "notes": "Хорош для сплит-пуша и позднего темпа."
  },
  {
    "name": "Lolita",
    "roles": [
      "Roam"
    ],
    "tier": "A",
    "meta": 84,
    "counters": [
      "Kimmy",
      "Granger",
      "Karrie",
      "Harley"
    ],
    "weakInto": [
      "Diggie",
      "Valir",
      "Gloo"
    ],
    "synergies": [
      "Pharsa",
      "Granger"
    ],
    "notes": "Щит ломает много дальнего урона и снарядов."
  },
  {
    "name": "Lukas",
    "roles": [
      "EXP"
    ],
    "tier": "C",
    "meta": 70,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Lunox",
    "roles": [
      "Mid",
      "Gold"
    ],
    "tier": "D",
    "meta": 62,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Luo Yi",
    "roles": [
      "Mid"
    ],
    "tier": "D",
    "meta": 60,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Lylia",
    "roles": [
      "Mid"
    ],
    "tier": "C",
    "meta": 68,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Marcel",
    "roles": [
      "Roam"
    ],
    "tier": "S",
    "meta": 90,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Martis",
    "roles": [
      "Jungle",
      "EXP"
    ],
    "tier": "D",
    "meta": 60,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Masha",
    "roles": [
      "EXP"
    ],
    "tier": "A",
    "meta": 86,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Mathilda",
    "roles": [
      "Roam"
    ],
    "tier": "D",
    "meta": 58,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Melissa",
    "roles": [
      "Gold"
    ],
    "tier": "B",
    "meta": 78,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Minotaur",
    "roles": [
      "Roam"
    ],
    "tier": "S",
    "meta": 89,
    "counters": [
      "Hayabusa",
      "Gusion",
      "Julian",
      "Harley"
    ],
    "weakInto": [
      "Diggie",
      "Valir",
      "Karrie"
    ],
    "synergies": [
      "Pharsa",
      "Yve",
      "Granger"
    ],
    "notes": "Надежный инициализатор с лечением и контрвходом."
  },
  {
    "name": "Minsitthar",
    "roles": [
      "EXP",
      "Roam"
    ],
    "tier": "S",
    "meta": 89,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Miya",
    "roles": [
      "Gold"
    ],
    "tier": "A",
    "meta": 84,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Moskov",
    "roles": [
      "Gold"
    ],
    "tier": "B",
    "meta": 76,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Nana",
    "roles": [
      "Mid"
    ],
    "tier": "C",
    "meta": 68,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Natalia",
    "roles": [
      "Roam",
      "Jungle"
    ],
    "tier": "C",
    "meta": 70,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Natan",
    "roles": [
      "Gold",
      "Mid"
    ],
    "tier": "C",
    "meta": 70,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Nolan",
    "roles": [
      "Jungle"
    ],
    "tier": "D",
    "meta": 60,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Novaria",
    "roles": [
      "Mid"
    ],
    "tier": "C",
    "meta": 66,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Obsidia",
    "roles": [
      "Gold"
    ],
    "tier": "B",
    "meta": 77,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Odette",
    "roles": [
      "Mid"
    ],
    "tier": "B",
    "meta": 76,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Paquito",
    "roles": [
      "EXP",
      "Jungle"
    ],
    "tier": "D",
    "meta": 62,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Pharsa",
    "roles": [
      "Mid"
    ],
    "tier": "S",
    "meta": 91,
    "counters": [
      "Gloo",
      "Uranus",
      "Fredrinn",
      "Tigreal"
    ],
    "weakInto": [
      "Hayabusa",
      "Harley",
      "Julian"
    ],
    "synergies": [
      "Minotaur",
      "Arlott",
      "Fredrinn"
    ],
    "notes": "Хороша, когда нужен дальний урон до начала файта."
  },
  {
    "name": "Phoveus",
    "roles": [
      "EXP"
    ],
    "tier": "B",
    "meta": 76,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Popol and Kupa",
    "roles": [
      "Gold"
    ],
    "tier": "B",
    "meta": 78,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Rafaela",
    "roles": [
      "Roam"
    ],
    "tier": "B",
    "meta": 78,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Roger",
    "roles": [
      "Jungle",
      "Gold"
    ],
    "tier": "C",
    "meta": 70,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Ruby",
    "roles": [
      "EXP",
      "Roam"
    ],
    "tier": "B",
    "meta": 76,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Saber",
    "roles": [
      "Jungle",
      "Roam"
    ],
    "tier": "B",
    "meta": 72,
    "counters": [
      "Hayabusa",
      "Gusion",
      "Harley",
      "Pharsa"
    ],
    "weakInto": [
      "Diggie",
      "Gloo",
      "Fredrinn"
    ],
    "synergies": [
      "Angela",
      "Eudora"
    ],
    "notes": "Точечный ответ на одного опасного керри."
  },
  {
    "name": "Selena",
    "roles": [
      "Roam",
      "Mid"
    ],
    "tier": "C",
    "meta": 68,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Silvanna",
    "roles": [
      "EXP"
    ],
    "tier": "A",
    "meta": 84,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Sora",
    "roles": [
      "EXP"
    ],
    "tier": "S",
    "meta": 95,
    "counters": [
      "Uranus",
      "Gloo",
      "Karrie",
      "Granger"
    ],
    "weakInto": [
      "Phoveus",
      "Kaja",
      "Valir"
    ],
    "synergies": [
      "Angela",
      "Floryn",
      "Minotaur"
    ],
    "notes": "Сильный дуэлянт после четвертого уровня и хороший вход в драку."
  },
  {
    "name": "Sun",
    "roles": [
      "EXP"
    ],
    "tier": "S",
    "meta": 90,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Suyou",
    "roles": [
      "Jungle",
      "EXP"
    ],
    "tier": "S",
    "meta": 89,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Terizla",
    "roles": [
      "EXP"
    ],
    "tier": "A",
    "meta": 84,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Thamuz",
    "roles": [
      "EXP"
    ],
    "tier": "B",
    "meta": 76,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Tigreal",
    "roles": [
      "Roam"
    ],
    "tier": "A",
    "meta": 80,
    "counters": [
      "Kimmy",
      "Granger",
      "Pharsa"
    ],
    "weakInto": [
      "Diggie",
      "Valir",
      "Karrie"
    ],
    "synergies": [
      "Gusion",
      "Arlott",
      "Pharsa"
    ],
    "notes": "Пик для wombo-combo, если Diggie не мешает."
  },
  {
    "name": "Uranus",
    "roles": [
      "EXP",
      "Roam"
    ],
    "tier": "S",
    "meta": 91,
    "counters": [
      "Pharsa",
      "Yve",
      "Harley"
    ],
    "weakInto": [
      "Karrie",
      "Kimmy",
      "Valir"
    ],
    "synergies": [
      "Angela",
      "Yve"
    ],
    "notes": "Забирает пространство и заставляет врага тратить ресурсы."
  },
  {
    "name": "Vale",
    "roles": [
      "Mid",
      "Roam"
    ],
    "tier": "B",
    "meta": 76,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Valentina",
    "roles": [
      "Mid"
    ],
    "tier": "D",
    "meta": 58,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Valir",
    "roles": [
      "Mid",
      "Roam"
    ],
    "tier": "A",
    "meta": 82,
    "counters": [
      "Sora",
      "Gloo",
      "Uranus",
      "Arlott"
    ],
    "weakInto": [
      "Pharsa",
      "Hayabusa",
      "Harley"
    ],
    "synergies": [
      "Karrie",
      "Fredrinn"
    ],
    "notes": "Отталкивает фронтлайн и мешает заходить в ближний бой."
  },
  {
    "name": "Vexana",
    "roles": [
      "Mid"
    ],
    "tier": "B",
    "meta": 76,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Wanwan",
    "roles": [
      "Gold"
    ],
    "tier": "D",
    "meta": 62,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "X.Borg",
    "roles": [
      "EXP"
    ],
    "tier": "A",
    "meta": 80,
    "counters": [
      "Fredrinn",
      "Uranus",
      "Gloo",
      "Sora"
    ],
    "weakInto": [
      "Karrie",
      "Kimmy",
      "Pharsa"
    ],
    "synergies": [
      "Floryn",
      "Yve"
    ],
    "notes": "Затяжной урон против плотных героев."
  },
  {
    "name": "Xavier",
    "roles": [
      "Mid"
    ],
    "tier": "C",
    "meta": 68,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Yi Sun-shin",
    "roles": [
      "Jungle"
    ],
    "tier": "S",
    "meta": 93,
    "counters": [
      "Fanny",
      "Natalia",
      "Selena",
      "Harley"
    ],
    "weakInto": [
      "Lolita",
      "Khufra",
      "Fredrinn"
    ],
    "synergies": [
      "Minotaur",
      "Yve",
      "Angela"
    ],
    "notes": "Дает вижен и сильный тимфайт, особенно если команда играет от объектов."
  },
  {
    "name": "Yin",
    "roles": [
      "EXP",
      "Jungle"
    ],
    "tier": "C",
    "meta": 68,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Yu Zhong",
    "roles": [
      "EXP"
    ],
    "tier": "C",
    "meta": 70,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Yve",
    "roles": [
      "Mid"
    ],
    "tier": "S",
    "meta": 90,
    "counters": [
      "Gloo",
      "Uranus",
      "Fredrinn",
      "Minotaur"
    ],
    "weakInto": [
      "Hayabusa",
      "Gusion",
      "Harley"
    ],
    "synergies": [
      "Fredrinn",
      "Karrie",
      "Diggie"
    ],
    "notes": "Контроль территории вокруг лорда и черепахи."
  },
  {
    "name": "Zetian",
    "roles": [
      "Mid"
    ],
    "tier": "S",
    "meta": 90,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Zhask",
    "roles": [
      "Mid"
    ],
    "tier": "B",
    "meta": 78,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  },
  {
    "name": "Zhuxin",
    "roles": [
      "Mid"
    ],
    "tier": "S",
    "meta": 94,
    "counters": [
      "Gloo",
      "Uranus",
      "Fredrinn",
      "Minotaur"
    ],
    "weakInto": [
      "Hayabusa",
      "Julian",
      "Gusion"
    ],
    "synergies": [
      "Fredrinn",
      "Minotaur",
      "Karrie"
    ],
    "notes": "Давит зону и мешает плотным составам заходить в драку."
  },
  {
    "name": "Zilong",
    "roles": [
      "EXP",
      "Jungle"
    ],
    "tier": "D",
    "meta": 60,
    "counters": [],
    "weakInto": [],
    "synergies": [],
    "notes": "Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе."
  }
] as Hero[];

export const heroPortraits = {
  "Aamon": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_51ae6eb2b9d766791b1c60acb30d550f.jpg",
  "Akai": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_97d987784b17e25683dd6c914eb7be7f.jpg",
  "Aldous": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_24b9d1fdef5ed3b9a569c408df850233.jpg",
  "Alice": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_7135bd847a78dca0147e79c38666ba5b.jpg",
  "Alpha": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_cd0dfb56d9e1b111f5f8d6a2c80a7e46.jpg",
  "Alucard": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_723ce331bc58554e6f92079c9a54aea5.jpg",
  "Angela": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_de614a9c4390c722d08ff6c8902025d2.jpg",
  "Argus": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_6cbdd961024b54a89c8496d1c0920017.jpg",
  "Arlott": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_c860ff197fcb694b90c0b7b7beb8ddc0.jpg",
  "Atlas": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_92f134bd7485a1596b2e8d1c5d28da9e.jpg",
  "Aulus": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_4beb05b58c46e8c88d06e88a50cf67e2.jpg",
  "Aurora": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_4760ac03ef7df2f0a3f39c9a4b3a033b.jpg",
  "Badang": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_8e686dc295c2659b63909e87b54e966e.jpg",
  "Balmond": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_78258580fdcd4461a47331ddf0526bdd.jpg",
  "Bane": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_95b0637731ea94edbc6c4da5ed20d75c.jpg",
  "Barats": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_adbd4f14b53db6513f0481705ed8ee48.jpg",
  "Baxia": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_2fee69d1c7794406d68ad208bde45b95.jpg",
  "Beatrix": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_3ae0e1386765b20b92fce0757fda6083.jpg",
  "Belerick": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_8f60380e0242bd89dc298037d8b50dd4.jpg",
  "Benedetta": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_299a32ea6c9287501faff530532617b5.jpg",
  "Brody": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_59bbe13e82041e67c6b1797b8776a461.jpg",
  "Bruno": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_a58a8659284c9b852c5fa025638ab888.jpg",
  "Carmilla": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_e14d40da9b16a9c748844c25e4ac3668.jpg",
  "Cecilion": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_fe2bed368a4a7419ac558327b07d1b2b.jpg",
  "Chang'e": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_1a83b36d153da3b8ff250a33df0abf6c.jpg",
  "Chip": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_2d61834632c94c00344b2ae0e08354e2.jpg",
  "Chou": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_5a72a356046a7345112c52b79b7372e3.jpg",
  "Cici": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_d83b2e9d43ebc7247cba68643a411bd3.jpg",
  "Claude": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_2321faee1f32b66b4bfa82f1cd7ce129.jpg",
  "Clint": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_f7716a349ae9c5119841031df22210ed.jpg",
  "Cyclops": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_6675619c7a532f918d9f567834690d55.jpg",
  "Diggie": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_ceff756a410df7945a46a50a359bc428.jpg",
  "Dyrroth": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_7c963e904af6713c39623870a1fc7e71.jpg",
  "Edith": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_3bd6f7e58da50b63652d18cf083ac256.jpg",
  "Esmeralda": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_d0d6c9e217dcb7a191bc81bbcdd08ce2.jpg",
  "Estes": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_fc01c4db086cacb598108433aeaa1237.jpg",
  "Eudora": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_00844bbb210fe0884826629fb2ad5f27.jpg",
  "Fanny": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_d8f0442a59e3a585218223e57372ea8a.jpg",
  "Faramis": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_061a2f01346a777593c66b0f80fede0d.jpg",
  "Floryn": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_0f62ea30587c34b8855af43a801da156.jpg",
  "Franco": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_d02349fec3a4ebd4986743d32c95ca17.jpg",
  "Fredrinn": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_8fb05a9ade9e12e696c9e6b15991c0f3.jpg",
  "Freya": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_0059b3d4c9f5db098fa053074d27e7ec.jpg",
  "Gatotkaca": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_6554b94d8ee14d8eb24ad655c6ea9896.jpg",
  "Gloo": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_973cc7ce68b9e7b2a90a78e8ba7069b8.jpg",
  "Gord": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_014baf6366c6c635dca89c4b5878f1e0.jpg",
  "Granger": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_3342c4916fa8afc548bf6f5dc137ef26.jpg",
  "Grock": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_b1963659b31149ae0d4640ff2ad6a6cd.jpg",
  "Guinevere": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_a79d26deb05231749de96de6b5794e61.jpg",
  "Gusion": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_7bbbe61245a37a818b24e95d097a02f0.jpg",
  "Hanabi": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_85db6d25e366e6b97f1e37a6d5e96ea9.jpg",
  "Hanzo": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_79f053a70517e5544b93b0070bc7807d.jpg",
  "Harith": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_c0492b8461a173c5e22f141589716604.jpg",
  "Harley": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_262404fbd4d857939d88ef144f35aa27.jpg",
  "Hayabusa": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_41f3b77867e66780da9b5890dfb9964a.jpg",
  "Helcurt": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_65be14656935f49b259fdeaee092307a.jpg",
  "Hilda": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_566622b6b977fc85490d983169a83788.jpg",
  "Hylos": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_ce0d49d4803ed6c58a893d245a900c66.jpg",
  "Irithel": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_8bdf0e2f05d6e7849c06ca9386c15349.jpg",
  "Ixia": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_edfaa19ee9ec75545eb74e675886059c.jpg",
  "Jawhead": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_fb3df6d1b46ff9329745dab3bc2cd45b.jpg",
  "Johnson": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_0d351f0e1d4dbda112b53818afadadb8.jpg",
  "Joy": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_574083a409728dd6b47f89f9059932ac.jpg",
  "Julian": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_8359a497952c5215b70b47373e168cfe.jpg",
  "Kadita": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_b5bcc58bc3bd0462691c85c45a6c1cb1.jpg",
  "Kagura": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_1c0c51d1f28332cb1705ef28c49c90a9.jpg",
  "Kaja": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_10e88c83ee50f042543e6bf497285028.jpg",
  "Kalea": "https://akmweb.youngjoygame.com/web/svnres/img/mlbb/homepage_1_9_64/100_4f3d4649e301c76daf20bd8811f3095c.png",
  "Karina": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_e0e319c392191e1c089270ce257b9af8.jpg",
  "Karrie": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_f1814a99af8c860a5755b4b0ad911f80.jpg",
  "Khaleed": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_2c011296c9c9a46013034896c2898d52.jpg",
  "Khufra": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_571398f137ae470543b88b51beabb5b6.jpg",
  "Kimmy": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_b0488bd296b732c713092abb9feb427c.jpg",
  "Lancelot": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_09e352c183e12e34ea4c9ecce82c69be.jpg",
  "Lapu-Lapu": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_4c693b541abb917905cc6ca4c0bcb845.jpg",
  "Layla": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_995227993612d04468f763d6c66dcd1a.jpg",
  "Leomord": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_ad98bd699e43dda5b217ef39cd1ef260.jpg",
  "Lesley": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_5bbcf52dc317a3f64f8baabb577c00d0.jpg",
  "Ling": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_d83c16e9dc3f3b5bf619250518a34d81.jpg",
  "Lolita": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_c5c2d90810a4130242ae2aa5b5eb6257.jpg",
  "Lukas": "https://akmweb.youngjoygame.com/web/svnres/img/mlbb/homepage_1_9_20/100_63040edd0cf15b815fcbbb8b2d08d7f7.png",
  "Lunox": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_7b6102875702371070406f9bd0feb3f6.jpg",
  "Luo Yi": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_45ed52f05d2288e0c87ca858d7f66f23.jpg",
  "Lylia": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_781a08aa6bdfd386c6aab8261163217e.jpg",
  "Marcel": "https://akmweb.youngjoygame.com/web/svnres/img/mlbb/homepage_2_1_42/100_df7603c292198bf4aa7b551d401ea5c1.png",
  "Martis": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_024f6f2bf8e25d31120c28ded1fe98db.jpg",
  "Masha": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_cb32a0d6ed6e8fa174aab72e61d9e6da.jpg",
  "Mathilda": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_1592c36a17a9b513d8b12ddb16e33d8c.jpg",
  "Melissa": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_c1a541876dc0c0434e645592a402ff35.jpg",
  "Minotaur": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_7368c6c9a42821e902a96d9071d8a0e4.jpg",
  "Minsitthar": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_f05d35785d6a3f4ad0b93c3723e84de3.jpg",
  "Miya": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_7c5b221cf1f95a1f06da1b7b644adfec.jpg",
  "Moskov": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_4c2ea289662fc611c3e6838033b0048e.jpg",
  "Nana": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_4d1034219db5d3da420b941b4bb94ecc.jpg",
  "Natalia": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_2ad70b1e8501f7f7ef08e4e8951e19ec.jpg",
  "Natan": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_41f7572b10bc5aeb16fe39482f95b018.jpg",
  "Nolan": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_77ac5c8f1a48a10e7c1beb78ac862c2e.jpg",
  "Novaria": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_616ae60984f5efeb204c00dadf5930cc.jpg",
  "Obsidia": "https://akmweb.youngjoygame.com/web/svnres/img/mlbb/homepage_2_1_18/100_9c3daef5625bfade5c4cb8a219845dd3.png",
  "Odette": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_dfa2e7ae3f270b7641b43f9a9079c41b.jpg",
  "Paquito": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_02466a857c46760a78265713eab7e39c.jpg",
  "Pharsa": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_7104968f6a2006df3b593fb9dfb4fe1a.jpg",
  "Phoveus": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_250c4be7ee7b3d5d17248d9e7050fb15.jpg",
  "Popol and Kupa": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_4e209cd7493f719891e723627e91628b.jpg",
  "Rafaela": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_f5298620e2902c1c15fb11d5962486f2.jpg",
  "Roger": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_ef34009d11ca660530b70a55cb3af71b.jpg",
  "Ruby": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_48351f7507f74f98c8d2299b410fe2ff.jpg",
  "Saber": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_a34d4efbc83556361b484f5d3d6cd463.jpg",
  "Selena": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_c1eed4818def633691e406d12d51650c.jpg",
  "Silvanna": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_c996b205b5d35cab1a1e8bdb993a7606.jpg",
  "Sora": "https://akmweb.youngjoygame.com/web/svnres/img/mlbb/homepage_2_1_40/100_8143d7bbd4318d7c699908e808de885e.png",
  "Sun": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_52b71c17a0458bf33a91ac52dff6a71d.jpg",
  "Suyou": "https://akmweb.youngjoygame.com/web/svnres/img/mlbb/homepage_1_9_20/100_5e4ca70172332dde18bb1dc158ccc5c8.png",
  "Terizla": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_dabb8e730ac419d0c20cfe866797a610.jpg",
  "Thamuz": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_0451a9cbf5db0669ca787a7102fd7499.jpg",
  "Tigreal": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_a9d93ed3dd0d1385f25372eda0aa10e7.jpg",
  "Uranus": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_5304cfee29d52b0623adcce7062c6f9a.jpg",
  "Vale": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_a87514553259e474440f23055c229295.jpg",
  "Valentina": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_f171b947b9c40f0560f191147054facb.jpg",
  "Valir": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_4128d471ee828dad8fe9cf20bfe6a32e.jpg",
  "Vexana": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_68354f4ee2a8dfb79801cf122f1046d8.jpg",
  "Wanwan": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_4ef161612790082db12838fc04c86643.jpg",
  "X.Borg": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_3c95c664318bd2e9c61d8d7e15578ff5.jpg",
  "Xavier": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_08ccab74114f009b1f5993aedd1dd7a1.jpg",
  "Yi Sun-shin": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_891fc37964908684f554ca6a552c82e0.jpg",
  "Yin": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_a33bb8889533a8104dd3b84f5e89f5a5.jpg",
  "Yu Zhong": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_c751a6b50bf2c583747097430c575fc9.jpg",
  "Yve": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_58b166125e207a31bd2c8e57b3dc34d7.jpg",
  "Zetian": "https://akmweb.youngjoygame.com/web/svnres/img/mlbb/homepage_1_9_90/100_8d965f05f84621a51f799aeb8fb5f4c4.png",
  "Zhask": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_a9f6679fb8953d89ea1b53f6ad7ec4ba.jpg",
  "Zhuxin": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage_92/100_8b6a9cadd1c781a56ae68b2a1ebe8d8f.jpg",
  "Zilong": "https://akmweb.youngjoygame.com/web/svnres/file/mlbb/homepage/100_754c164566eda94a8086593d9af23f46.jpg"
} as Record<string, string>;

export const counterChart = {
  "Aamon": [
    "Saber",
    "Khufra",
    "Kaja",
    "Lolita",
    "Minotaur"
  ],
  "Akai": [
    "Valir",
    "Diggie",
    "Karrie",
    "Kimmy"
  ],
  "Aldous": [
    "Valir",
    "Kaja",
    "Diggie",
    "Gloo"
  ],
  "Alice": [
    "Baxia",
    "Karrie",
    "Valir",
    "Kimmy"
  ],
  "Alpha": [
    "Baxia",
    "Valir",
    "Karrie",
    "X.Borg"
  ],
  "Alucard": [
    "Khufra",
    "Kaja",
    "Valir",
    "Baxia"
  ],
  "Angela": [
    "Baxia",
    "Diggie",
    "Luo Yi",
    "Kaja"
  ],
  "Argus": [
    "Valir",
    "Kaja",
    "Khufra",
    "Minsitthar"
  ],
  "Arlott": [
    "Diggie",
    "Valir",
    "Minsitthar",
    "Khufra"
  ],
  "Atlas": [
    "Diggie",
    "Valir",
    "Minotaur",
    "Kaja"
  ],
  "Aulus": [
    "Valir",
    "Khufra",
    "Kaja",
    "Fredrinn"
  ],
  "Aurora": [
    "Lolita",
    "Diggie",
    "Hayabusa",
    "Lancelot"
  ],
  "Badang": [
    "Diggie",
    "Valir",
    "Khufra",
    "Minsitthar"
  ],
  "Balmond": [
    "Karrie",
    "Valir",
    "Baxia",
    "X.Borg"
  ],
  "Barats": [
    "Karrie",
    "Kimmy",
    "Valir",
    "Baxia"
  ],
  "Baxia": [
    "Karrie",
    "Yve",
    "Pharsa",
    "Valir"
  ],
  "Beatrix": [
    "Lolita",
    "Hayabusa",
    "Saber",
    "Harley"
  ],
  "Belerick": [
    "Karrie",
    "Kimmy",
    "Valir",
    "X.Borg"
  ],
  "Benedetta": [
    "Khufra",
    "Minsitthar",
    "Kaja",
    "Phoveus"
  ],
  "Brody": [
    "Lolita",
    "Hayabusa",
    "Saber",
    "Harley"
  ],
  "Bruno": [
    "Lolita",
    "Hayabusa",
    "Saber",
    "Harley"
  ],
  "Carmilla": [
    "Diggie",
    "Valir",
    "Baxia",
    "Kaja"
  ],
  "Cecilion": [
    "Hayabusa",
    "Lancelot",
    "Harley",
    "Julian"
  ],
  "Chang'e": [
    "Lolita",
    "Hayabusa",
    "Lancelot",
    "Natalia"
  ],
  "Chip": [
    "Diggie",
    "Valir",
    "Minotaur",
    "Kaja"
  ],
  "Chou": [
    "Diggie",
    "Valir",
    "Minsitthar",
    "Khufra"
  ],
  "Cici": [
    "Kaja",
    "Khufra",
    "Valir",
    "Phoveus"
  ],
  "Claude": [
    "Lolita",
    "Khufra",
    "Saber",
    "Kaja"
  ],
  "Clint": [
    "Lolita",
    "Hayabusa",
    "Saber",
    "Harley"
  ],
  "Cyclops": [
    "Lolita",
    "Hayabusa",
    "Harley",
    "Julian"
  ],
  "Diggie": [
    "Natalia",
    "Luo Yi",
    "Valentina",
    "Harley"
  ],
  "Dyrroth": [
    "Valir",
    "Khufra",
    "Kaja",
    "Minsitthar"
  ],
  "Edith": [
    "Karrie",
    "Valir",
    "Baxia",
    "Diggie"
  ],
  "Esmeralda": [
    "Baxia",
    "Karrie",
    "Valir",
    "Dyrroth"
  ],
  "Estes": [
    "Baxia",
    "Luo Yi",
    "Atlas",
    "Tigreal"
  ],
  "Eudora": [
    "Lolita",
    "Diggie",
    "Hayabusa",
    "Lancelot"
  ],
  "Fanny": [
    "Khufra",
    "Saber",
    "Kaja",
    "Minotaur"
  ],
  "Faramis": [
    "Baxia",
    "Luo Yi",
    "Kaja",
    "Valir"
  ],
  "Floryn": [
    "Baxia",
    "Luo Yi",
    "Atlas",
    "Tigreal"
  ],
  "Franco": [
    "Diggie",
    "Valir",
    "Minotaur",
    "Kaja"
  ],
  "Fredrinn": [
    "Karrie",
    "Valir",
    "X.Borg",
    "Kimmy"
  ],
  "Freya": [
    "Valir",
    "Kaja",
    "Khufra",
    "Minsitthar"
  ],
  "Gatotkaca": [
    "Karrie",
    "Valir",
    "Diggie",
    "Baxia"
  ],
  "Gloo": [
    "Faramis",
    "Valir",
    "Karrie",
    "Kimmy"
  ],
  "Gord": [
    "Lolita",
    "Hayabusa",
    "Lancelot",
    "Harley"
  ],
  "Granger": [
    "Lolita",
    "Hayabusa",
    "Arlott",
    "Khufra"
  ],
  "Grock": [
    "Karrie",
    "Valir",
    "Diggie",
    "Kimmy"
  ],
  "Guinevere": [
    "Diggie",
    "Valir",
    "Khufra",
    "Kaja"
  ],
  "Gusion": [
    "Khufra",
    "Saber",
    "Minotaur",
    "Diggie"
  ],
  "Hanabi": [
    "Lolita",
    "Hayabusa",
    "Harley",
    "Saber"
  ],
  "Hanzo": [
    "Natalia",
    "Ling",
    "Hayabusa",
    "Saber"
  ],
  "Harley": [
    "Lolita",
    "Diggie",
    "Minotaur",
    "Baxia"
  ],
  "Harith": [
    "Minsitthar",
    "Khufra",
    "Kaja",
    "Phoveus"
  ],
  "Hayabusa": [
    "Khufra",
    "Saber",
    "Kaja",
    "Minotaur"
  ],
  "Helcurt": [
    "Rafaela",
    "Diggie",
    "Khufra",
    "Kaja"
  ],
  "Hilda": [
    "Valir",
    "Karrie",
    "Baxia",
    "Kaja"
  ],
  "Hylos": [
    "Karrie",
    "Valir",
    "Baxia",
    "Kimmy"
  ],
  "Irithel": [
    "Lolita",
    "Hayabusa",
    "Saber",
    "Harley"
  ],
  "Ixia": [
    "Lolita",
    "Hayabusa",
    "Harley",
    "Saber"
  ],
  "Jawhead": [
    "Diggie",
    "Valir",
    "Kaja",
    "Khufra"
  ],
  "Johnson": [
    "Diggie",
    "Valir",
    "Minotaur",
    "Kaja"
  ],
  "Joy": [
    "Minsitthar",
    "Khufra",
    "Kaja",
    "Phoveus"
  ],
  "Julian": [
    "Kaja",
    "Khufra",
    "Minotaur",
    "Saber"
  ],
  "Kadita": [
    "Diggie",
    "Lolita",
    "Khufra",
    "Kaja"
  ],
  "Kagura": [
    "Lolita",
    "Hayabusa",
    "Harley",
    "Julian"
  ],
  "Karina": [
    "Khufra",
    "Kaja",
    "Saber",
    "Minotaur"
  ],
  "Karrie": [
    "Lolita",
    "Hayabusa",
    "Harley",
    "Saber"
  ],
  "Khaleed": [
    "Valir",
    "Kaja",
    "Baxia",
    "X.Borg"
  ],
  "Khufra": [
    "Diggie",
    "Valir",
    "Karrie",
    "Kimmy"
  ],
  "Kimmy": [
    "Lolita",
    "Hayabusa",
    "Julian",
    "Harley"
  ],
  "Lancelot": [
    "Khufra",
    "Kaja",
    "Saber",
    "Minotaur"
  ],
  "Lapu-Lapu": [
    "Valir",
    "Kaja",
    "Diggie",
    "X.Borg"
  ],
  "Layla": [
    "Lolita",
    "Hayabusa",
    "Harley",
    "Saber"
  ],
  "Leomord": [
    "Valir",
    "Kaja",
    "Khufra",
    "Minsitthar"
  ],
  "Lesley": [
    "Lolita",
    "Hayabusa",
    "Harley",
    "Saber"
  ],
  "Ling": [
    "Khufra",
    "Saber",
    "Kaja",
    "Minotaur"
  ],
  "Lolita": [
    "Diggie",
    "Valir",
    "Gloo",
    "Karrie"
  ],
  "Lunox": [
    "Lolita",
    "Hayabusa",
    "Harley",
    "Julian"
  ],
  "Luo Yi": [
    "Hayabusa",
    "Lancelot",
    "Harley",
    "Lolita"
  ],
  "Lylia": [
    "Lolita",
    "Hayabusa",
    "Harley",
    "Julian"
  ],
  "Martis": [
    "Valir",
    "Kaja",
    "Khufra",
    "Minsitthar"
  ],
  "Masha": [
    "Valir",
    "Kaja",
    "Karrie",
    "Baxia"
  ],
  "Mathilda": [
    "Khufra",
    "Minsitthar",
    "Kaja",
    "Phoveus"
  ],
  "Melissa": [
    "Lolita",
    "Hayabusa",
    "Harley",
    "Saber"
  ],
  "Minotaur": [
    "Diggie",
    "Valir",
    "Karrie",
    "Baxia"
  ],
  "Minsitthar": [
    "Valir",
    "Diggie",
    "Karrie",
    "Pharsa"
  ],
  "Miya": [
    "Lolita",
    "Hayabusa",
    "Harley",
    "Saber"
  ],
  "Moskov": [
    "Lolita",
    "Hayabusa",
    "Harley",
    "Saber"
  ],
  "Nana": [
    "Lolita",
    "Hayabusa",
    "Harley",
    "Julian"
  ],
  "Natalia": [
    "Rafaela",
    "Hylos",
    "Diggie",
    "Saber"
  ],
  "Natan": [
    "Lolita",
    "Hayabusa",
    "Harley",
    "Saber"
  ],
  "Nolan": [
    "Khufra",
    "Kaja",
    "Minsitthar",
    "Phoveus"
  ],
  "Novaria": [
    "Lolita",
    "Hayabusa",
    "Harley",
    "Natalia"
  ],
  "Odette": [
    "Diggie",
    "Kadita",
    "Chou",
    "Valir"
  ],
  "Paquito": [
    "Khufra",
    "Kaja",
    "Minsitthar",
    "Valir"
  ],
  "Pharsa": [
    "Hayabusa",
    "Harley",
    "Julian",
    "Lancelot"
  ],
  "Phoveus": [
    "Valir",
    "Karrie",
    "Kimmy",
    "X.Borg"
  ],
  "Popol and Kupa": [
    "Lolita",
    "Hayabusa",
    "Harley",
    "Saber"
  ],
  "Rafaela": [
    "Baxia",
    "Luo Yi",
    "Atlas",
    "Natalia"
  ],
  "Roger": [
    "Khufra",
    "Kaja",
    "Valir",
    "Saber"
  ],
  "Ruby": [
    "Baxia",
    "Valir",
    "Karrie",
    "Diggie"
  ],
  "Saber": [
    "Diggie",
    "Gloo",
    "Fredrinn",
    "Minotaur"
  ],
  "Selena": [
    "Lolita",
    "Diggie",
    "Natalia",
    "Hylos"
  ],
  "Silvanna": [
    "Diggie",
    "Valir",
    "Kaja",
    "Khufra"
  ],
  "Sora": [
    "Phoveus",
    "Kaja",
    "Valir",
    "Khufra"
  ],
  "Sun": [
    "X.Borg",
    "Belerick",
    "Valir",
    "Gloo"
  ],
  "Suyou": [
    "Khufra",
    "Kaja",
    "Minsitthar",
    "Phoveus"
  ],
  "Terizla": [
    "Valir",
    "Karrie",
    "Baxia",
    "Diggie"
  ],
  "Thamuz": [
    "Valir",
    "Karrie",
    "Baxia",
    "X.Borg"
  ],
  "Tigreal": [
    "Diggie",
    "Valir",
    "Karrie",
    "Minotaur"
  ],
  "Uranus": [
    "Karrie",
    "Kimmy",
    "Baxia",
    "Valir"
  ],
  "Vale": [
    "Lolita",
    "Hayabusa",
    "Harley",
    "Julian"
  ],
  "Valentina": [
    "Hayabusa",
    "Harley",
    "Julian",
    "Lolita"
  ],
  "Valir": [
    "Pharsa",
    "Hayabusa",
    "Harley",
    "Lancelot"
  ],
  "Vexana": [
    "Lolita",
    "Hayabusa",
    "Harley",
    "Julian"
  ],
  "Wanwan": [
    "Khufra",
    "Minsitthar",
    "Kaja",
    "Saber"
  ],
  "Xavier": [
    "Lolita",
    "Hayabusa",
    "Harley",
    "Julian"
  ],
  "X.Borg": [
    "Karrie",
    "Kimmy",
    "Baxia",
    "Valir"
  ],
  "Yin": [
    "Diggie",
    "Valir",
    "Kaja",
    "Khufra"
  ],
  "Yi Sun-shin": [
    "Lolita",
    "Khufra",
    "Fredrinn",
    "Natalia"
  ],
  "Yu Zhong": [
    "Valir",
    "Kaja",
    "Baxia",
    "X.Borg"
  ],
  "Zhask": [
    "Lolita",
    "Hayabusa",
    "Harley",
    "Julian"
  ],
  "Zhuxin": [
    "Hayabusa",
    "Julian",
    "Gusion",
    "Harley"
  ],
  "Zilong": [
    "Khufra",
    "Kaja",
    "Minsitthar",
    "Valir"
  ]
} as Record<string, string[]>;

