-- Generated from frontend data. Re-run after changing lib/mlbb-data.ts or lib/pro-meta.ts.
-- Usage: Supabase Dashboard -> SQL Editor -> paste this file -> Run.
begin;

truncate table community_votes, pro_build_items, pro_builds, matchups, hero_meta, items, heroes, patches restart identity cascade;

insert into patches (version, title, released_at, is_active) values ('2026.05.07.06', 'MLBB Draft Helper 2026.05.07.06', '2026-05-07', true);

-- Items
insert into items (slug, name_en, name_ru, image_path, tags) values ('swift-boots', 'Swift Boots', 'Сапоги скорости', '/assets/items/swift-boots.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('tough-boots', 'Tough Boots', 'Стойкие сапоги', '/assets/items/tough-boots.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('warrior-boots', 'Warrior Boots', 'Сапоги воина', '/assets/items/warrior-boots.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('arcane-boots', 'Arcane Boots', 'Магические сапоги', '/assets/items/arcane-boots.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('bloodlust-axe', 'Bloodlust Axe', 'Топор кровожадности', '/assets/items/bloodlust-axe.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('corrosion-scythe', 'Corrosion Scythe', 'Коррозийная коса', '/assets/items/corrosion-scythe.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('demon-hunter-sword', 'Demon Hunter Sword', 'Меч охотника на демонов', '/assets/items/demon-hunter-sword.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('golden-staff', 'Golden Staff', 'Золотой посох', '/assets/items/golden-staff.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('malefic-roar', 'Malefic Roar', 'Злобный рык', '/assets/items/malefic-roar.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('immortality', 'Immortality', 'Бессмертие', '/assets/items/immortality.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('oracle', 'Oracle', 'Оракул', '/assets/items/oracle.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('radiant-armor', 'Radiant Armor', 'Сияющая броня', '/assets/items/radiant-armor.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('rose-gold-meteor', 'Rose Gold Meteor', 'Метеор розового золота', '/assets/items/rose-gold-meteor.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('wind-of-nature', 'Wind of Nature', 'Ветер природы', '/assets/items/wind-of-nature.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('windtalker', 'Windtalker', 'Говорящий с ветром', '/assets/items/windtalker.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('berserkers-fury', 'Berserker''s Fury', 'Ярость берсерка', '/assets/items/berserkers-fury.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('haass-claws', 'Haas''s Claws', 'Когти Хааса', '/assets/items/haass-claws.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('endless-battle', 'Endless Battle', 'Бесконечная битва', '/assets/items/endless-battle.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('blade-of-the-heptaseas', 'Blade of the Heptaseas', 'Клинок семи морей', '/assets/items/blade-of-the-heptaseas.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('ice-queen-wand', 'Ice Queen Wand', 'Жезл ледяной королевы', '/assets/items/ice-queen-wand.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('holy-crystal', 'Holy Crystal', 'Святой кристалл', '/assets/items/holy-crystal.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('genius-wand', 'Genius Wand', 'Гениальный жезл', '/assets/items/genius-wand.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('lightning-truncheon', 'Lightning Truncheon', 'Молниеносный жезл', '/assets/items/lightning-truncheon.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('clock-of-destiny', 'Clock of Destiny', 'Часы судьбы', '/assets/items/clock-of-destiny.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('concentrated-energy', 'Concentrated Energy', 'Концентрированная энергия', '/assets/items/concentrated-energy.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('demon-shoes', 'Demon Shoes', 'Демонические ботинки', '/assets/items/demon-shoes.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('flask-of-the-oasis', 'Flask of the Oasis', 'Фляга оазиса', '/assets/items/flask-of-the-oasis.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('fleeting-time', 'Fleeting Time', 'Мимолетное время', '/assets/items/fleeting-time.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('necklace-of-durance', 'Necklace of Durance', 'Ожерелье заточения', '/assets/items/necklace-of-durance.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('enchanted-talisman', 'Enchanted Talisman', 'Зачарованный талисман', '/assets/items/enchanted-talisman.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('glowing-wand', 'Glowing Wand', 'Пылающий жезл', '/assets/items/glowing-wand.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('wishing-lantern', 'Wishing Lantern', 'Фонарь желаний', '/assets/items/wishing-lantern.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('divine-glaive', 'Divine Glaive', 'Божественный меч', '/assets/items/divine-glaive.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('winter-crown', 'Winter Crown', 'Р—РёРјРЅСЏСЏ РєРѕСЂРѕРЅР°', '/assets/items/winter-crown.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('sky-piercer', 'Sky Piercer', 'Небесный пронзатель', '/assets/items/sky-piercer.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('hunter-strike', 'Hunter Strike', 'Удар охотника', '/assets/items/hunter-strike.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('blade-of-desperation', 'Blade of Despair', 'Клинок отчаяния', '/assets/items/blade-of-desperation.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('war-axe', 'War Axe', 'Боевой топор', '/assets/items/war-axe.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('brute-force-breastplate', 'Brute Force Breastplate', 'Кираса грубой силы', '/assets/items/brute-force-breastplate.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('queens-wings', 'Queen''s Wings', 'Крылья королевы', '/assets/items/queens-wings.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('dominance-ice', 'Dominance Ice', 'Лед господства', '/assets/items/dominance-ice.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('thunder-belt', 'Thunder Belt', 'Громовой пояс', '/assets/items/thunder-belt.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('antique-cuirass', 'Antique Cuirass', 'Древняя кираса', '/assets/items/antique-cuirass.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('athenas-shield', 'Athena''s Shield', 'Щит Афины', '/assets/items/athenas-shield.png', array[]::text[]);
insert into items (slug, name_en, name_ru, image_path, tags) values ('sea-halberd', 'Sea Halberd', 'Морская алебарда', '/assets/items/sea-halberd.png', array[]::text[]);

-- Heroes
insert into heroes (slug, name, roles, avatar_path) values ('aamon', 'Aamon', array['Jungle'], '/assets/heroes/aamon.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('akai', 'Akai', array['Roam', 'Jungle'], '/assets/heroes/akai.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('aldous', 'Aldous', array['EXP'], '/assets/heroes/aldous.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('alice', 'Alice', array['EXP', 'Jungle'], '/assets/heroes/alice.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('alpha', 'Alpha', array['EXP', 'Jungle'], '/assets/heroes/alpha.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('alucard', 'Alucard', array['Jungle', 'EXP'], '/assets/heroes/alucard.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('angela', 'Angela', array['Roam'], '/assets/heroes/angela.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('argus', 'Argus', array['EXP'], '/assets/heroes/argus.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('arlott', 'Arlott', array['EXP', 'Roam'], '/assets/heroes/arlott.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('atlas', 'Atlas', array['Roam'], '/assets/heroes/atlas.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('aulus', 'Aulus', array['Jungle', 'EXP'], '/assets/heroes/aulus.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('aurora', 'Aurora', array['Mid'], '/assets/heroes/aurora.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('badang', 'Badang', array['EXP'], '/assets/heroes/badang.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('balmond', 'Balmond', array['Jungle', 'EXP'], '/assets/heroes/balmond.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('bane', 'Bane', array['EXP', 'Mid'], '/assets/heroes/bane.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('barats', 'Barats', array['Jungle', 'EXP'], '/assets/heroes/barats.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('baxia', 'Baxia', array['Jungle', 'Roam'], '/assets/heroes/baxia.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('beatrix', 'Beatrix', array['Gold'], '/assets/heroes/beatrix.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('belerick', 'Belerick', array['Roam', 'EXP'], '/assets/heroes/belerick.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('benedetta', 'Benedetta', array['EXP', 'Jungle'], '/assets/heroes/benedetta.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('brody', 'Brody', array['Gold'], '/assets/heroes/brody.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('bruno', 'Bruno', array['Gold'], '/assets/heroes/bruno.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('carmilla', 'Carmilla', array['Roam'], '/assets/heroes/carmilla.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('cecilion', 'Cecilion', array['Mid'], '/assets/heroes/cecilion.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('chang-e', 'Chang''e', array['Mid'], '/assets/heroes/chang-e.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('chip', 'Chip', array['Roam'], '/assets/heroes/chip.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('chou', 'Chou', array['EXP', 'Roam'], '/assets/heroes/chou.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('cici', 'Cici', array['EXP'], '/assets/heroes/cici.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('claude', 'Claude', array['Gold'], '/assets/heroes/claude.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('clint', 'Clint', array['Gold'], '/assets/heroes/clint.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('cyclops', 'Cyclops', array['Mid'], '/assets/heroes/cyclops.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('diggie', 'Diggie', array['Roam'], '/assets/heroes/diggie.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('dyrroth', 'Dyrroth', array['EXP', 'Jungle'], '/assets/heroes/dyrroth.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('edith', 'Edith', array['EXP', 'Roam'], '/assets/heroes/edith.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('esmeralda', 'Esmeralda', array['EXP', 'Jungle'], '/assets/heroes/esmeralda.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('estes', 'Estes', array['Roam'], '/assets/heroes/estes.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('eudora', 'Eudora', array['Mid'], '/assets/heroes/eudora.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('fanny', 'Fanny', array['Jungle'], '/assets/heroes/fanny.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('faramis', 'Faramis', array['Mid', 'Roam'], '/assets/heroes/faramis.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('floryn', 'Floryn', array['Roam'], '/assets/heroes/floryn.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('franco', 'Franco', array['Roam'], '/assets/heroes/franco.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('fredrinn', 'Fredrinn', array['EXP', 'Jungle'], '/assets/heroes/fredrinn.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('freya', 'Freya', array['EXP', 'Jungle'], '/assets/heroes/freya.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('gatotkaca', 'Gatotkaca', array['EXP', 'Roam'], '/assets/heroes/gatotkaca.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('gloo', 'Gloo', array['EXP', 'Roam'], '/assets/heroes/gloo.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('gord', 'Gord', array['Mid'], '/assets/heroes/gord.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('granger', 'Granger', array['Gold', 'Jungle'], '/assets/heroes/granger.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('grock', 'Grock', array['Roam', 'EXP'], '/assets/heroes/grock.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('guinevere', 'Guinevere', array['EXP'], '/assets/heroes/guinevere.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('gusion', 'Gusion', array['Jungle', 'Mid'], '/assets/heroes/gusion.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('hanabi', 'Hanabi', array['Gold'], '/assets/heroes/hanabi.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('hanzo', 'Hanzo', array['Jungle'], '/assets/heroes/hanzo.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('harith', 'Harith', array['Mid', 'Gold'], '/assets/heroes/harith.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('harley', 'Harley', array['Jungle', 'Mid'], '/assets/heroes/harley.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('hayabusa', 'Hayabusa', array['Jungle'], '/assets/heroes/hayabusa.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('helcurt', 'Helcurt', array['Jungle'], '/assets/heroes/helcurt.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('hilda', 'Hilda', array['EXP', 'Roam'], '/assets/heroes/hilda.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('hylos', 'Hylos', array['Roam'], '/assets/heroes/hylos.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('irithel', 'Irithel', array['Gold'], '/assets/heroes/irithel.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('ixia', 'Ixia', array['Gold'], '/assets/heroes/ixia.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('jawhead', 'Jawhead', array['EXP', 'Roam'], '/assets/heroes/jawhead.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('johnson', 'Johnson', array['Roam'], '/assets/heroes/johnson.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('joy', 'Joy', array['Jungle', 'EXP'], '/assets/heroes/joy.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('julian', 'Julian', array['Jungle', 'Mid'], '/assets/heroes/julian.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('kadita', 'Kadita', array['Mid', 'Roam'], '/assets/heroes/kadita.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('kagura', 'Kagura', array['Mid'], '/assets/heroes/kagura.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('kaja', 'Kaja', array['Roam', 'EXP'], '/assets/heroes/kaja.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('kalea', 'Kalea', array['Roam', 'EXP'], '/assets/heroes/kalea.png');
insert into heroes (slug, name, roles, avatar_path) values ('karina', 'Karina', array['Jungle'], '/assets/heroes/karina.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('karrie', 'Karrie', array['Gold'], '/assets/heroes/karrie.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('khaleed', 'Khaleed', array['EXP'], '/assets/heroes/khaleed.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('khufra', 'Khufra', array['Roam'], '/assets/heroes/khufra.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('kimmy', 'Kimmy', array['Gold', 'Mid'], '/assets/heroes/kimmy.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('lancelot', 'Lancelot', array['Jungle'], '/assets/heroes/lancelot.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('lapu-lapu', 'Lapu-Lapu', array['EXP'], '/assets/heroes/lapu-lapu.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('layla', 'Layla', array['Gold'], '/assets/heroes/layla.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('leomord', 'Leomord', array['Jungle', 'EXP'], '/assets/heroes/leomord.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('lesley', 'Lesley', array['Gold'], '/assets/heroes/lesley.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('ling', 'Ling', array['Jungle'], '/assets/heroes/ling.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('lolita', 'Lolita', array['Roam'], '/assets/heroes/lolita.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('lukas', 'Lukas', array['EXP'], '/assets/heroes/lukas.png');
insert into heroes (slug, name, roles, avatar_path) values ('lunox', 'Lunox', array['Mid', 'Gold'], '/assets/heroes/lunox.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('luo-yi', 'Luo Yi', array['Mid'], '/assets/heroes/luo-yi.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('lylia', 'Lylia', array['Mid'], '/assets/heroes/lylia.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('marcel', 'Marcel', array['Roam'], '/assets/heroes/marcel.png');
insert into heroes (slug, name, roles, avatar_path) values ('martis', 'Martis', array['Jungle', 'EXP'], '/assets/heroes/martis.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('masha', 'Masha', array['EXP'], '/assets/heroes/masha.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('mathilda', 'Mathilda', array['Roam'], '/assets/heroes/mathilda.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('melissa', 'Melissa', array['Gold'], '/assets/heroes/melissa.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('minotaur', 'Minotaur', array['Roam'], '/assets/heroes/minotaur.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('minsitthar', 'Minsitthar', array['EXP', 'Roam'], '/assets/heroes/minsitthar.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('miya', 'Miya', array['Gold'], '/assets/heroes/miya.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('moskov', 'Moskov', array['Gold'], '/assets/heroes/moskov.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('nana', 'Nana', array['Mid'], '/assets/heroes/nana.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('natalia', 'Natalia', array['Roam', 'Jungle'], '/assets/heroes/natalia.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('natan', 'Natan', array['Gold', 'Mid'], '/assets/heroes/natan.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('nolan', 'Nolan', array['Jungle'], '/assets/heroes/nolan.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('novaria', 'Novaria', array['Mid'], '/assets/heroes/novaria.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('obsidia', 'Obsidia', array['Gold'], '/assets/heroes/obsidia.png');
insert into heroes (slug, name, roles, avatar_path) values ('odette', 'Odette', array['Mid'], '/assets/heroes/odette.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('paquito', 'Paquito', array['EXP', 'Jungle'], '/assets/heroes/paquito.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('pharsa', 'Pharsa', array['Mid'], '/assets/heroes/pharsa.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('phoveus', 'Phoveus', array['EXP'], '/assets/heroes/phoveus.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('popol-and-kupa', 'Popol and Kupa', array['Gold'], '/assets/heroes/popol-and-kupa.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('rafaela', 'Rafaela', array['Roam'], '/assets/heroes/rafaela.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('roger', 'Roger', array['Jungle', 'Gold'], '/assets/heroes/roger.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('ruby', 'Ruby', array['EXP', 'Roam'], '/assets/heroes/ruby.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('saber', 'Saber', array['Jungle', 'Roam'], '/assets/heroes/saber.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('selena', 'Selena', array['Roam', 'Mid'], '/assets/heroes/selena.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('silvanna', 'Silvanna', array['EXP'], '/assets/heroes/silvanna.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('sora', 'Sora', array['EXP'], '/assets/heroes/sora.png');
insert into heroes (slug, name, roles, avatar_path) values ('sun', 'Sun', array['EXP'], '/assets/heroes/sun.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('suyou', 'Suyou', array['Jungle', 'EXP'], '/assets/heroes/suyou.png');
insert into heroes (slug, name, roles, avatar_path) values ('terizla', 'Terizla', array['EXP'], '/assets/heroes/terizla.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('thamuz', 'Thamuz', array['EXP'], '/assets/heroes/thamuz.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('tigreal', 'Tigreal', array['Roam'], '/assets/heroes/tigreal.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('uranus', 'Uranus', array['EXP', 'Roam'], '/assets/heroes/uranus.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('vale', 'Vale', array['Mid', 'Roam'], '/assets/heroes/vale.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('valentina', 'Valentina', array['Mid'], '/assets/heroes/valentina.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('valir', 'Valir', array['Mid', 'Roam'], '/assets/heroes/valir.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('vexana', 'Vexana', array['Mid'], '/assets/heroes/vexana.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('wanwan', 'Wanwan', array['Gold'], '/assets/heroes/wanwan.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('xborg', 'X.Borg', array['EXP'], '/assets/heroes/xborg.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('xavier', 'Xavier', array['Mid'], '/assets/heroes/xavier.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('yi-sun-shin', 'Yi Sun-shin', array['Jungle'], '/assets/heroes/yi-sun-shin.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('yin', 'Yin', array['EXP', 'Jungle'], '/assets/heroes/yin.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('yu-zhong', 'Yu Zhong', array['EXP'], '/assets/heroes/yu-zhong.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('yve', 'Yve', array['Mid'], '/assets/heroes/yve.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('zetian', 'Zetian', array['Mid'], '/assets/heroes/zetian.png');
insert into heroes (slug, name, roles, avatar_path) values ('zhask', 'Zhask', array['Mid'], '/assets/heroes/zhask.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('zhuxin', 'Zhuxin', array['Mid'], '/assets/heroes/zhuxin.jpg');
insert into heroes (slug, name, roles, avatar_path) values ('zilong', 'Zilong', array['EXP', 'Jungle'], '/assets/heroes/zilong.jpg');

-- Local hero meta
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'A', 86, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Aamon' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'B', 75, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Akai' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'C', 68, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Aldous' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'A', 84, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Alice' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'D', 58, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Alpha' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'C', 68, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Alucard' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'S', 92, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Усиливает темповых керри и спасает от взрывного урона.' from heroes h cross join patches p where h.name = 'Angela' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'B', 76, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Argus' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'S', 90, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Нужен контроль в команде, тогда Арлотт раскрывается сильнее.' from heroes h cross join patches p where h.name = 'Arlott' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'A', 78, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Опасен против команд без очищения и разрыва дистанции.' from heroes h cross join patches p where h.name = 'Atlas' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'S', 88, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Aulus' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'D', 60, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Aurora' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'B', 75, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Badang' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'D', 56, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Balmond' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'C', 70, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Bane' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'D', 62, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Barats' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'A', 81, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Срезает лечение и быстро начинает драки.' from heroes h cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'C', 70, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Beatrix' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'A', 84, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Belerick' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'A', 82, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Мобильный EXP против тонкой задней линии.' from heroes h cross join patches p where h.name = 'Benedetta' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'B', 78, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Brody' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'D', 62, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Bruno' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'B', 78, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Carmilla' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'C', 70, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Cecilion' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'C', 68, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Chang''e' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'D', 60, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Chip' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'D', 58, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Chou' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'D', 60, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Cici' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'C', 70, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Claude' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'B', 78, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Clint' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'B', 78, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Cyclops' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'S', 89, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Главный ответ на массовый контроль.' from heroes h cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'C', 70, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Dyrroth' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'C', 72, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Edith' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'D', 56, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Esmeralda' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'S', 90, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Estes' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'C', 68, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Eudora' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'A', 84, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Сильна, если у врага мало таргет-контроля.' from heroes h cross join patches p where h.name = 'Fanny' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'D', 64, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Faramis' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'S', 90, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Стабильная поддержка для затяжных файтов.' from heroes h cross join patches p where h.name = 'Floryn' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'D', 58, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Franco' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'S', 92, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Стабильный фронтлайн и ответ на ассасинов.' from heroes h cross join patches p where h.name = 'Fredrinn' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'S', 90, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Freya' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'D', 60, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Gatotkaca' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'S', 90, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Силен против героев, которым трудно выйти из контроля.' from heroes h cross join patches p where h.name = 'Gloo' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'S', 90, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Gord' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'S', 91, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Силен в раннем давлении и быстрых стычках.' from heroes h cross join patches p where h.name = 'Granger' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'C', 68, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Grock' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'S', 88, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Guinevere' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'S', 90, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Работает, когда нужен взрывной магический урон.' from heroes h cross join patches p where h.name = 'Gusion' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'S', 90, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Hanabi' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'B', 76, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Hanzo' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'B', 76, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Harith' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'S', 91, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Пик для быстрого убийства керри до начала драки.' from heroes h cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'S', 94, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Хорош против разрозненного состава и слабой защиты задней линии.' from heroes h cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'S', 88, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Helcurt' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'S', 89, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Hilda' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'C', 68, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Hylos' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'B', 78, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Irithel' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'B', 77, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Ixia' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'D', 60, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Jawhead' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'B', 76, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Johnson' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'D', 62, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Joy' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'S', 96, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Сильный темп, быстро наказывает тонких героев и мидов без сейва.' from heroes h cross join patches p where h.name = 'Julian' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'A', 84, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Kadita' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'C', 70, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Kagura' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'A', 79, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Подходит, когда нужно гарантированно поймать одного героя.' from heroes h cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'D', 60, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Kalea' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'D', 58, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Karina' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'S', 90, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Лучший ответ, если враг собирает жирный фронтлайн.' from heroes h cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'B', 78, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Khaleed' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'A', 83, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Ответ на мобильных ассасинов и рывки.' from heroes h cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'S', 93, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Темповый flex-пик: может идти Gold или Mid против плотного фронта.' from heroes h cross join patches p where h.name = 'Kimmy' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'D', 58, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Lancelot' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'C', 68, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Lapu-Lapu' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'C', 68, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Layla' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'A', 84, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Leomord' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'C', 66, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Lesley' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'A', 82, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Хорош для сплит-пуша и позднего темпа.' from heroes h cross join patches p where h.name = 'Ling' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'A', 84, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Щит ломает много дальнего урона и снарядов.' from heroes h cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'C', 70, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Lukas' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'D', 62, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Lunox' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'D', 60, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Luo Yi' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'C', 68, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Lylia' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'S', 90, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Marcel' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'D', 60, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Martis' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'A', 86, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Masha' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'D', 58, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Mathilda' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'B', 78, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Melissa' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'S', 89, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Надежный инициализатор с лечением и контрвходом.' from heroes h cross join patches p where h.name = 'Minotaur' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'S', 89, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Minsitthar' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'A', 84, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Miya' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'B', 76, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Moskov' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'C', 68, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Nana' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'C', 70, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Natalia' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'C', 70, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Natan' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'D', 60, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Nolan' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'C', 66, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Novaria' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'B', 77, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Obsidia' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'B', 76, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Odette' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'D', 62, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Paquito' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'S', 91, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Хороша, когда нужен дальний урон до начала файта.' from heroes h cross join patches p where h.name = 'Pharsa' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'B', 76, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Phoveus' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'B', 78, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Popol and Kupa' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'B', 78, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Rafaela' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'C', 70, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Roger' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'B', 76, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Ruby' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'B', 72, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Точечный ответ на одного опасного керри.' from heroes h cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'C', 68, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Selena' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'A', 84, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Silvanna' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'S', 95, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Сильный дуэлянт после четвертого уровня и хороший вход в драку.' from heroes h cross join patches p where h.name = 'Sora' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'S', 90, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Sun' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'S', 89, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Suyou' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'A', 84, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Terizla' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'B', 76, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Thamuz' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'A', 80, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Пик для wombo-combo, если Diggie не мешает.' from heroes h cross join patches p where h.name = 'Tigreal' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'S', 91, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Забирает пространство и заставляет врага тратить ресурсы.' from heroes h cross join patches p where h.name = 'Uranus' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'B', 76, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Vale' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'D', 58, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Valentina' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'A', 82, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Отталкивает фронтлайн и мешает заходить в ближний бой.' from heroes h cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'B', 76, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Vexana' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'D', 62, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Wanwan' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'A', 80, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Затяжной урон против плотных героев.' from heroes h cross join patches p where h.name = 'X.Borg' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'C', 68, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Xavier' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'S', 93, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Дает вижен и сильный тимфайт, особенно если команда играет от объектов.' from heroes h cross join patches p where h.name = 'Yi Sun-shin' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'C', 68, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Yin' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'C', 70, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Yu Zhong' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'S', 90, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Контроль территории вокруг лорда и черепахи.' from heroes h cross join patches p where h.name = 'Yve' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'S', 90, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Zetian' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'B', 78, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Zhask' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'S', 94, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Давит зону и мешает плотным составам заходить в драку.' from heroes h cross join patches p where h.name = 'Zhuxin' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, confidence, evidence)
select h.id, p.id, 'D', 60, null, 'manual', 'Локальная база MLBB Draft Helper', 65, 'Базовая запись: герой доступен для драфта, подробные матчапы можно уточнять в базе.' from heroes h cross join patches p where h.name = 'Zilong' and p.version = '2026.05.07.06';

-- Pro hero meta signals
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, source_url, confidence, evidence)
select h.id, p.id, 'S+', 89, 'Jungle', 'pro', 'MLBBdle MPL ID S17 patch 2.1.67, MLBBdle MPL PH S17 patch 2.1.67', 'https://mlbb-tierlist-nu.vercel.app/', 82, 'Один из самых банимых героев в MPL ID/PH, требует точечного ответа или бана.' from heroes h cross join patches p where h.name = 'Fanny' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, source_url, confidence, evidence)
select h.id, p.id, 'S+', 88, 'EXP', 'pro', 'MLBBdle MPL ID S17 patch 2.1.67, MLBBdle MPL PH S17 patch 2.1.67', 'https://mlbb-tierlist-nu.vercel.app/', 82, 'Высокий ban priority в MPL ID и MPL PH на patch 2.1.67.' from heroes h cross join patches p where h.name = 'Freya' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, source_url, confidence, evidence)
select h.id, p.id, 'S+', 89, 'Mid', 'pro', 'MLBBdle MPL ID S17 patch 2.1.67, MLBBdle MPL PH S17 patch 2.1.67, MLBB.tools tier list 2026-05-07', 'https://mlbb-tierlist-nu.vercel.app/', 82, 'Самый частый pick в MPL ID S17 и высокий ban priority в MPL PH.' from heroes h cross join patches p where h.name = 'Zhuxin' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, source_url, confidence, evidence)
select h.id, p.id, 'S+', 88, 'Jungle', 'pro', 'MLBBdle MPL PH S17 patch 2.1.67, MLBBdle MPL ID S17 patch 2.1.67', 'https://mlbb-tierlist-nu.vercel.app/', 82, 'Сильный pro-приоритет как антихил/темп, особенно против sustain-драфтов.' from heroes h cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, source_url, confidence, evidence)
select h.id, p.id, 'S', 87, 'EXP', 'pro', 'MLBBdle MPL ID S17 patch 2.1.67, MLBB.tools tier list 2026-05-07', 'https://mlbb-tierlist-nu.vercel.app/', 82, 'Высокие баны в MPL ID и заметная ranked/high-rank сила.' from heroes h cross join patches p where h.name = 'Guinevere' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, source_url, confidence, evidence)
select h.id, p.id, 'S', 88, 'Jungle', 'pro', 'MLBBdle MPL ID S17 patch 2.1.67, MLBB.tools tier list 2026-05-07', 'https://mlbb-tierlist-nu.vercel.app/', 82, 'Новый contested герой в MPL ID и high-rank tier lists.' from heroes h cross join patches p where h.name = 'Marcel' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, source_url, confidence, evidence)
select h.id, p.id, 'S', 87, 'Roam', 'pro', 'MLBBdle MPL PH S17 patch 2.1.67', 'https://mlbb-tierlist-nu.vercel.app/', 82, 'Высокий ban priority в MPL PH, сильна как гибкий front/engage.' from heroes h cross join patches p where h.name = 'Kalea' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, source_url, confidence, evidence)
select h.id, p.id, 'S', 88, 'EXP', 'pro', 'MLBBdle MPL ID S17 patch 2.1.67, MLBB.tools tier list 2026-05-07', 'https://mlbb-tierlist-nu.vercel.app/', 82, 'Топовый pick MPL ID S17 и актуальный ranked S-tier.' from heroes h cross join patches p where h.name = 'Gloo' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, source_url, confidence, evidence)
select h.id, p.id, 'S', 87, 'Jungle', 'pro', 'MLBBdle MPL ID S17 patch 2.1.67, MLBBdle MPL PH S17 patch 2.1.67', 'https://mlbb-tierlist-nu.vercel.app/', 82, 'Стабильный pro pick в MPL ID/PH как темповый jungle/EXP.' from heroes h cross join patches p where h.name = 'Leomord' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, source_url, confidence, evidence)
select h.id, p.id, 'S', 87, 'Mid', 'pro', 'MLBBdle MPL ID S17 patch 2.1.67', 'https://mlbb-tierlist-nu.vercel.app/', 82, 'Частый MPL ID pick для контроля зоны вокруг объектов.' from heroes h cross join patches p where h.name = 'Yve' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, source_url, confidence, evidence)
select h.id, p.id, 'S', 88, 'Gold', 'pro', 'MLBBdle MPL PH S17 patch 2.1.67', 'https://mlbb-tierlist-nu.vercel.app/', 82, 'Самый частый MPL PH S17 pick по сводке patch 2.1.67.' from heroes h cross join patches p where h.name = 'Claude' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, source_url, confidence, evidence)
select h.id, p.id, 'S', 87, 'Mid', 'pro', 'MLBBdle MPL PH S17 patch 2.1.67', 'https://mlbb-tierlist-nu.vercel.app/', 82, 'Топовый MPL PH pick, особенно ценна против сильных ultimates.' from heroes h cross join patches p where h.name = 'Valentina' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, source_url, confidence, evidence)
select h.id, p.id, 'S', 87, 'EXP', 'pro', 'MLBBdle MPL PH S17 patch 2.1.67', 'https://mlbb-tierlist-nu.vercel.app/', 82, 'Один из самых частых MPL PH picks как ранний pressure/front.' from heroes h cross join patches p where h.name = 'Khaleed' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, source_url, confidence, evidence)
select h.id, p.id, 'A', 85, 'Jungle', 'pro', 'MLBBdle MPL PH S17 patch 2.1.67, MLBB.tools tier list 2026-05-07', 'https://mlbb-tierlist-nu.vercel.app/', 82, 'Частый MPL PH pick и сильный ranked/high-rank assassin mage.' from heroes h cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, source_url, confidence, evidence)
select h.id, p.id, 'A', 85, 'Gold', 'pro', 'MLBBdle MPL ID S17 patch 2.1.67, MLBB.tools tier list 2026-05-07', 'https://mlbb-tierlist-nu.vercel.app/', 82, 'Pro/high-rank gold flex, часто требует раннего defensive flex против burst.' from heroes h cross join patches p where h.name = 'Harith' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, source_url, confidence, evidence)
select h.id, p.id, 'A', 85, 'Gold', 'pro', 'MLBBdle MPL ID S17 patch 2.1.67', 'https://mlbb-tierlist-nu.vercel.app/', 82, 'Pro gold-lane comfort pick: ценится за range, objective pressure и гибкие defensive slots.' from heroes h cross join patches p where h.name = 'Beatrix' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, source_url, confidence, evidence)
select h.id, p.id, 'A', 85, 'Gold', 'pro', 'MLBBdle MPL ID S17 patch 2.1.67', 'https://mlbb-tierlist-nu.vercel.app/', 82, 'Pro gold DPS вариант против составов, которые трудно пробивать одним burst.' from heroes h cross join patches p where h.name = 'Irithel' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, source_url, confidence, evidence)
select h.id, p.id, 'A', 85, 'Jungle', 'pro', 'MLBBdle MPL ID S17 patch 2.1.67', 'https://mlbb-tierlist-nu.vercel.app/', 82, 'Pro/high-rank scaling fighter: требует стабильного фронта и времени на предметы.' from heroes h cross join patches p where h.name = 'Aulus' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, source_url, confidence, evidence)
select h.id, p.id, 'A', 85, 'EXP', 'pro', 'MLBBdle MPL ID S17 patch 2.1.67', 'https://mlbb-tierlist-nu.vercel.app/', 82, 'Pro answer против плотных EXP/frontline через armor shred и ранний темп.' from heroes h cross join patches p where h.name = 'Dyrroth' and p.version = '2026.05.07.06';
insert into hero_meta (hero_id, patch_id, tier, meta_score, lane, source_type, source_name, source_url, confidence, evidence)
select h.id, p.id, 'S', 88, 'EXP', 'pro', 'MLBBdle MPL ID S17 patch 2.1.67', 'https://mlbb-tierlist-nu.vercel.app/', 82, 'Очень частый MPL ID pick, сильный дуэльный EXP/front.' from heroes h cross join patches p where h.name = 'Sora' and p.version = '2026.05.07.06';

-- Matchups from hero fields
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Harley' cross join patches p where h.name = 'Angela' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Gusion' cross join patches p where h.name = 'Angela' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Hayabusa' cross join patches p where h.name = 'Angela' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Diggie' cross join patches p where h.name = 'Angela' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Luo Yi' cross join patches p where h.name = 'Angela' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Baxia' cross join patches p where h.name = 'Angela' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Julian' cross join patches p where h.name = 'Angela' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Sora' cross join patches p where h.name = 'Angela' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Fredrinn' cross join patches p where h.name = 'Angela' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Kimmy' cross join patches p where h.name = 'Arlott' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Granger' cross join patches p where h.name = 'Arlott' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Zhuxin' cross join patches p where h.name = 'Arlott' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Yve' cross join patches p where h.name = 'Arlott' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Diggie' cross join patches p where h.name = 'Arlott' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Valir' cross join patches p where h.name = 'Arlott' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Minotaur' cross join patches p where h.name = 'Arlott' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Tigreal' cross join patches p where h.name = 'Arlott' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Minotaur' cross join patches p where h.name = 'Arlott' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Pharsa' cross join patches p where h.name = 'Arlott' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Kimmy' cross join patches p where h.name = 'Atlas' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Granger' cross join patches p where h.name = 'Atlas' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Karrie' cross join patches p where h.name = 'Atlas' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Diggie' cross join patches p where h.name = 'Atlas' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Valir' cross join patches p where h.name = 'Atlas' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Minotaur' cross join patches p where h.name = 'Atlas' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Pharsa' cross join patches p where h.name = 'Atlas' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Yve' cross join patches p where h.name = 'Atlas' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Gusion' cross join patches p where h.name = 'Atlas' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Angela' cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Floryn' cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Uranus' cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Gloo' cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Karrie' cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Yve' cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Pharsa' cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Kimmy' cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Zhuxin' cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Pharsa' cross join patches p where h.name = 'Benedetta' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Yve' cross join patches p where h.name = 'Benedetta' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Kimmy' cross join patches p where h.name = 'Benedetta' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Khufra' cross join patches p where h.name = 'Benedetta' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Minsitthar' cross join patches p where h.name = 'Benedetta' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Minotaur' cross join patches p where h.name = 'Benedetta' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Angela' cross join patches p where h.name = 'Benedetta' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Yve' cross join patches p where h.name = 'Benedetta' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Tigreal' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Atlas' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Khufra' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Minotaur' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Arlott' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Natalia' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Luo Yi' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Valentina' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Kimmy' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Karrie' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Yve' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Pharsa' cross join patches p where h.name = 'Fanny' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Yve' cross join patches p where h.name = 'Fanny' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Kimmy' cross join patches p where h.name = 'Fanny' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Khufra' cross join patches p where h.name = 'Fanny' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Saber' cross join patches p where h.name = 'Fanny' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Minotaur' cross join patches p where h.name = 'Fanny' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Angela' cross join patches p where h.name = 'Fanny' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Floryn' cross join patches p where h.name = 'Fanny' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Harley' cross join patches p where h.name = 'Floryn' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Gusion' cross join patches p where h.name = 'Floryn' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Pharsa' cross join patches p where h.name = 'Floryn' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Baxia' cross join patches p where h.name = 'Floryn' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Luo Yi' cross join patches p where h.name = 'Floryn' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Atlas' cross join patches p where h.name = 'Floryn' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Fredrinn' cross join patches p where h.name = 'Floryn' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Sora' cross join patches p where h.name = 'Floryn' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Karrie' cross join patches p where h.name = 'Floryn' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Hayabusa' cross join patches p where h.name = 'Fredrinn' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Gusion' cross join patches p where h.name = 'Fredrinn' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Harley' cross join patches p where h.name = 'Fredrinn' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Saber' cross join patches p where h.name = 'Fredrinn' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Karrie' cross join patches p where h.name = 'Fredrinn' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Valir' cross join patches p where h.name = 'Fredrinn' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'X.Borg' cross join patches p where h.name = 'Fredrinn' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Floryn' cross join patches p where h.name = 'Fredrinn' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Angela' cross join patches p where h.name = 'Fredrinn' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Yve' cross join patches p where h.name = 'Fredrinn' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Hayabusa' cross join patches p where h.name = 'Gloo' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Gusion' cross join patches p where h.name = 'Gloo' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Harley' cross join patches p where h.name = 'Gloo' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Saber' cross join patches p where h.name = 'Gloo' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Karrie' cross join patches p where h.name = 'Gloo' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Kimmy' cross join patches p where h.name = 'Gloo' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Valir' cross join patches p where h.name = 'Gloo' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Faramis' cross join patches p where h.name = 'Gloo' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Yve' cross join patches p where h.name = 'Gloo' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Pharsa' cross join patches p where h.name = 'Gloo' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Floryn' cross join patches p where h.name = 'Gloo' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Uranus' cross join patches p where h.name = 'Granger' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Gloo' cross join patches p where h.name = 'Granger' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Fredrinn' cross join patches p where h.name = 'Granger' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Pharsa' cross join patches p where h.name = 'Granger' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Lolita' cross join patches p where h.name = 'Granger' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Arlott' cross join patches p where h.name = 'Granger' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Hayabusa' cross join patches p where h.name = 'Granger' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Minotaur' cross join patches p where h.name = 'Granger' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Floryn' cross join patches p where h.name = 'Granger' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Kimmy' cross join patches p where h.name = 'Gusion' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Karrie' cross join patches p where h.name = 'Gusion' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Yve' cross join patches p where h.name = 'Gusion' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Floryn' cross join patches p where h.name = 'Gusion' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Khufra' cross join patches p where h.name = 'Gusion' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Minotaur' cross join patches p where h.name = 'Gusion' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Diggie' cross join patches p where h.name = 'Gusion' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Angela' cross join patches p where h.name = 'Gusion' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Tigreal' cross join patches p where h.name = 'Gusion' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Kimmy' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Karrie' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Pharsa' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Granger' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Lolita' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Diggie' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Minotaur' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Gloo' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Uranus' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Pharsa' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Yve' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Kimmy' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Karrie' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Zhuxin' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Khufra' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Saber' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Diggie' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Minotaur' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Angela' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Floryn' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Kimmy' cross join patches p where h.name = 'Julian' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Granger' cross join patches p where h.name = 'Julian' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Pharsa' cross join patches p where h.name = 'Julian' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Yve' cross join patches p where h.name = 'Julian' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Angela' cross join patches p where h.name = 'Julian' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Kaja' cross join patches p where h.name = 'Julian' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Khufra' cross join patches p where h.name = 'Julian' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Minotaur' cross join patches p where h.name = 'Julian' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Angela' cross join patches p where h.name = 'Julian' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Diggie' cross join patches p where h.name = 'Julian' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Minotaur' cross join patches p where h.name = 'Julian' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Sora' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Julian' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Hayabusa' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Gusion' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Diggie' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Pharsa' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Yve' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Kimmy' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Granger' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Uranus' cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Gloo' cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Fredrinn' cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Minotaur' cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Hayabusa' cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Harley' cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Lolita' cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Diggie' cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Floryn' cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Yve' cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Hayabusa' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Gusion' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Fanny' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Benedetta' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Julian' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Diggie' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Valir' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Karrie' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Pharsa' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Kimmy' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Uranus' cross join patches p where h.name = 'Kimmy' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Gloo' cross join patches p where h.name = 'Kimmy' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Fredrinn' cross join patches p where h.name = 'Kimmy' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Minotaur' cross join patches p where h.name = 'Kimmy' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Lolita' cross join patches p where h.name = 'Kimmy' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Hayabusa' cross join patches p where h.name = 'Kimmy' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Julian' cross join patches p where h.name = 'Kimmy' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Harley' cross join patches p where h.name = 'Kimmy' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Angela' cross join patches p where h.name = 'Kimmy' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Diggie' cross join patches p where h.name = 'Kimmy' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Floryn' cross join patches p where h.name = 'Kimmy' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Pharsa' cross join patches p where h.name = 'Ling' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Yve' cross join patches p where h.name = 'Ling' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Kimmy' cross join patches p where h.name = 'Ling' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Khufra' cross join patches p where h.name = 'Ling' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Saber' cross join patches p where h.name = 'Ling' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Minotaur' cross join patches p where h.name = 'Ling' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Angela' cross join patches p where h.name = 'Ling' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Floryn' cross join patches p where h.name = 'Ling' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Kimmy' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Granger' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Karrie' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Harley' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Diggie' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Valir' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Gloo' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Pharsa' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Granger' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Hayabusa' cross join patches p where h.name = 'Minotaur' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Gusion' cross join patches p where h.name = 'Minotaur' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Julian' cross join patches p where h.name = 'Minotaur' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Harley' cross join patches p where h.name = 'Minotaur' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Diggie' cross join patches p where h.name = 'Minotaur' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Valir' cross join patches p where h.name = 'Minotaur' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Karrie' cross join patches p where h.name = 'Minotaur' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Pharsa' cross join patches p where h.name = 'Minotaur' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Yve' cross join patches p where h.name = 'Minotaur' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Granger' cross join patches p where h.name = 'Minotaur' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Gloo' cross join patches p where h.name = 'Pharsa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Uranus' cross join patches p where h.name = 'Pharsa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Fredrinn' cross join patches p where h.name = 'Pharsa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Tigreal' cross join patches p where h.name = 'Pharsa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Hayabusa' cross join patches p where h.name = 'Pharsa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Harley' cross join patches p where h.name = 'Pharsa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Julian' cross join patches p where h.name = 'Pharsa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Minotaur' cross join patches p where h.name = 'Pharsa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Arlott' cross join patches p where h.name = 'Pharsa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Fredrinn' cross join patches p where h.name = 'Pharsa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Hayabusa' cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Gusion' cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Harley' cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Pharsa' cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Diggie' cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Gloo' cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Fredrinn' cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Angela' cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Eudora' cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Uranus' cross join patches p where h.name = 'Sora' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Gloo' cross join patches p where h.name = 'Sora' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Karrie' cross join patches p where h.name = 'Sora' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Granger' cross join patches p where h.name = 'Sora' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Phoveus' cross join patches p where h.name = 'Sora' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Kaja' cross join patches p where h.name = 'Sora' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Valir' cross join patches p where h.name = 'Sora' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Angela' cross join patches p where h.name = 'Sora' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Floryn' cross join patches p where h.name = 'Sora' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Minotaur' cross join patches p where h.name = 'Sora' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Kimmy' cross join patches p where h.name = 'Tigreal' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Granger' cross join patches p where h.name = 'Tigreal' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Pharsa' cross join patches p where h.name = 'Tigreal' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Diggie' cross join patches p where h.name = 'Tigreal' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Valir' cross join patches p where h.name = 'Tigreal' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Karrie' cross join patches p where h.name = 'Tigreal' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Gusion' cross join patches p where h.name = 'Tigreal' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Arlott' cross join patches p where h.name = 'Tigreal' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Pharsa' cross join patches p where h.name = 'Tigreal' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Pharsa' cross join patches p where h.name = 'Uranus' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Yve' cross join patches p where h.name = 'Uranus' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Harley' cross join patches p where h.name = 'Uranus' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Karrie' cross join patches p where h.name = 'Uranus' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Kimmy' cross join patches p where h.name = 'Uranus' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Valir' cross join patches p where h.name = 'Uranus' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Angela' cross join patches p where h.name = 'Uranus' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Yve' cross join patches p where h.name = 'Uranus' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Sora' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Gloo' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Uranus' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Arlott' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Pharsa' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Hayabusa' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Harley' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Karrie' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Fredrinn' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Fredrinn' cross join patches p where h.name = 'X.Borg' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Uranus' cross join patches p where h.name = 'X.Borg' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Gloo' cross join patches p where h.name = 'X.Borg' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Sora' cross join patches p where h.name = 'X.Borg' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Karrie' cross join patches p where h.name = 'X.Borg' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Kimmy' cross join patches p where h.name = 'X.Borg' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Pharsa' cross join patches p where h.name = 'X.Borg' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Floryn' cross join patches p where h.name = 'X.Borg' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Yve' cross join patches p where h.name = 'X.Borg' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Fanny' cross join patches p where h.name = 'Yi Sun-shin' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Natalia' cross join patches p where h.name = 'Yi Sun-shin' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Selena' cross join patches p where h.name = 'Yi Sun-shin' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Harley' cross join patches p where h.name = 'Yi Sun-shin' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Lolita' cross join patches p where h.name = 'Yi Sun-shin' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Khufra' cross join patches p where h.name = 'Yi Sun-shin' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Fredrinn' cross join patches p where h.name = 'Yi Sun-shin' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Minotaur' cross join patches p where h.name = 'Yi Sun-shin' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Yve' cross join patches p where h.name = 'Yi Sun-shin' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Angela' cross join patches p where h.name = 'Yi Sun-shin' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Gloo' cross join patches p where h.name = 'Yve' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Uranus' cross join patches p where h.name = 'Yve' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Fredrinn' cross join patches p where h.name = 'Yve' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Minotaur' cross join patches p where h.name = 'Yve' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Hayabusa' cross join patches p where h.name = 'Yve' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Gusion' cross join patches p where h.name = 'Yve' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Harley' cross join patches p where h.name = 'Yve' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Fredrinn' cross join patches p where h.name = 'Yve' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Karrie' cross join patches p where h.name = 'Yve' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Diggie' cross join patches p where h.name = 'Yve' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Gloo' cross join patches p where h.name = 'Zhuxin' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Uranus' cross join patches p where h.name = 'Zhuxin' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Fredrinn' cross join patches p where h.name = 'Zhuxin' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 75, 'Закрывает героя по локальной базе', 'manual', p.id from heroes h join heroes t on t.name = 'Minotaur' cross join patches p where h.name = 'Zhuxin' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Hayabusa' cross join patches p where h.name = 'Zhuxin' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Julian' cross join patches p where h.name = 'Zhuxin' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'weak_into', 75, 'Плохо играет в этот матчап', 'manual', p.id from heroes h join heroes t on t.name = 'Gusion' cross join patches p where h.name = 'Zhuxin' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Fredrinn' cross join patches p where h.name = 'Zhuxin' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Minotaur' cross join patches p where h.name = 'Zhuxin' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'synergy', 75, 'Хорошо сочетается с героем', 'manual', p.id from heroes h join heroes t on t.name = 'Karrie' cross join patches p where h.name = 'Zhuxin' and p.version = '2026.05.07.06' on conflict do nothing;

-- Counter chart additions
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Saber закрывает Aamon', 'manual', p.id from heroes h join heroes t on t.name = 'Aamon' cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Khufra закрывает Aamon', 'manual', p.id from heroes h join heroes t on t.name = 'Aamon' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Kaja закрывает Aamon', 'manual', p.id from heroes h join heroes t on t.name = 'Aamon' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Lolita закрывает Aamon', 'manual', p.id from heroes h join heroes t on t.name = 'Aamon' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 63, 'Counter chart: Minotaur закрывает Aamon', 'manual', p.id from heroes h join heroes t on t.name = 'Aamon' cross join patches p where h.name = 'Minotaur' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Valir закрывает Akai', 'manual', p.id from heroes h join heroes t on t.name = 'Akai' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Diggie закрывает Akai', 'manual', p.id from heroes h join heroes t on t.name = 'Akai' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Karrie закрывает Akai', 'manual', p.id from heroes h join heroes t on t.name = 'Akai' cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Kimmy закрывает Akai', 'manual', p.id from heroes h join heroes t on t.name = 'Akai' cross join patches p where h.name = 'Kimmy' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Valir закрывает Aldous', 'manual', p.id from heroes h join heroes t on t.name = 'Aldous' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Kaja закрывает Aldous', 'manual', p.id from heroes h join heroes t on t.name = 'Aldous' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Diggie закрывает Aldous', 'manual', p.id from heroes h join heroes t on t.name = 'Aldous' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Gloo закрывает Aldous', 'manual', p.id from heroes h join heroes t on t.name = 'Aldous' cross join patches p where h.name = 'Gloo' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Baxia закрывает Alice', 'manual', p.id from heroes h join heroes t on t.name = 'Alice' cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Karrie закрывает Alice', 'manual', p.id from heroes h join heroes t on t.name = 'Alice' cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Valir закрывает Alice', 'manual', p.id from heroes h join heroes t on t.name = 'Alice' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Kimmy закрывает Alice', 'manual', p.id from heroes h join heroes t on t.name = 'Alice' cross join patches p where h.name = 'Kimmy' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Baxia закрывает Alpha', 'manual', p.id from heroes h join heroes t on t.name = 'Alpha' cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Valir закрывает Alpha', 'manual', p.id from heroes h join heroes t on t.name = 'Alpha' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Karrie закрывает Alpha', 'manual', p.id from heroes h join heroes t on t.name = 'Alpha' cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: X.Borg закрывает Alpha', 'manual', p.id from heroes h join heroes t on t.name = 'Alpha' cross join patches p where h.name = 'X.Borg' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Khufra закрывает Alucard', 'manual', p.id from heroes h join heroes t on t.name = 'Alucard' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Kaja закрывает Alucard', 'manual', p.id from heroes h join heroes t on t.name = 'Alucard' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Valir закрывает Alucard', 'manual', p.id from heroes h join heroes t on t.name = 'Alucard' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Baxia закрывает Alucard', 'manual', p.id from heroes h join heroes t on t.name = 'Alucard' cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Baxia закрывает Angela', 'manual', p.id from heroes h join heroes t on t.name = 'Angela' cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Diggie закрывает Angela', 'manual', p.id from heroes h join heroes t on t.name = 'Angela' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Luo Yi закрывает Angela', 'manual', p.id from heroes h join heroes t on t.name = 'Angela' cross join patches p where h.name = 'Luo Yi' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Kaja закрывает Angela', 'manual', p.id from heroes h join heroes t on t.name = 'Angela' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Valir закрывает Argus', 'manual', p.id from heroes h join heroes t on t.name = 'Argus' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Kaja закрывает Argus', 'manual', p.id from heroes h join heroes t on t.name = 'Argus' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Khufra закрывает Argus', 'manual', p.id from heroes h join heroes t on t.name = 'Argus' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Minsitthar закрывает Argus', 'manual', p.id from heroes h join heroes t on t.name = 'Argus' cross join patches p where h.name = 'Minsitthar' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Diggie закрывает Arlott', 'manual', p.id from heroes h join heroes t on t.name = 'Arlott' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Valir закрывает Arlott', 'manual', p.id from heroes h join heroes t on t.name = 'Arlott' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Minsitthar закрывает Arlott', 'manual', p.id from heroes h join heroes t on t.name = 'Arlott' cross join patches p where h.name = 'Minsitthar' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Khufra закрывает Arlott', 'manual', p.id from heroes h join heroes t on t.name = 'Arlott' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Diggie закрывает Atlas', 'manual', p.id from heroes h join heroes t on t.name = 'Atlas' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Valir закрывает Atlas', 'manual', p.id from heroes h join heroes t on t.name = 'Atlas' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Minotaur закрывает Atlas', 'manual', p.id from heroes h join heroes t on t.name = 'Atlas' cross join patches p where h.name = 'Minotaur' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Kaja закрывает Atlas', 'manual', p.id from heroes h join heroes t on t.name = 'Atlas' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Valir закрывает Aulus', 'manual', p.id from heroes h join heroes t on t.name = 'Aulus' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Khufra закрывает Aulus', 'manual', p.id from heroes h join heroes t on t.name = 'Aulus' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Kaja закрывает Aulus', 'manual', p.id from heroes h join heroes t on t.name = 'Aulus' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Fredrinn закрывает Aulus', 'manual', p.id from heroes h join heroes t on t.name = 'Aulus' cross join patches p where h.name = 'Fredrinn' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Lolita закрывает Aurora', 'manual', p.id from heroes h join heroes t on t.name = 'Aurora' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Diggie закрывает Aurora', 'manual', p.id from heroes h join heroes t on t.name = 'Aurora' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Hayabusa закрывает Aurora', 'manual', p.id from heroes h join heroes t on t.name = 'Aurora' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Lancelot закрывает Aurora', 'manual', p.id from heroes h join heroes t on t.name = 'Aurora' cross join patches p where h.name = 'Lancelot' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Diggie закрывает Badang', 'manual', p.id from heroes h join heroes t on t.name = 'Badang' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Valir закрывает Badang', 'manual', p.id from heroes h join heroes t on t.name = 'Badang' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Khufra закрывает Badang', 'manual', p.id from heroes h join heroes t on t.name = 'Badang' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Minsitthar закрывает Badang', 'manual', p.id from heroes h join heroes t on t.name = 'Badang' cross join patches p where h.name = 'Minsitthar' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Karrie закрывает Balmond', 'manual', p.id from heroes h join heroes t on t.name = 'Balmond' cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Valir закрывает Balmond', 'manual', p.id from heroes h join heroes t on t.name = 'Balmond' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Baxia закрывает Balmond', 'manual', p.id from heroes h join heroes t on t.name = 'Balmond' cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: X.Borg закрывает Balmond', 'manual', p.id from heroes h join heroes t on t.name = 'Balmond' cross join patches p where h.name = 'X.Borg' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Karrie закрывает Barats', 'manual', p.id from heroes h join heroes t on t.name = 'Barats' cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Kimmy закрывает Barats', 'manual', p.id from heroes h join heroes t on t.name = 'Barats' cross join patches p where h.name = 'Kimmy' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Valir закрывает Barats', 'manual', p.id from heroes h join heroes t on t.name = 'Barats' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Baxia закрывает Barats', 'manual', p.id from heroes h join heroes t on t.name = 'Barats' cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Karrie закрывает Baxia', 'manual', p.id from heroes h join heroes t on t.name = 'Baxia' cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Yve закрывает Baxia', 'manual', p.id from heroes h join heroes t on t.name = 'Baxia' cross join patches p where h.name = 'Yve' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Pharsa закрывает Baxia', 'manual', p.id from heroes h join heroes t on t.name = 'Baxia' cross join patches p where h.name = 'Pharsa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Valir закрывает Baxia', 'manual', p.id from heroes h join heroes t on t.name = 'Baxia' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Lolita закрывает Beatrix', 'manual', p.id from heroes h join heroes t on t.name = 'Beatrix' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Hayabusa закрывает Beatrix', 'manual', p.id from heroes h join heroes t on t.name = 'Beatrix' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Saber закрывает Beatrix', 'manual', p.id from heroes h join heroes t on t.name = 'Beatrix' cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Harley закрывает Beatrix', 'manual', p.id from heroes h join heroes t on t.name = 'Beatrix' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Karrie закрывает Belerick', 'manual', p.id from heroes h join heroes t on t.name = 'Belerick' cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Kimmy закрывает Belerick', 'manual', p.id from heroes h join heroes t on t.name = 'Belerick' cross join patches p where h.name = 'Kimmy' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Valir закрывает Belerick', 'manual', p.id from heroes h join heroes t on t.name = 'Belerick' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: X.Borg закрывает Belerick', 'manual', p.id from heroes h join heroes t on t.name = 'Belerick' cross join patches p where h.name = 'X.Borg' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Khufra закрывает Benedetta', 'manual', p.id from heroes h join heroes t on t.name = 'Benedetta' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Minsitthar закрывает Benedetta', 'manual', p.id from heroes h join heroes t on t.name = 'Benedetta' cross join patches p where h.name = 'Minsitthar' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Kaja закрывает Benedetta', 'manual', p.id from heroes h join heroes t on t.name = 'Benedetta' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Phoveus закрывает Benedetta', 'manual', p.id from heroes h join heroes t on t.name = 'Benedetta' cross join patches p where h.name = 'Phoveus' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Lolita закрывает Brody', 'manual', p.id from heroes h join heroes t on t.name = 'Brody' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Hayabusa закрывает Brody', 'manual', p.id from heroes h join heroes t on t.name = 'Brody' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Saber закрывает Brody', 'manual', p.id from heroes h join heroes t on t.name = 'Brody' cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Harley закрывает Brody', 'manual', p.id from heroes h join heroes t on t.name = 'Brody' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Lolita закрывает Bruno', 'manual', p.id from heroes h join heroes t on t.name = 'Bruno' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Hayabusa закрывает Bruno', 'manual', p.id from heroes h join heroes t on t.name = 'Bruno' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Saber закрывает Bruno', 'manual', p.id from heroes h join heroes t on t.name = 'Bruno' cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Harley закрывает Bruno', 'manual', p.id from heroes h join heroes t on t.name = 'Bruno' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Diggie закрывает Carmilla', 'manual', p.id from heroes h join heroes t on t.name = 'Carmilla' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Valir закрывает Carmilla', 'manual', p.id from heroes h join heroes t on t.name = 'Carmilla' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Baxia закрывает Carmilla', 'manual', p.id from heroes h join heroes t on t.name = 'Carmilla' cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Kaja закрывает Carmilla', 'manual', p.id from heroes h join heroes t on t.name = 'Carmilla' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Hayabusa закрывает Cecilion', 'manual', p.id from heroes h join heroes t on t.name = 'Cecilion' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Lancelot закрывает Cecilion', 'manual', p.id from heroes h join heroes t on t.name = 'Cecilion' cross join patches p where h.name = 'Lancelot' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Harley закрывает Cecilion', 'manual', p.id from heroes h join heroes t on t.name = 'Cecilion' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Julian закрывает Cecilion', 'manual', p.id from heroes h join heroes t on t.name = 'Cecilion' cross join patches p where h.name = 'Julian' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Lolita закрывает Chang''e', 'manual', p.id from heroes h join heroes t on t.name = 'Chang''e' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Hayabusa закрывает Chang''e', 'manual', p.id from heroes h join heroes t on t.name = 'Chang''e' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Lancelot закрывает Chang''e', 'manual', p.id from heroes h join heroes t on t.name = 'Chang''e' cross join patches p where h.name = 'Lancelot' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Natalia закрывает Chang''e', 'manual', p.id from heroes h join heroes t on t.name = 'Chang''e' cross join patches p where h.name = 'Natalia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Diggie закрывает Chip', 'manual', p.id from heroes h join heroes t on t.name = 'Chip' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Valir закрывает Chip', 'manual', p.id from heroes h join heroes t on t.name = 'Chip' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Minotaur закрывает Chip', 'manual', p.id from heroes h join heroes t on t.name = 'Chip' cross join patches p where h.name = 'Minotaur' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Kaja закрывает Chip', 'manual', p.id from heroes h join heroes t on t.name = 'Chip' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Diggie закрывает Chou', 'manual', p.id from heroes h join heroes t on t.name = 'Chou' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Valir закрывает Chou', 'manual', p.id from heroes h join heroes t on t.name = 'Chou' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Minsitthar закрывает Chou', 'manual', p.id from heroes h join heroes t on t.name = 'Chou' cross join patches p where h.name = 'Minsitthar' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Khufra закрывает Chou', 'manual', p.id from heroes h join heroes t on t.name = 'Chou' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Kaja закрывает Cici', 'manual', p.id from heroes h join heroes t on t.name = 'Cici' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Khufra закрывает Cici', 'manual', p.id from heroes h join heroes t on t.name = 'Cici' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Valir закрывает Cici', 'manual', p.id from heroes h join heroes t on t.name = 'Cici' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Phoveus закрывает Cici', 'manual', p.id from heroes h join heroes t on t.name = 'Cici' cross join patches p where h.name = 'Phoveus' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Lolita закрывает Claude', 'manual', p.id from heroes h join heroes t on t.name = 'Claude' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Khufra закрывает Claude', 'manual', p.id from heroes h join heroes t on t.name = 'Claude' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Saber закрывает Claude', 'manual', p.id from heroes h join heroes t on t.name = 'Claude' cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Kaja закрывает Claude', 'manual', p.id from heroes h join heroes t on t.name = 'Claude' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Lolita закрывает Clint', 'manual', p.id from heroes h join heroes t on t.name = 'Clint' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Hayabusa закрывает Clint', 'manual', p.id from heroes h join heroes t on t.name = 'Clint' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Saber закрывает Clint', 'manual', p.id from heroes h join heroes t on t.name = 'Clint' cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Harley закрывает Clint', 'manual', p.id from heroes h join heroes t on t.name = 'Clint' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Lolita закрывает Cyclops', 'manual', p.id from heroes h join heroes t on t.name = 'Cyclops' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Hayabusa закрывает Cyclops', 'manual', p.id from heroes h join heroes t on t.name = 'Cyclops' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Harley закрывает Cyclops', 'manual', p.id from heroes h join heroes t on t.name = 'Cyclops' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Julian закрывает Cyclops', 'manual', p.id from heroes h join heroes t on t.name = 'Cyclops' cross join patches p where h.name = 'Julian' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Natalia закрывает Diggie', 'manual', p.id from heroes h join heroes t on t.name = 'Diggie' cross join patches p where h.name = 'Natalia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Luo Yi закрывает Diggie', 'manual', p.id from heroes h join heroes t on t.name = 'Diggie' cross join patches p where h.name = 'Luo Yi' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Valentina закрывает Diggie', 'manual', p.id from heroes h join heroes t on t.name = 'Diggie' cross join patches p where h.name = 'Valentina' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Harley закрывает Diggie', 'manual', p.id from heroes h join heroes t on t.name = 'Diggie' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Valir закрывает Dyrroth', 'manual', p.id from heroes h join heroes t on t.name = 'Dyrroth' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Khufra закрывает Dyrroth', 'manual', p.id from heroes h join heroes t on t.name = 'Dyrroth' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Kaja закрывает Dyrroth', 'manual', p.id from heroes h join heroes t on t.name = 'Dyrroth' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Minsitthar закрывает Dyrroth', 'manual', p.id from heroes h join heroes t on t.name = 'Dyrroth' cross join patches p where h.name = 'Minsitthar' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Karrie закрывает Edith', 'manual', p.id from heroes h join heroes t on t.name = 'Edith' cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Valir закрывает Edith', 'manual', p.id from heroes h join heroes t on t.name = 'Edith' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Baxia закрывает Edith', 'manual', p.id from heroes h join heroes t on t.name = 'Edith' cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Diggie закрывает Edith', 'manual', p.id from heroes h join heroes t on t.name = 'Edith' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Baxia закрывает Esmeralda', 'manual', p.id from heroes h join heroes t on t.name = 'Esmeralda' cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Karrie закрывает Esmeralda', 'manual', p.id from heroes h join heroes t on t.name = 'Esmeralda' cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Valir закрывает Esmeralda', 'manual', p.id from heroes h join heroes t on t.name = 'Esmeralda' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Dyrroth закрывает Esmeralda', 'manual', p.id from heroes h join heroes t on t.name = 'Esmeralda' cross join patches p where h.name = 'Dyrroth' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Baxia закрывает Estes', 'manual', p.id from heroes h join heroes t on t.name = 'Estes' cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Luo Yi закрывает Estes', 'manual', p.id from heroes h join heroes t on t.name = 'Estes' cross join patches p where h.name = 'Luo Yi' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Atlas закрывает Estes', 'manual', p.id from heroes h join heroes t on t.name = 'Estes' cross join patches p where h.name = 'Atlas' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Tigreal закрывает Estes', 'manual', p.id from heroes h join heroes t on t.name = 'Estes' cross join patches p where h.name = 'Tigreal' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Lolita закрывает Eudora', 'manual', p.id from heroes h join heroes t on t.name = 'Eudora' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Diggie закрывает Eudora', 'manual', p.id from heroes h join heroes t on t.name = 'Eudora' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Hayabusa закрывает Eudora', 'manual', p.id from heroes h join heroes t on t.name = 'Eudora' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Lancelot закрывает Eudora', 'manual', p.id from heroes h join heroes t on t.name = 'Eudora' cross join patches p where h.name = 'Lancelot' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Khufra закрывает Fanny', 'manual', p.id from heroes h join heroes t on t.name = 'Fanny' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Saber закрывает Fanny', 'manual', p.id from heroes h join heroes t on t.name = 'Fanny' cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Kaja закрывает Fanny', 'manual', p.id from heroes h join heroes t on t.name = 'Fanny' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Minotaur закрывает Fanny', 'manual', p.id from heroes h join heroes t on t.name = 'Fanny' cross join patches p where h.name = 'Minotaur' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Baxia закрывает Faramis', 'manual', p.id from heroes h join heroes t on t.name = 'Faramis' cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Luo Yi закрывает Faramis', 'manual', p.id from heroes h join heroes t on t.name = 'Faramis' cross join patches p where h.name = 'Luo Yi' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Kaja закрывает Faramis', 'manual', p.id from heroes h join heroes t on t.name = 'Faramis' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Valir закрывает Faramis', 'manual', p.id from heroes h join heroes t on t.name = 'Faramis' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Baxia закрывает Floryn', 'manual', p.id from heroes h join heroes t on t.name = 'Floryn' cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Luo Yi закрывает Floryn', 'manual', p.id from heroes h join heroes t on t.name = 'Floryn' cross join patches p where h.name = 'Luo Yi' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Atlas закрывает Floryn', 'manual', p.id from heroes h join heroes t on t.name = 'Floryn' cross join patches p where h.name = 'Atlas' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Tigreal закрывает Floryn', 'manual', p.id from heroes h join heroes t on t.name = 'Floryn' cross join patches p where h.name = 'Tigreal' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Diggie закрывает Franco', 'manual', p.id from heroes h join heroes t on t.name = 'Franco' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Valir закрывает Franco', 'manual', p.id from heroes h join heroes t on t.name = 'Franco' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Minotaur закрывает Franco', 'manual', p.id from heroes h join heroes t on t.name = 'Franco' cross join patches p where h.name = 'Minotaur' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Kaja закрывает Franco', 'manual', p.id from heroes h join heroes t on t.name = 'Franco' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Karrie закрывает Fredrinn', 'manual', p.id from heroes h join heroes t on t.name = 'Fredrinn' cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Valir закрывает Fredrinn', 'manual', p.id from heroes h join heroes t on t.name = 'Fredrinn' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: X.Borg закрывает Fredrinn', 'manual', p.id from heroes h join heroes t on t.name = 'Fredrinn' cross join patches p where h.name = 'X.Borg' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Kimmy закрывает Fredrinn', 'manual', p.id from heroes h join heroes t on t.name = 'Fredrinn' cross join patches p where h.name = 'Kimmy' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Valir закрывает Freya', 'manual', p.id from heroes h join heroes t on t.name = 'Freya' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Kaja закрывает Freya', 'manual', p.id from heroes h join heroes t on t.name = 'Freya' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Khufra закрывает Freya', 'manual', p.id from heroes h join heroes t on t.name = 'Freya' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Minsitthar закрывает Freya', 'manual', p.id from heroes h join heroes t on t.name = 'Freya' cross join patches p where h.name = 'Minsitthar' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Karrie закрывает Gatotkaca', 'manual', p.id from heroes h join heroes t on t.name = 'Gatotkaca' cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Valir закрывает Gatotkaca', 'manual', p.id from heroes h join heroes t on t.name = 'Gatotkaca' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Diggie закрывает Gatotkaca', 'manual', p.id from heroes h join heroes t on t.name = 'Gatotkaca' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Baxia закрывает Gatotkaca', 'manual', p.id from heroes h join heroes t on t.name = 'Gatotkaca' cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Faramis закрывает Gloo', 'manual', p.id from heroes h join heroes t on t.name = 'Gloo' cross join patches p where h.name = 'Faramis' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Valir закрывает Gloo', 'manual', p.id from heroes h join heroes t on t.name = 'Gloo' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Karrie закрывает Gloo', 'manual', p.id from heroes h join heroes t on t.name = 'Gloo' cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Kimmy закрывает Gloo', 'manual', p.id from heroes h join heroes t on t.name = 'Gloo' cross join patches p where h.name = 'Kimmy' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Lolita закрывает Gord', 'manual', p.id from heroes h join heroes t on t.name = 'Gord' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Hayabusa закрывает Gord', 'manual', p.id from heroes h join heroes t on t.name = 'Gord' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Lancelot закрывает Gord', 'manual', p.id from heroes h join heroes t on t.name = 'Gord' cross join patches p where h.name = 'Lancelot' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Harley закрывает Gord', 'manual', p.id from heroes h join heroes t on t.name = 'Gord' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Lolita закрывает Granger', 'manual', p.id from heroes h join heroes t on t.name = 'Granger' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Hayabusa закрывает Granger', 'manual', p.id from heroes h join heroes t on t.name = 'Granger' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Arlott закрывает Granger', 'manual', p.id from heroes h join heroes t on t.name = 'Granger' cross join patches p where h.name = 'Arlott' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Khufra закрывает Granger', 'manual', p.id from heroes h join heroes t on t.name = 'Granger' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Karrie закрывает Grock', 'manual', p.id from heroes h join heroes t on t.name = 'Grock' cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Valir закрывает Grock', 'manual', p.id from heroes h join heroes t on t.name = 'Grock' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Diggie закрывает Grock', 'manual', p.id from heroes h join heroes t on t.name = 'Grock' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Kimmy закрывает Grock', 'manual', p.id from heroes h join heroes t on t.name = 'Grock' cross join patches p where h.name = 'Kimmy' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Diggie закрывает Guinevere', 'manual', p.id from heroes h join heroes t on t.name = 'Guinevere' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Valir закрывает Guinevere', 'manual', p.id from heroes h join heroes t on t.name = 'Guinevere' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Khufra закрывает Guinevere', 'manual', p.id from heroes h join heroes t on t.name = 'Guinevere' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Kaja закрывает Guinevere', 'manual', p.id from heroes h join heroes t on t.name = 'Guinevere' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Khufra закрывает Gusion', 'manual', p.id from heroes h join heroes t on t.name = 'Gusion' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Saber закрывает Gusion', 'manual', p.id from heroes h join heroes t on t.name = 'Gusion' cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Minotaur закрывает Gusion', 'manual', p.id from heroes h join heroes t on t.name = 'Gusion' cross join patches p where h.name = 'Minotaur' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Diggie закрывает Gusion', 'manual', p.id from heroes h join heroes t on t.name = 'Gusion' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Lolita закрывает Hanabi', 'manual', p.id from heroes h join heroes t on t.name = 'Hanabi' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Hayabusa закрывает Hanabi', 'manual', p.id from heroes h join heroes t on t.name = 'Hanabi' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Harley закрывает Hanabi', 'manual', p.id from heroes h join heroes t on t.name = 'Hanabi' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Saber закрывает Hanabi', 'manual', p.id from heroes h join heroes t on t.name = 'Hanabi' cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Natalia закрывает Hanzo', 'manual', p.id from heroes h join heroes t on t.name = 'Hanzo' cross join patches p where h.name = 'Natalia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Ling закрывает Hanzo', 'manual', p.id from heroes h join heroes t on t.name = 'Hanzo' cross join patches p where h.name = 'Ling' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Hayabusa закрывает Hanzo', 'manual', p.id from heroes h join heroes t on t.name = 'Hanzo' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Saber закрывает Hanzo', 'manual', p.id from heroes h join heroes t on t.name = 'Hanzo' cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Lolita закрывает Harley', 'manual', p.id from heroes h join heroes t on t.name = 'Harley' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Diggie закрывает Harley', 'manual', p.id from heroes h join heroes t on t.name = 'Harley' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Minotaur закрывает Harley', 'manual', p.id from heroes h join heroes t on t.name = 'Harley' cross join patches p where h.name = 'Minotaur' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Baxia закрывает Harley', 'manual', p.id from heroes h join heroes t on t.name = 'Harley' cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Minsitthar закрывает Harith', 'manual', p.id from heroes h join heroes t on t.name = 'Harith' cross join patches p where h.name = 'Minsitthar' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Khufra закрывает Harith', 'manual', p.id from heroes h join heroes t on t.name = 'Harith' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Kaja закрывает Harith', 'manual', p.id from heroes h join heroes t on t.name = 'Harith' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Phoveus закрывает Harith', 'manual', p.id from heroes h join heroes t on t.name = 'Harith' cross join patches p where h.name = 'Phoveus' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Khufra закрывает Hayabusa', 'manual', p.id from heroes h join heroes t on t.name = 'Hayabusa' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Saber закрывает Hayabusa', 'manual', p.id from heroes h join heroes t on t.name = 'Hayabusa' cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Kaja закрывает Hayabusa', 'manual', p.id from heroes h join heroes t on t.name = 'Hayabusa' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Minotaur закрывает Hayabusa', 'manual', p.id from heroes h join heroes t on t.name = 'Hayabusa' cross join patches p where h.name = 'Minotaur' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Rafaela закрывает Helcurt', 'manual', p.id from heroes h join heroes t on t.name = 'Helcurt' cross join patches p where h.name = 'Rafaela' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Diggie закрывает Helcurt', 'manual', p.id from heroes h join heroes t on t.name = 'Helcurt' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Khufra закрывает Helcurt', 'manual', p.id from heroes h join heroes t on t.name = 'Helcurt' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Kaja закрывает Helcurt', 'manual', p.id from heroes h join heroes t on t.name = 'Helcurt' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Valir закрывает Hilda', 'manual', p.id from heroes h join heroes t on t.name = 'Hilda' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Karrie закрывает Hilda', 'manual', p.id from heroes h join heroes t on t.name = 'Hilda' cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Baxia закрывает Hilda', 'manual', p.id from heroes h join heroes t on t.name = 'Hilda' cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Kaja закрывает Hilda', 'manual', p.id from heroes h join heroes t on t.name = 'Hilda' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Karrie закрывает Hylos', 'manual', p.id from heroes h join heroes t on t.name = 'Hylos' cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Valir закрывает Hylos', 'manual', p.id from heroes h join heroes t on t.name = 'Hylos' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Baxia закрывает Hylos', 'manual', p.id from heroes h join heroes t on t.name = 'Hylos' cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Kimmy закрывает Hylos', 'manual', p.id from heroes h join heroes t on t.name = 'Hylos' cross join patches p where h.name = 'Kimmy' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Lolita закрывает Irithel', 'manual', p.id from heroes h join heroes t on t.name = 'Irithel' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Hayabusa закрывает Irithel', 'manual', p.id from heroes h join heroes t on t.name = 'Irithel' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Saber закрывает Irithel', 'manual', p.id from heroes h join heroes t on t.name = 'Irithel' cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Harley закрывает Irithel', 'manual', p.id from heroes h join heroes t on t.name = 'Irithel' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Lolita закрывает Ixia', 'manual', p.id from heroes h join heroes t on t.name = 'Ixia' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Hayabusa закрывает Ixia', 'manual', p.id from heroes h join heroes t on t.name = 'Ixia' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Harley закрывает Ixia', 'manual', p.id from heroes h join heroes t on t.name = 'Ixia' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Saber закрывает Ixia', 'manual', p.id from heroes h join heroes t on t.name = 'Ixia' cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Diggie закрывает Jawhead', 'manual', p.id from heroes h join heroes t on t.name = 'Jawhead' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Valir закрывает Jawhead', 'manual', p.id from heroes h join heroes t on t.name = 'Jawhead' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Kaja закрывает Jawhead', 'manual', p.id from heroes h join heroes t on t.name = 'Jawhead' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Khufra закрывает Jawhead', 'manual', p.id from heroes h join heroes t on t.name = 'Jawhead' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Diggie закрывает Johnson', 'manual', p.id from heroes h join heroes t on t.name = 'Johnson' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Valir закрывает Johnson', 'manual', p.id from heroes h join heroes t on t.name = 'Johnson' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Minotaur закрывает Johnson', 'manual', p.id from heroes h join heroes t on t.name = 'Johnson' cross join patches p where h.name = 'Minotaur' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Kaja закрывает Johnson', 'manual', p.id from heroes h join heroes t on t.name = 'Johnson' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Minsitthar закрывает Joy', 'manual', p.id from heroes h join heroes t on t.name = 'Joy' cross join patches p where h.name = 'Minsitthar' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Khufra закрывает Joy', 'manual', p.id from heroes h join heroes t on t.name = 'Joy' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Kaja закрывает Joy', 'manual', p.id from heroes h join heroes t on t.name = 'Joy' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Phoveus закрывает Joy', 'manual', p.id from heroes h join heroes t on t.name = 'Joy' cross join patches p where h.name = 'Phoveus' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Kaja закрывает Julian', 'manual', p.id from heroes h join heroes t on t.name = 'Julian' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Khufra закрывает Julian', 'manual', p.id from heroes h join heroes t on t.name = 'Julian' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Minotaur закрывает Julian', 'manual', p.id from heroes h join heroes t on t.name = 'Julian' cross join patches p where h.name = 'Minotaur' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Saber закрывает Julian', 'manual', p.id from heroes h join heroes t on t.name = 'Julian' cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Diggie закрывает Kadita', 'manual', p.id from heroes h join heroes t on t.name = 'Kadita' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Lolita закрывает Kadita', 'manual', p.id from heroes h join heroes t on t.name = 'Kadita' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Khufra закрывает Kadita', 'manual', p.id from heroes h join heroes t on t.name = 'Kadita' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Kaja закрывает Kadita', 'manual', p.id from heroes h join heroes t on t.name = 'Kadita' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Lolita закрывает Kagura', 'manual', p.id from heroes h join heroes t on t.name = 'Kagura' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Hayabusa закрывает Kagura', 'manual', p.id from heroes h join heroes t on t.name = 'Kagura' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Harley закрывает Kagura', 'manual', p.id from heroes h join heroes t on t.name = 'Kagura' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Julian закрывает Kagura', 'manual', p.id from heroes h join heroes t on t.name = 'Kagura' cross join patches p where h.name = 'Julian' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Khufra закрывает Karina', 'manual', p.id from heroes h join heroes t on t.name = 'Karina' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Kaja закрывает Karina', 'manual', p.id from heroes h join heroes t on t.name = 'Karina' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Saber закрывает Karina', 'manual', p.id from heroes h join heroes t on t.name = 'Karina' cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Minotaur закрывает Karina', 'manual', p.id from heroes h join heroes t on t.name = 'Karina' cross join patches p where h.name = 'Minotaur' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Lolita закрывает Karrie', 'manual', p.id from heroes h join heroes t on t.name = 'Karrie' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Hayabusa закрывает Karrie', 'manual', p.id from heroes h join heroes t on t.name = 'Karrie' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Harley закрывает Karrie', 'manual', p.id from heroes h join heroes t on t.name = 'Karrie' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Saber закрывает Karrie', 'manual', p.id from heroes h join heroes t on t.name = 'Karrie' cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Valir закрывает Khaleed', 'manual', p.id from heroes h join heroes t on t.name = 'Khaleed' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Kaja закрывает Khaleed', 'manual', p.id from heroes h join heroes t on t.name = 'Khaleed' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Baxia закрывает Khaleed', 'manual', p.id from heroes h join heroes t on t.name = 'Khaleed' cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: X.Borg закрывает Khaleed', 'manual', p.id from heroes h join heroes t on t.name = 'Khaleed' cross join patches p where h.name = 'X.Borg' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Diggie закрывает Khufra', 'manual', p.id from heroes h join heroes t on t.name = 'Khufra' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Valir закрывает Khufra', 'manual', p.id from heroes h join heroes t on t.name = 'Khufra' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Karrie закрывает Khufra', 'manual', p.id from heroes h join heroes t on t.name = 'Khufra' cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Kimmy закрывает Khufra', 'manual', p.id from heroes h join heroes t on t.name = 'Khufra' cross join patches p where h.name = 'Kimmy' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Lolita закрывает Kimmy', 'manual', p.id from heroes h join heroes t on t.name = 'Kimmy' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Hayabusa закрывает Kimmy', 'manual', p.id from heroes h join heroes t on t.name = 'Kimmy' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Julian закрывает Kimmy', 'manual', p.id from heroes h join heroes t on t.name = 'Kimmy' cross join patches p where h.name = 'Julian' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Harley закрывает Kimmy', 'manual', p.id from heroes h join heroes t on t.name = 'Kimmy' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Khufra закрывает Lancelot', 'manual', p.id from heroes h join heroes t on t.name = 'Lancelot' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Kaja закрывает Lancelot', 'manual', p.id from heroes h join heroes t on t.name = 'Lancelot' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Saber закрывает Lancelot', 'manual', p.id from heroes h join heroes t on t.name = 'Lancelot' cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Minotaur закрывает Lancelot', 'manual', p.id from heroes h join heroes t on t.name = 'Lancelot' cross join patches p where h.name = 'Minotaur' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Valir закрывает Lapu-Lapu', 'manual', p.id from heroes h join heroes t on t.name = 'Lapu-Lapu' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Kaja закрывает Lapu-Lapu', 'manual', p.id from heroes h join heroes t on t.name = 'Lapu-Lapu' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Diggie закрывает Lapu-Lapu', 'manual', p.id from heroes h join heroes t on t.name = 'Lapu-Lapu' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: X.Borg закрывает Lapu-Lapu', 'manual', p.id from heroes h join heroes t on t.name = 'Lapu-Lapu' cross join patches p where h.name = 'X.Borg' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Lolita закрывает Layla', 'manual', p.id from heroes h join heroes t on t.name = 'Layla' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Hayabusa закрывает Layla', 'manual', p.id from heroes h join heroes t on t.name = 'Layla' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Harley закрывает Layla', 'manual', p.id from heroes h join heroes t on t.name = 'Layla' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Saber закрывает Layla', 'manual', p.id from heroes h join heroes t on t.name = 'Layla' cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Valir закрывает Leomord', 'manual', p.id from heroes h join heroes t on t.name = 'Leomord' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Kaja закрывает Leomord', 'manual', p.id from heroes h join heroes t on t.name = 'Leomord' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Khufra закрывает Leomord', 'manual', p.id from heroes h join heroes t on t.name = 'Leomord' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Minsitthar закрывает Leomord', 'manual', p.id from heroes h join heroes t on t.name = 'Leomord' cross join patches p where h.name = 'Minsitthar' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Lolita закрывает Lesley', 'manual', p.id from heroes h join heroes t on t.name = 'Lesley' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Hayabusa закрывает Lesley', 'manual', p.id from heroes h join heroes t on t.name = 'Lesley' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Harley закрывает Lesley', 'manual', p.id from heroes h join heroes t on t.name = 'Lesley' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Saber закрывает Lesley', 'manual', p.id from heroes h join heroes t on t.name = 'Lesley' cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Khufra закрывает Ling', 'manual', p.id from heroes h join heroes t on t.name = 'Ling' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Saber закрывает Ling', 'manual', p.id from heroes h join heroes t on t.name = 'Ling' cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Kaja закрывает Ling', 'manual', p.id from heroes h join heroes t on t.name = 'Ling' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Minotaur закрывает Ling', 'manual', p.id from heroes h join heroes t on t.name = 'Ling' cross join patches p where h.name = 'Minotaur' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Diggie закрывает Lolita', 'manual', p.id from heroes h join heroes t on t.name = 'Lolita' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Valir закрывает Lolita', 'manual', p.id from heroes h join heroes t on t.name = 'Lolita' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Gloo закрывает Lolita', 'manual', p.id from heroes h join heroes t on t.name = 'Lolita' cross join patches p where h.name = 'Gloo' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Karrie закрывает Lolita', 'manual', p.id from heroes h join heroes t on t.name = 'Lolita' cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Lolita закрывает Lunox', 'manual', p.id from heroes h join heroes t on t.name = 'Lunox' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Hayabusa закрывает Lunox', 'manual', p.id from heroes h join heroes t on t.name = 'Lunox' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Harley закрывает Lunox', 'manual', p.id from heroes h join heroes t on t.name = 'Lunox' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Julian закрывает Lunox', 'manual', p.id from heroes h join heroes t on t.name = 'Lunox' cross join patches p where h.name = 'Julian' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Hayabusa закрывает Luo Yi', 'manual', p.id from heroes h join heroes t on t.name = 'Luo Yi' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Lancelot закрывает Luo Yi', 'manual', p.id from heroes h join heroes t on t.name = 'Luo Yi' cross join patches p where h.name = 'Lancelot' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Harley закрывает Luo Yi', 'manual', p.id from heroes h join heroes t on t.name = 'Luo Yi' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Lolita закрывает Luo Yi', 'manual', p.id from heroes h join heroes t on t.name = 'Luo Yi' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Lolita закрывает Lylia', 'manual', p.id from heroes h join heroes t on t.name = 'Lylia' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Hayabusa закрывает Lylia', 'manual', p.id from heroes h join heroes t on t.name = 'Lylia' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Harley закрывает Lylia', 'manual', p.id from heroes h join heroes t on t.name = 'Lylia' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Julian закрывает Lylia', 'manual', p.id from heroes h join heroes t on t.name = 'Lylia' cross join patches p where h.name = 'Julian' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Valir закрывает Martis', 'manual', p.id from heroes h join heroes t on t.name = 'Martis' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Kaja закрывает Martis', 'manual', p.id from heroes h join heroes t on t.name = 'Martis' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Khufra закрывает Martis', 'manual', p.id from heroes h join heroes t on t.name = 'Martis' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Minsitthar закрывает Martis', 'manual', p.id from heroes h join heroes t on t.name = 'Martis' cross join patches p where h.name = 'Minsitthar' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Valir закрывает Masha', 'manual', p.id from heroes h join heroes t on t.name = 'Masha' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Kaja закрывает Masha', 'manual', p.id from heroes h join heroes t on t.name = 'Masha' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Karrie закрывает Masha', 'manual', p.id from heroes h join heroes t on t.name = 'Masha' cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Baxia закрывает Masha', 'manual', p.id from heroes h join heroes t on t.name = 'Masha' cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Khufra закрывает Mathilda', 'manual', p.id from heroes h join heroes t on t.name = 'Mathilda' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Minsitthar закрывает Mathilda', 'manual', p.id from heroes h join heroes t on t.name = 'Mathilda' cross join patches p where h.name = 'Minsitthar' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Kaja закрывает Mathilda', 'manual', p.id from heroes h join heroes t on t.name = 'Mathilda' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Phoveus закрывает Mathilda', 'manual', p.id from heroes h join heroes t on t.name = 'Mathilda' cross join patches p where h.name = 'Phoveus' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Lolita закрывает Melissa', 'manual', p.id from heroes h join heroes t on t.name = 'Melissa' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Hayabusa закрывает Melissa', 'manual', p.id from heroes h join heroes t on t.name = 'Melissa' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Harley закрывает Melissa', 'manual', p.id from heroes h join heroes t on t.name = 'Melissa' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Saber закрывает Melissa', 'manual', p.id from heroes h join heroes t on t.name = 'Melissa' cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Diggie закрывает Minotaur', 'manual', p.id from heroes h join heroes t on t.name = 'Minotaur' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Valir закрывает Minotaur', 'manual', p.id from heroes h join heroes t on t.name = 'Minotaur' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Karrie закрывает Minotaur', 'manual', p.id from heroes h join heroes t on t.name = 'Minotaur' cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Baxia закрывает Minotaur', 'manual', p.id from heroes h join heroes t on t.name = 'Minotaur' cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Valir закрывает Minsitthar', 'manual', p.id from heroes h join heroes t on t.name = 'Minsitthar' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Diggie закрывает Minsitthar', 'manual', p.id from heroes h join heroes t on t.name = 'Minsitthar' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Karrie закрывает Minsitthar', 'manual', p.id from heroes h join heroes t on t.name = 'Minsitthar' cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Pharsa закрывает Minsitthar', 'manual', p.id from heroes h join heroes t on t.name = 'Minsitthar' cross join patches p where h.name = 'Pharsa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Lolita закрывает Miya', 'manual', p.id from heroes h join heroes t on t.name = 'Miya' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Hayabusa закрывает Miya', 'manual', p.id from heroes h join heroes t on t.name = 'Miya' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Harley закрывает Miya', 'manual', p.id from heroes h join heroes t on t.name = 'Miya' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Saber закрывает Miya', 'manual', p.id from heroes h join heroes t on t.name = 'Miya' cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Lolita закрывает Moskov', 'manual', p.id from heroes h join heroes t on t.name = 'Moskov' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Hayabusa закрывает Moskov', 'manual', p.id from heroes h join heroes t on t.name = 'Moskov' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Harley закрывает Moskov', 'manual', p.id from heroes h join heroes t on t.name = 'Moskov' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Saber закрывает Moskov', 'manual', p.id from heroes h join heroes t on t.name = 'Moskov' cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Lolita закрывает Nana', 'manual', p.id from heroes h join heroes t on t.name = 'Nana' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Hayabusa закрывает Nana', 'manual', p.id from heroes h join heroes t on t.name = 'Nana' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Harley закрывает Nana', 'manual', p.id from heroes h join heroes t on t.name = 'Nana' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Julian закрывает Nana', 'manual', p.id from heroes h join heroes t on t.name = 'Nana' cross join patches p where h.name = 'Julian' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Rafaela закрывает Natalia', 'manual', p.id from heroes h join heroes t on t.name = 'Natalia' cross join patches p where h.name = 'Rafaela' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Hylos закрывает Natalia', 'manual', p.id from heroes h join heroes t on t.name = 'Natalia' cross join patches p where h.name = 'Hylos' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Diggie закрывает Natalia', 'manual', p.id from heroes h join heroes t on t.name = 'Natalia' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Saber закрывает Natalia', 'manual', p.id from heroes h join heroes t on t.name = 'Natalia' cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Lolita закрывает Natan', 'manual', p.id from heroes h join heroes t on t.name = 'Natan' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Hayabusa закрывает Natan', 'manual', p.id from heroes h join heroes t on t.name = 'Natan' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Harley закрывает Natan', 'manual', p.id from heroes h join heroes t on t.name = 'Natan' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Saber закрывает Natan', 'manual', p.id from heroes h join heroes t on t.name = 'Natan' cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Khufra закрывает Nolan', 'manual', p.id from heroes h join heroes t on t.name = 'Nolan' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Kaja закрывает Nolan', 'manual', p.id from heroes h join heroes t on t.name = 'Nolan' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Minsitthar закрывает Nolan', 'manual', p.id from heroes h join heroes t on t.name = 'Nolan' cross join patches p where h.name = 'Minsitthar' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Phoveus закрывает Nolan', 'manual', p.id from heroes h join heroes t on t.name = 'Nolan' cross join patches p where h.name = 'Phoveus' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Lolita закрывает Novaria', 'manual', p.id from heroes h join heroes t on t.name = 'Novaria' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Hayabusa закрывает Novaria', 'manual', p.id from heroes h join heroes t on t.name = 'Novaria' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Harley закрывает Novaria', 'manual', p.id from heroes h join heroes t on t.name = 'Novaria' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Natalia закрывает Novaria', 'manual', p.id from heroes h join heroes t on t.name = 'Novaria' cross join patches p where h.name = 'Natalia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Diggie закрывает Odette', 'manual', p.id from heroes h join heroes t on t.name = 'Odette' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Kadita закрывает Odette', 'manual', p.id from heroes h join heroes t on t.name = 'Odette' cross join patches p where h.name = 'Kadita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Chou закрывает Odette', 'manual', p.id from heroes h join heroes t on t.name = 'Odette' cross join patches p where h.name = 'Chou' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Valir закрывает Odette', 'manual', p.id from heroes h join heroes t on t.name = 'Odette' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Khufra закрывает Paquito', 'manual', p.id from heroes h join heroes t on t.name = 'Paquito' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Kaja закрывает Paquito', 'manual', p.id from heroes h join heroes t on t.name = 'Paquito' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Minsitthar закрывает Paquito', 'manual', p.id from heroes h join heroes t on t.name = 'Paquito' cross join patches p where h.name = 'Minsitthar' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Valir закрывает Paquito', 'manual', p.id from heroes h join heroes t on t.name = 'Paquito' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Hayabusa закрывает Pharsa', 'manual', p.id from heroes h join heroes t on t.name = 'Pharsa' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Harley закрывает Pharsa', 'manual', p.id from heroes h join heroes t on t.name = 'Pharsa' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Julian закрывает Pharsa', 'manual', p.id from heroes h join heroes t on t.name = 'Pharsa' cross join patches p where h.name = 'Julian' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Lancelot закрывает Pharsa', 'manual', p.id from heroes h join heroes t on t.name = 'Pharsa' cross join patches p where h.name = 'Lancelot' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Valir закрывает Phoveus', 'manual', p.id from heroes h join heroes t on t.name = 'Phoveus' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Karrie закрывает Phoveus', 'manual', p.id from heroes h join heroes t on t.name = 'Phoveus' cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Kimmy закрывает Phoveus', 'manual', p.id from heroes h join heroes t on t.name = 'Phoveus' cross join patches p where h.name = 'Kimmy' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: X.Borg закрывает Phoveus', 'manual', p.id from heroes h join heroes t on t.name = 'Phoveus' cross join patches p where h.name = 'X.Borg' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Lolita закрывает Popol and Kupa', 'manual', p.id from heroes h join heroes t on t.name = 'Popol and Kupa' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Hayabusa закрывает Popol and Kupa', 'manual', p.id from heroes h join heroes t on t.name = 'Popol and Kupa' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Harley закрывает Popol and Kupa', 'manual', p.id from heroes h join heroes t on t.name = 'Popol and Kupa' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Saber закрывает Popol and Kupa', 'manual', p.id from heroes h join heroes t on t.name = 'Popol and Kupa' cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Baxia закрывает Rafaela', 'manual', p.id from heroes h join heroes t on t.name = 'Rafaela' cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Luo Yi закрывает Rafaela', 'manual', p.id from heroes h join heroes t on t.name = 'Rafaela' cross join patches p where h.name = 'Luo Yi' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Atlas закрывает Rafaela', 'manual', p.id from heroes h join heroes t on t.name = 'Rafaela' cross join patches p where h.name = 'Atlas' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Natalia закрывает Rafaela', 'manual', p.id from heroes h join heroes t on t.name = 'Rafaela' cross join patches p where h.name = 'Natalia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Khufra закрывает Roger', 'manual', p.id from heroes h join heroes t on t.name = 'Roger' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Kaja закрывает Roger', 'manual', p.id from heroes h join heroes t on t.name = 'Roger' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Valir закрывает Roger', 'manual', p.id from heroes h join heroes t on t.name = 'Roger' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Saber закрывает Roger', 'manual', p.id from heroes h join heroes t on t.name = 'Roger' cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Baxia закрывает Ruby', 'manual', p.id from heroes h join heroes t on t.name = 'Ruby' cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Valir закрывает Ruby', 'manual', p.id from heroes h join heroes t on t.name = 'Ruby' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Karrie закрывает Ruby', 'manual', p.id from heroes h join heroes t on t.name = 'Ruby' cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Diggie закрывает Ruby', 'manual', p.id from heroes h join heroes t on t.name = 'Ruby' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Diggie закрывает Saber', 'manual', p.id from heroes h join heroes t on t.name = 'Saber' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Gloo закрывает Saber', 'manual', p.id from heroes h join heroes t on t.name = 'Saber' cross join patches p where h.name = 'Gloo' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Fredrinn закрывает Saber', 'manual', p.id from heroes h join heroes t on t.name = 'Saber' cross join patches p where h.name = 'Fredrinn' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Minotaur закрывает Saber', 'manual', p.id from heroes h join heroes t on t.name = 'Saber' cross join patches p where h.name = 'Minotaur' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Lolita закрывает Selena', 'manual', p.id from heroes h join heroes t on t.name = 'Selena' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Diggie закрывает Selena', 'manual', p.id from heroes h join heroes t on t.name = 'Selena' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Natalia закрывает Selena', 'manual', p.id from heroes h join heroes t on t.name = 'Selena' cross join patches p where h.name = 'Natalia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Hylos закрывает Selena', 'manual', p.id from heroes h join heroes t on t.name = 'Selena' cross join patches p where h.name = 'Hylos' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Diggie закрывает Silvanna', 'manual', p.id from heroes h join heroes t on t.name = 'Silvanna' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Valir закрывает Silvanna', 'manual', p.id from heroes h join heroes t on t.name = 'Silvanna' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Kaja закрывает Silvanna', 'manual', p.id from heroes h join heroes t on t.name = 'Silvanna' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Khufra закрывает Silvanna', 'manual', p.id from heroes h join heroes t on t.name = 'Silvanna' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Phoveus закрывает Sora', 'manual', p.id from heroes h join heroes t on t.name = 'Sora' cross join patches p where h.name = 'Phoveus' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Kaja закрывает Sora', 'manual', p.id from heroes h join heroes t on t.name = 'Sora' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Valir закрывает Sora', 'manual', p.id from heroes h join heroes t on t.name = 'Sora' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Khufra закрывает Sora', 'manual', p.id from heroes h join heroes t on t.name = 'Sora' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: X.Borg закрывает Sun', 'manual', p.id from heroes h join heroes t on t.name = 'Sun' cross join patches p where h.name = 'X.Borg' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Belerick закрывает Sun', 'manual', p.id from heroes h join heroes t on t.name = 'Sun' cross join patches p where h.name = 'Belerick' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Valir закрывает Sun', 'manual', p.id from heroes h join heroes t on t.name = 'Sun' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Gloo закрывает Sun', 'manual', p.id from heroes h join heroes t on t.name = 'Sun' cross join patches p where h.name = 'Gloo' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Khufra закрывает Suyou', 'manual', p.id from heroes h join heroes t on t.name = 'Suyou' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Kaja закрывает Suyou', 'manual', p.id from heroes h join heroes t on t.name = 'Suyou' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Minsitthar закрывает Suyou', 'manual', p.id from heroes h join heroes t on t.name = 'Suyou' cross join patches p where h.name = 'Minsitthar' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Phoveus закрывает Suyou', 'manual', p.id from heroes h join heroes t on t.name = 'Suyou' cross join patches p where h.name = 'Phoveus' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Valir закрывает Terizla', 'manual', p.id from heroes h join heroes t on t.name = 'Terizla' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Karrie закрывает Terizla', 'manual', p.id from heroes h join heroes t on t.name = 'Terizla' cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Baxia закрывает Terizla', 'manual', p.id from heroes h join heroes t on t.name = 'Terizla' cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Diggie закрывает Terizla', 'manual', p.id from heroes h join heroes t on t.name = 'Terizla' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Valir закрывает Thamuz', 'manual', p.id from heroes h join heroes t on t.name = 'Thamuz' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Karrie закрывает Thamuz', 'manual', p.id from heroes h join heroes t on t.name = 'Thamuz' cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Baxia закрывает Thamuz', 'manual', p.id from heroes h join heroes t on t.name = 'Thamuz' cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: X.Borg закрывает Thamuz', 'manual', p.id from heroes h join heroes t on t.name = 'Thamuz' cross join patches p where h.name = 'X.Borg' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Diggie закрывает Tigreal', 'manual', p.id from heroes h join heroes t on t.name = 'Tigreal' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Valir закрывает Tigreal', 'manual', p.id from heroes h join heroes t on t.name = 'Tigreal' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Karrie закрывает Tigreal', 'manual', p.id from heroes h join heroes t on t.name = 'Tigreal' cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Minotaur закрывает Tigreal', 'manual', p.id from heroes h join heroes t on t.name = 'Tigreal' cross join patches p where h.name = 'Minotaur' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Karrie закрывает Uranus', 'manual', p.id from heroes h join heroes t on t.name = 'Uranus' cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Kimmy закрывает Uranus', 'manual', p.id from heroes h join heroes t on t.name = 'Uranus' cross join patches p where h.name = 'Kimmy' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Baxia закрывает Uranus', 'manual', p.id from heroes h join heroes t on t.name = 'Uranus' cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Valir закрывает Uranus', 'manual', p.id from heroes h join heroes t on t.name = 'Uranus' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Lolita закрывает Vale', 'manual', p.id from heroes h join heroes t on t.name = 'Vale' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Hayabusa закрывает Vale', 'manual', p.id from heroes h join heroes t on t.name = 'Vale' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Harley закрывает Vale', 'manual', p.id from heroes h join heroes t on t.name = 'Vale' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Julian закрывает Vale', 'manual', p.id from heroes h join heroes t on t.name = 'Vale' cross join patches p where h.name = 'Julian' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Hayabusa закрывает Valentina', 'manual', p.id from heroes h join heroes t on t.name = 'Valentina' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Harley закрывает Valentina', 'manual', p.id from heroes h join heroes t on t.name = 'Valentina' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Julian закрывает Valentina', 'manual', p.id from heroes h join heroes t on t.name = 'Valentina' cross join patches p where h.name = 'Julian' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Lolita закрывает Valentina', 'manual', p.id from heroes h join heroes t on t.name = 'Valentina' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Pharsa закрывает Valir', 'manual', p.id from heroes h join heroes t on t.name = 'Valir' cross join patches p where h.name = 'Pharsa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Hayabusa закрывает Valir', 'manual', p.id from heroes h join heroes t on t.name = 'Valir' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Harley закрывает Valir', 'manual', p.id from heroes h join heroes t on t.name = 'Valir' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Lancelot закрывает Valir', 'manual', p.id from heroes h join heroes t on t.name = 'Valir' cross join patches p where h.name = 'Lancelot' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Lolita закрывает Vexana', 'manual', p.id from heroes h join heroes t on t.name = 'Vexana' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Hayabusa закрывает Vexana', 'manual', p.id from heroes h join heroes t on t.name = 'Vexana' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Harley закрывает Vexana', 'manual', p.id from heroes h join heroes t on t.name = 'Vexana' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Julian закрывает Vexana', 'manual', p.id from heroes h join heroes t on t.name = 'Vexana' cross join patches p where h.name = 'Julian' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Khufra закрывает Wanwan', 'manual', p.id from heroes h join heroes t on t.name = 'Wanwan' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Minsitthar закрывает Wanwan', 'manual', p.id from heroes h join heroes t on t.name = 'Wanwan' cross join patches p where h.name = 'Minsitthar' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Kaja закрывает Wanwan', 'manual', p.id from heroes h join heroes t on t.name = 'Wanwan' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Saber закрывает Wanwan', 'manual', p.id from heroes h join heroes t on t.name = 'Wanwan' cross join patches p where h.name = 'Saber' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Lolita закрывает Xavier', 'manual', p.id from heroes h join heroes t on t.name = 'Xavier' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Hayabusa закрывает Xavier', 'manual', p.id from heroes h join heroes t on t.name = 'Xavier' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Harley закрывает Xavier', 'manual', p.id from heroes h join heroes t on t.name = 'Xavier' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Julian закрывает Xavier', 'manual', p.id from heroes h join heroes t on t.name = 'Xavier' cross join patches p where h.name = 'Julian' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Karrie закрывает X.Borg', 'manual', p.id from heroes h join heroes t on t.name = 'X.Borg' cross join patches p where h.name = 'Karrie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Kimmy закрывает X.Borg', 'manual', p.id from heroes h join heroes t on t.name = 'X.Borg' cross join patches p where h.name = 'Kimmy' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Baxia закрывает X.Borg', 'manual', p.id from heroes h join heroes t on t.name = 'X.Borg' cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Valir закрывает X.Borg', 'manual', p.id from heroes h join heroes t on t.name = 'X.Borg' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Diggie закрывает Yin', 'manual', p.id from heroes h join heroes t on t.name = 'Yin' cross join patches p where h.name = 'Diggie' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Valir закрывает Yin', 'manual', p.id from heroes h join heroes t on t.name = 'Yin' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Kaja закрывает Yin', 'manual', p.id from heroes h join heroes t on t.name = 'Yin' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Khufra закрывает Yin', 'manual', p.id from heroes h join heroes t on t.name = 'Yin' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Lolita закрывает Yi Sun-shin', 'manual', p.id from heroes h join heroes t on t.name = 'Yi Sun-shin' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Khufra закрывает Yi Sun-shin', 'manual', p.id from heroes h join heroes t on t.name = 'Yi Sun-shin' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Fredrinn закрывает Yi Sun-shin', 'manual', p.id from heroes h join heroes t on t.name = 'Yi Sun-shin' cross join patches p where h.name = 'Fredrinn' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Natalia закрывает Yi Sun-shin', 'manual', p.id from heroes h join heroes t on t.name = 'Yi Sun-shin' cross join patches p where h.name = 'Natalia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Valir закрывает Yu Zhong', 'manual', p.id from heroes h join heroes t on t.name = 'Yu Zhong' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Kaja закрывает Yu Zhong', 'manual', p.id from heroes h join heroes t on t.name = 'Yu Zhong' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Baxia закрывает Yu Zhong', 'manual', p.id from heroes h join heroes t on t.name = 'Yu Zhong' cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: X.Borg закрывает Yu Zhong', 'manual', p.id from heroes h join heroes t on t.name = 'Yu Zhong' cross join patches p where h.name = 'X.Borg' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Lolita закрывает Zhask', 'manual', p.id from heroes h join heroes t on t.name = 'Zhask' cross join patches p where h.name = 'Lolita' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Hayabusa закрывает Zhask', 'manual', p.id from heroes h join heroes t on t.name = 'Zhask' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Harley закрывает Zhask', 'manual', p.id from heroes h join heroes t on t.name = 'Zhask' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Julian закрывает Zhask', 'manual', p.id from heroes h join heroes t on t.name = 'Zhask' cross join patches p where h.name = 'Julian' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Hayabusa закрывает Zhuxin', 'manual', p.id from heroes h join heroes t on t.name = 'Zhuxin' cross join patches p where h.name = 'Hayabusa' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Julian закрывает Zhuxin', 'manual', p.id from heroes h join heroes t on t.name = 'Zhuxin' cross join patches p where h.name = 'Julian' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Gusion закрывает Zhuxin', 'manual', p.id from heroes h join heroes t on t.name = 'Zhuxin' cross join patches p where h.name = 'Gusion' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Harley закрывает Zhuxin', 'manual', p.id from heroes h join heroes t on t.name = 'Zhuxin' cross join patches p where h.name = 'Harley' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 95, 'Counter chart: Khufra закрывает Zilong', 'manual', p.id from heroes h join heroes t on t.name = 'Zilong' cross join patches p where h.name = 'Khufra' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 87, 'Counter chart: Kaja закрывает Zilong', 'manual', p.id from heroes h join heroes t on t.name = 'Zilong' cross join patches p where h.name = 'Kaja' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 79, 'Counter chart: Minsitthar закрывает Zilong', 'manual', p.id from heroes h join heroes t on t.name = 'Zilong' cross join patches p where h.name = 'Minsitthar' and p.version = '2026.05.07.06' on conflict do nothing;
insert into matchups (hero_id, target_hero_id, relation, weight, reason, source_type, patch_id)
select h.id, t.id, 'counters', 71, 'Counter chart: Valir закрывает Zilong', 'manual', p.id from heroes h join heroes t on t.name = 'Zilong' cross join patches p where h.name = 'Valir' and p.version = '2026.05.07.06' on conflict do nothing;

-- Pro build plans
insert into pro_builds (hero_id, patch_id, role, style, confidence, source_name, notes)
select h.id, p.id, null, 'pro gold DPS', 85, 'MPL PH gold-lane pattern + high-rank core', 'Уверенность: высокая' from heroes h cross join patches p where h.name = 'Claude' and p.version = '2026.05.07.06';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 1, '0:45-1:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Swift Boots' where h.name = 'Claude' and b.style = 'pro gold DPS';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 2, '3:00-4:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Demon Hunter Sword' where h.name = 'Claude' and b.style = 'pro gold DPS';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 3, '5:30-7:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Golden Staff' where h.name = 'Claude' and b.style = 'pro gold DPS';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 4, '8:00-10:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Corrosion Scythe' where h.name = 'Claude' and b.style = 'pro gold DPS';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 5, '11:00-14:00', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Malefic Roar' where h.name = 'Claude' and b.style = 'pro gold DPS';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 6, '15:00+', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Wind of Nature' where h.name = 'Claude' and b.style = 'pro gold DPS';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 1, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Rose Gold Meteor' where h.name = 'Claude' and b.style = 'pro gold DPS';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 2, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Immortality' where h.name = 'Claude' and b.style = 'pro gold DPS';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 3, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Sea Halberd' where h.name = 'Claude' and b.style = 'pro gold DPS';
insert into pro_builds (hero_id, patch_id, role, style, confidence, source_name, notes)
select h.id, p.id, null, 'pro mid zone control', 85, 'MPL ID/PH mid-control pattern', 'Уверенность: высокая' from heroes h cross join patches p where h.name = 'Zhuxin' and p.version = '2026.05.07.06';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 1, '0:45-1:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Demon Shoes' where h.name = 'Zhuxin' and b.style = 'pro mid zone control';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 2, '3:00-4:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Enchanted Talisman' where h.name = 'Zhuxin' and b.style = 'pro mid zone control';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 3, '5:30-7:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Ice Queen Wand' where h.name = 'Zhuxin' and b.style = 'pro mid zone control';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 4, '8:00-10:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Glowing Wand' where h.name = 'Zhuxin' and b.style = 'pro mid zone control';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 5, '11:00-14:00', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Divine Glaive' where h.name = 'Zhuxin' and b.style = 'pro mid zone control';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 6, '15:00+', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Winter Crown' where h.name = 'Zhuxin' and b.style = 'pro mid zone control';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 1, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Necklace of Durance' where h.name = 'Zhuxin' and b.style = 'pro mid zone control';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 2, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Fleeting Time' where h.name = 'Zhuxin' and b.style = 'pro mid zone control';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 3, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Immortality' where h.name = 'Zhuxin' and b.style = 'pro mid zone control';
insert into pro_builds (hero_id, patch_id, role, style, confidence, source_name, notes)
select h.id, p.id, null, 'pro objective control', 85, 'MPL ID zone-control pattern', 'Уверенность: высокая' from heroes h cross join patches p where h.name = 'Yve' and p.version = '2026.05.07.06';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 1, '0:45-1:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Demon Shoes' where h.name = 'Yve' and b.style = 'pro objective control';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 2, '3:00-4:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Enchanted Talisman' where h.name = 'Yve' and b.style = 'pro objective control';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 3, '5:30-7:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Ice Queen Wand' where h.name = 'Yve' and b.style = 'pro objective control';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 4, '8:00-10:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Glowing Wand' where h.name = 'Yve' and b.style = 'pro objective control';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 5, '11:00-14:00', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Divine Glaive' where h.name = 'Yve' and b.style = 'pro objective control';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 6, '15:00+', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Winter Crown' where h.name = 'Yve' and b.style = 'pro objective control';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 1, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Necklace of Durance' where h.name = 'Yve' and b.style = 'pro objective control';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 2, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Holy Crystal' where h.name = 'Yve' and b.style = 'pro objective control';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 3, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Immortality' where h.name = 'Yve' and b.style = 'pro objective control';
insert into pro_builds (hero_id, patch_id, role, style, confidence, source_name, notes)
select h.id, p.id, null, 'pro flex mage', 70, 'MPL PH mid flex pattern', 'Уверенность: средняя' from heroes h cross join patches p where h.name = 'Valentina' and p.version = '2026.05.07.06';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 1, '0:45-1:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Arcane Boots' where h.name = 'Valentina' and b.style = 'pro flex mage';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 2, '3:00-4:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Enchanted Talisman' where h.name = 'Valentina' and b.style = 'pro flex mage';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 3, '5:30-7:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Genius Wand' where h.name = 'Valentina' and b.style = 'pro flex mage';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 4, '8:00-10:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Lightning Truncheon' where h.name = 'Valentina' and b.style = 'pro flex mage';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 5, '11:00-14:00', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Divine Glaive' where h.name = 'Valentina' and b.style = 'pro flex mage';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 6, '15:00+', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Winter Crown' where h.name = 'Valentina' and b.style = 'pro flex mage';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 1, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Necklace of Durance' where h.name = 'Valentina' and b.style = 'pro flex mage';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 2, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Holy Crystal' where h.name = 'Valentina' and b.style = 'pro flex mage';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 3, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Immortality' where h.name = 'Valentina' and b.style = 'pro flex mage';
insert into pro_builds (hero_id, patch_id, role, style, confidence, source_name, notes)
select h.id, p.id, null, 'pro snowball jungle', 70, 'pro jungle snowball pattern', 'Уверенность: средняя' from heroes h cross join patches p where h.name = 'Fanny' and p.version = '2026.05.07.06';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 1, '0:45-1:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Tough Boots' where h.name = 'Fanny' and b.style = 'pro snowball jungle';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 2, '3:00-4:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Sky Piercer' where h.name = 'Fanny' and b.style = 'pro snowball jungle';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 3, '5:30-7:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Blade of the Heptaseas' where h.name = 'Fanny' and b.style = 'pro snowball jungle';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 4, '8:00-10:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Hunter Strike' where h.name = 'Fanny' and b.style = 'pro snowball jungle';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 5, '11:00-14:00', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Malefic Roar' where h.name = 'Fanny' and b.style = 'pro snowball jungle';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 6, '15:00+', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Immortality' where h.name = 'Fanny' and b.style = 'pro snowball jungle';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 1, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Rose Gold Meteor' where h.name = 'Fanny' and b.style = 'pro snowball jungle';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 2, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Blade of Despair' where h.name = 'Fanny' and b.style = 'pro snowball jungle';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 3, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Sea Halberd' where h.name = 'Fanny' and b.style = 'pro snowball jungle';
insert into pro_builds (hero_id, patch_id, role, style, confidence, source_name, notes)
select h.id, p.id, null, 'pro fighter burst DPS', 70, 'MPL ban-priority fighter pattern', 'Уверенность: средняя' from heroes h cross join patches p where h.name = 'Freya' and p.version = '2026.05.07.06';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 1, '0:45-1:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Warrior Boots' where h.name = 'Freya' and b.style = 'pro fighter burst DPS';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 2, '3:00-4:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'War Axe' where h.name = 'Freya' and b.style = 'pro fighter burst DPS';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 3, '5:30-7:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Haas''s Claws' where h.name = 'Freya' and b.style = 'pro fighter burst DPS';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 4, '8:00-10:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Malefic Roar' where h.name = 'Freya' and b.style = 'pro fighter burst DPS';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 5, '11:00-14:00', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Queen''s Wings' where h.name = 'Freya' and b.style = 'pro fighter burst DPS';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 6, '15:00+', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Immortality' where h.name = 'Freya' and b.style = 'pro fighter burst DPS';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 1, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Sea Halberd' where h.name = 'Freya' and b.style = 'pro fighter burst DPS';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 2, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Rose Gold Meteor' where h.name = 'Freya' and b.style = 'pro fighter burst DPS';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 3, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Wind of Nature' where h.name = 'Freya' and b.style = 'pro fighter burst DPS';
insert into pro_builds (hero_id, patch_id, role, style, confidence, source_name, notes)
select h.id, p.id, null, 'pro anti-heal tempo', 85, 'MPL PH/ID anti-sustain tank pattern', 'Уверенность: высокая' from heroes h cross join patches p where h.name = 'Baxia' and p.version = '2026.05.07.06';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 1, '0:45-1:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Tough Boots' where h.name = 'Baxia' and b.style = 'pro anti-heal tempo';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 2, '3:00-4:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Dominance Ice' where h.name = 'Baxia' and b.style = 'pro anti-heal tempo';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 3, '5:30-7:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Thunder Belt' where h.name = 'Baxia' and b.style = 'pro anti-heal tempo';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 4, '8:00-10:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Antique Cuirass' where h.name = 'Baxia' and b.style = 'pro anti-heal tempo';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 5, '11:00-14:00', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Athena''s Shield' where h.name = 'Baxia' and b.style = 'pro anti-heal tempo';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 6, '15:00+', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Immortality' where h.name = 'Baxia' and b.style = 'pro anti-heal tempo';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 1, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Radiant Armor' where h.name = 'Baxia' and b.style = 'pro anti-heal tempo';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 2, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Oracle' where h.name = 'Baxia' and b.style = 'pro anti-heal tempo';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 3, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Brute Force Breastplate' where h.name = 'Baxia' and b.style = 'pro anti-heal tempo';
insert into pro_builds (hero_id, patch_id, role, style, confidence, source_name, notes)
select h.id, p.id, null, 'pro EXP sustain front', 85, 'MPL ID EXP/front pattern', 'Уверенность: высокая' from heroes h cross join patches p where h.name = 'Gloo' and p.version = '2026.05.07.06';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 1, '0:45-1:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Tough Boots' where h.name = 'Gloo' and b.style = 'pro EXP sustain front';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 2, '3:00-4:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Thunder Belt' where h.name = 'Gloo' and b.style = 'pro EXP sustain front';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 3, '5:30-7:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Dominance Ice' where h.name = 'Gloo' and b.style = 'pro EXP sustain front';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 4, '8:00-10:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Oracle' where h.name = 'Gloo' and b.style = 'pro EXP sustain front';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 5, '11:00-14:00', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Athena''s Shield' where h.name = 'Gloo' and b.style = 'pro EXP sustain front';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 6, '15:00+', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Immortality' where h.name = 'Gloo' and b.style = 'pro EXP sustain front';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 1, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Antique Cuirass' where h.name = 'Gloo' and b.style = 'pro EXP sustain front';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 2, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Radiant Armor' where h.name = 'Gloo' and b.style = 'pro EXP sustain front';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 3, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Brute Force Breastplate' where h.name = 'Gloo' and b.style = 'pro EXP sustain front';
insert into pro_builds (hero_id, patch_id, role, style, confidence, source_name, notes)
select h.id, p.id, null, 'pro early pressure EXP', 70, 'MPL PH early-pressure EXP pattern', 'Уверенность: средняя' from heroes h cross join patches p where h.name = 'Khaleed' and p.version = '2026.05.07.06';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 1, '0:45-1:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Warrior Boots' where h.name = 'Khaleed' and b.style = 'pro early pressure EXP';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 2, '3:00-4:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'War Axe' where h.name = 'Khaleed' and b.style = 'pro early pressure EXP';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 3, '5:30-7:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Hunter Strike' where h.name = 'Khaleed' and b.style = 'pro early pressure EXP';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 4, '8:00-10:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Queen''s Wings' where h.name = 'Khaleed' and b.style = 'pro early pressure EXP';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 5, '11:00-14:00', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Malefic Roar' where h.name = 'Khaleed' and b.style = 'pro early pressure EXP';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 6, '15:00+', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Immortality' where h.name = 'Khaleed' and b.style = 'pro early pressure EXP';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 1, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Sea Halberd' where h.name = 'Khaleed' and b.style = 'pro early pressure EXP';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 2, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Antique Cuirass' where h.name = 'Khaleed' and b.style = 'pro early pressure EXP';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 3, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Athena''s Shield' where h.name = 'Khaleed' and b.style = 'pro early pressure EXP';
insert into pro_builds (hero_id, patch_id, role, style, confidence, source_name, notes)
select h.id, p.id, null, 'pro tempo jungle', 70, 'MPL ID/PH tempo jungle pattern', 'Уверенность: средняя' from heroes h cross join patches p where h.name = 'Leomord' and p.version = '2026.05.07.06';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 1, '0:45-1:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Tough Boots' where h.name = 'Leomord' and b.style = 'pro tempo jungle';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 2, '3:00-4:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'War Axe' where h.name = 'Leomord' and b.style = 'pro tempo jungle';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 3, '5:30-7:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Hunter Strike' where h.name = 'Leomord' and b.style = 'pro tempo jungle';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 4, '8:00-10:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Blade of Despair' where h.name = 'Leomord' and b.style = 'pro tempo jungle';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 5, '11:00-14:00', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Malefic Roar' where h.name = 'Leomord' and b.style = 'pro tempo jungle';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 6, '15:00+', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Immortality' where h.name = 'Leomord' and b.style = 'pro tempo jungle';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 1, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Sea Halberd' where h.name = 'Leomord' and b.style = 'pro tempo jungle';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 2, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Queen''s Wings' where h.name = 'Leomord' and b.style = 'pro tempo jungle';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 3, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Rose Gold Meteor' where h.name = 'Leomord' and b.style = 'pro tempo jungle';
insert into pro_builds (hero_id, patch_id, role, style, confidence, source_name, notes)
select h.id, p.id, null, 'pro duel EXP', 70, 'MPL ID EXP duel pattern', 'Уверенность: средняя' from heroes h cross join patches p where h.name = 'Sora' and p.version = '2026.05.07.06';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 1, '0:45-1:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Warrior Boots' where h.name = 'Sora' and b.style = 'pro duel EXP';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 2, '3:00-4:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'War Axe' where h.name = 'Sora' and b.style = 'pro duel EXP';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 3, '5:30-7:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Hunter Strike' where h.name = 'Sora' and b.style = 'pro duel EXP';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 4, '8:00-10:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Queen''s Wings' where h.name = 'Sora' and b.style = 'pro duel EXP';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 5, '11:00-14:00', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Malefic Roar' where h.name = 'Sora' and b.style = 'pro duel EXP';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 6, '15:00+', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Immortality' where h.name = 'Sora' and b.style = 'pro duel EXP';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 1, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Sea Halberd' where h.name = 'Sora' and b.style = 'pro duel EXP';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 2, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Athena''s Shield' where h.name = 'Sora' and b.style = 'pro duel EXP';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 3, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Oracle' where h.name = 'Sora' and b.style = 'pro duel EXP';
insert into pro_builds (hero_id, patch_id, role, style, confidence, source_name, notes)
select h.id, p.id, null, 'pro magic engage', 70, 'MPL ban-priority engage pattern', 'Уверенность: средняя' from heroes h cross join patches p where h.name = 'Guinevere' and p.version = '2026.05.07.06';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 1, '0:45-1:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Arcane Boots' where h.name = 'Guinevere' and b.style = 'pro magic engage';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 2, '3:00-4:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Genius Wand' where h.name = 'Guinevere' and b.style = 'pro magic engage';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 3, '5:30-7:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Concentrated Energy' where h.name = 'Guinevere' and b.style = 'pro magic engage';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 4, '8:00-10:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Holy Crystal' where h.name = 'Guinevere' and b.style = 'pro magic engage';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 5, '11:00-14:00', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Divine Glaive' where h.name = 'Guinevere' and b.style = 'pro magic engage';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 6, '15:00+', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Winter Crown' where h.name = 'Guinevere' and b.style = 'pro magic engage';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 1, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Necklace of Durance' where h.name = 'Guinevere' and b.style = 'pro magic engage';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 2, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Immortality' where h.name = 'Guinevere' and b.style = 'pro magic engage';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 3, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Oracle' where h.name = 'Guinevere' and b.style = 'pro magic engage';
insert into pro_builds (hero_id, patch_id, role, style, confidence, source_name, notes)
select h.id, p.id, null, 'pro new-hero bruiser', 70, 'MPL ID contested new-hero pattern', 'Уверенность: средняя' from heroes h cross join patches p where h.name = 'Marcel' and p.version = '2026.05.07.06';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 1, '0:45-1:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Warrior Boots' where h.name = 'Marcel' and b.style = 'pro new-hero bruiser';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 2, '3:00-4:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'War Axe' where h.name = 'Marcel' and b.style = 'pro new-hero bruiser';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 3, '5:30-7:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Hunter Strike' where h.name = 'Marcel' and b.style = 'pro new-hero bruiser';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 4, '8:00-10:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Queen''s Wings' where h.name = 'Marcel' and b.style = 'pro new-hero bruiser';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 5, '11:00-14:00', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Malefic Roar' where h.name = 'Marcel' and b.style = 'pro new-hero bruiser';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 6, '15:00+', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Immortality' where h.name = 'Marcel' and b.style = 'pro new-hero bruiser';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 1, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Sea Halberd' where h.name = 'Marcel' and b.style = 'pro new-hero bruiser';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 2, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Athena''s Shield' where h.name = 'Marcel' and b.style = 'pro new-hero bruiser';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 3, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Brute Force Breastplate' where h.name = 'Marcel' and b.style = 'pro new-hero bruiser';
insert into pro_builds (hero_id, patch_id, role, style, confidence, source_name, notes)
select h.id, p.id, null, 'pro gold magic DPS', 70, 'pro gold flex magic-DPS pattern', 'Уверенность: средняя' from heroes h cross join patches p where h.name = 'Harith' and p.version = '2026.05.07.06';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 1, '0:45-1:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Tough Boots' where h.name = 'Harith' and b.style = 'pro gold magic DPS';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 2, '3:00-4:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Genius Wand' where h.name = 'Harith' and b.style = 'pro gold magic DPS';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 3, '5:30-7:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Concentrated Energy' where h.name = 'Harith' and b.style = 'pro gold magic DPS';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 4, '8:00-10:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Holy Crystal' where h.name = 'Harith' and b.style = 'pro gold magic DPS';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 5, '11:00-14:00', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Divine Glaive' where h.name = 'Harith' and b.style = 'pro gold magic DPS';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 6, '15:00+', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Winter Crown' where h.name = 'Harith' and b.style = 'pro gold magic DPS';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 1, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Rose Gold Meteor' where h.name = 'Harith' and b.style = 'pro gold magic DPS';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 2, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Immortality' where h.name = 'Harith' and b.style = 'pro gold magic DPS';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 3, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Necklace of Durance' where h.name = 'Harith' and b.style = 'pro gold magic DPS';
insert into pro_builds (hero_id, patch_id, role, style, confidence, source_name, notes)
select h.id, p.id, null, 'pro gold burst/range', 70, 'pro gold comfort pattern', 'Уверенность: средняя' from heroes h cross join patches p where h.name = 'Beatrix' and p.version = '2026.05.07.06';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 1, '0:45-1:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Swift Boots' where h.name = 'Beatrix' and b.style = 'pro gold burst/range';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 2, '3:00-4:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Blade of the Heptaseas' where h.name = 'Beatrix' and b.style = 'pro gold burst/range';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 3, '5:30-7:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Hunter Strike' where h.name = 'Beatrix' and b.style = 'pro gold burst/range';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 4, '8:00-10:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Malefic Roar' where h.name = 'Beatrix' and b.style = 'pro gold burst/range';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 5, '11:00-14:00', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Blade of Despair' where h.name = 'Beatrix' and b.style = 'pro gold burst/range';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 6, '15:00+', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Wind of Nature' where h.name = 'Beatrix' and b.style = 'pro gold burst/range';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 1, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Rose Gold Meteor' where h.name = 'Beatrix' and b.style = 'pro gold burst/range';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 2, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Sea Halberd' where h.name = 'Beatrix' and b.style = 'pro gold burst/range';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 3, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Immortality' where h.name = 'Beatrix' and b.style = 'pro gold burst/range';
insert into pro_builds (hero_id, patch_id, role, style, confidence, source_name, notes)
select h.id, p.id, null, 'pro gold crit DPS', 70, 'pro scaling gold pattern', 'Уверенность: средняя' from heroes h cross join patches p where h.name = 'Irithel' and p.version = '2026.05.07.06';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 1, '0:45-1:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Swift Boots' where h.name = 'Irithel' and b.style = 'pro gold crit DPS';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 2, '3:00-4:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Windtalker' where h.name = 'Irithel' and b.style = 'pro gold crit DPS';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 3, '5:30-7:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Berserker''s Fury' where h.name = 'Irithel' and b.style = 'pro gold crit DPS';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 4, '8:00-10:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Haas''s Claws' where h.name = 'Irithel' and b.style = 'pro gold crit DPS';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 5, '11:00-14:00', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Malefic Roar' where h.name = 'Irithel' and b.style = 'pro gold crit DPS';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 6, '15:00+', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Wind of Nature' where h.name = 'Irithel' and b.style = 'pro gold crit DPS';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 1, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Sea Halberd' where h.name = 'Irithel' and b.style = 'pro gold crit DPS';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 2, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Rose Gold Meteor' where h.name = 'Irithel' and b.style = 'pro gold crit DPS';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 3, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Immortality' where h.name = 'Irithel' and b.style = 'pro gold crit DPS';
insert into pro_builds (hero_id, patch_id, role, style, confidence, source_name, notes)
select h.id, p.id, null, 'pro scaling fighter', 70, 'pro scaling fighter pattern', 'Уверенность: средняя' from heroes h cross join patches p where h.name = 'Aulus' and p.version = '2026.05.07.06';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 1, '0:45-1:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Warrior Boots' where h.name = 'Aulus' and b.style = 'pro scaling fighter';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 2, '3:00-4:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'War Axe' where h.name = 'Aulus' and b.style = 'pro scaling fighter';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 3, '5:30-7:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Golden Staff' where h.name = 'Aulus' and b.style = 'pro scaling fighter';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 4, '8:00-10:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Demon Hunter Sword' where h.name = 'Aulus' and b.style = 'pro scaling fighter';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 5, '11:00-14:00', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Malefic Roar' where h.name = 'Aulus' and b.style = 'pro scaling fighter';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 6, '15:00+', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Immortality' where h.name = 'Aulus' and b.style = 'pro scaling fighter';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 1, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Sea Halberd' where h.name = 'Aulus' and b.style = 'pro scaling fighter';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 2, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Queen''s Wings' where h.name = 'Aulus' and b.style = 'pro scaling fighter';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 3, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Athena''s Shield' where h.name = 'Aulus' and b.style = 'pro scaling fighter';
insert into pro_builds (hero_id, patch_id, role, style, confidence, source_name, notes)
select h.id, p.id, null, 'pro armor-shred EXP', 70, 'pro anti-frontline EXP pattern', 'Уверенность: средняя' from heroes h cross join patches p where h.name = 'Dyrroth' and p.version = '2026.05.07.06';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 1, '0:45-1:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Warrior Boots' where h.name = 'Dyrroth' and b.style = 'pro armor-shred EXP';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 2, '3:00-4:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'War Axe' where h.name = 'Dyrroth' and b.style = 'pro armor-shred EXP';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 3, '5:30-7:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Hunter Strike' where h.name = 'Dyrroth' and b.style = 'pro armor-shred EXP';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 4, '8:00-10:30', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Sea Halberd' where h.name = 'Dyrroth' and b.style = 'pro armor-shred EXP';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 5, '11:00-14:00', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Malefic Roar' where h.name = 'Dyrroth' and b.style = 'pro armor-shred EXP';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 6, '15:00+', 'Core pro/high-rank slot', false from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Immortality' where h.name = 'Dyrroth' and b.style = 'pro armor-shred EXP';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 1, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Queen''s Wings' where h.name = 'Dyrroth' and b.style = 'pro armor-shred EXP';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 2, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Rose Gold Meteor' where h.name = 'Dyrroth' and b.style = 'pro armor-shred EXP';
insert into pro_build_items (build_id, item_id, slot, timing, reason, is_flex)
select b.id, i.id, 3, 'по ситуации', 'Flex slot против конкретного драфта', true from pro_builds b join heroes h on h.id = b.hero_id join items i on i.name_en = 'Antique Cuirass' where h.name = 'Dyrroth' and b.style = 'pro armor-shred EXP';

commit;

