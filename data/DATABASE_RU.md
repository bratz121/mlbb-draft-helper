# База данных для MLBB Draft Helper

MCP можно использовать как рабочий коннектор для разработки, но сам сайт не должен зависеть от MCP в продакшене. Для приложения нужен обычный backend/data-сервис. Самый простой вариант для нас сейчас: Supabase.

## Почему Supabase

- Можно хранить героев, мету, матчапы, сборки, источники и голоса игроков.
- Для публичного чтения подходит `anon key`, он безопасен при правильно настроенных RLS policy.
- Потом можно добавить админку для ручного обновления меты без пересборки сайта.
- Статика на GitHub Pages сможет читать публичные данные напрямую.

## Что уже подготовлено

Файл `data/supabase-schema.sql` содержит таблицы:

- `patches` — версия патча и активная мета.
- `heroes` — герои, роли, аватарки.
- `hero_meta` — tier, meta score, источник, уверенность.
- `matchups` — counters, weak into, synergies.
- `items` — предметы и картинки.
- `pro_builds` — сборки про/high-rank игроков.
- `pro_build_items` — предметы в сборке, тайминги и flex-слоты.
- `community_votes` — будущие лайки/дизлайки контрпиков.

## Как подключим следующим шагом

1. Создать проект в Supabase.
2. В SQL Editor выполнить `data/supabase-schema.sql`.
3. Взять `Project URL` и `anon public key`.
4. Добавить в проект:

```env
NEXT_PUBLIC_SUPABASE_URL=...
NEXT_PUBLIC_SUPABASE_ANON_KEY=...
```

5. Я добавлю data layer:

```ts
getHeroes()
getMeta()
getMatchups()
getBuilds(hero, enemies)
```

Сначала приложение будет читать Supabase, а если БД недоступна, fallback останется на локальной базе. Так сайт не сломается во время обновлений.

## Что нельзя делать

- Нельзя класть service role key во frontend.
- Нельзя открывать insert/update без auth/moderation.
- Нельзя полностью удалять локальный fallback, пока база не наполнена.
