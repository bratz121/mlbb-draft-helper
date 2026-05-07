-- MLBB Draft Helper database draft.
-- Target: Supabase Postgres. This is the production shape for moving data out of frontend bundles.

create table if not exists patches (
  id uuid primary key default gen_random_uuid(),
  version text not null unique,
  title text not null,
  released_at date,
  is_active boolean not null default false,
  created_at timestamptz not null default now()
);

create table if not exists heroes (
  id uuid primary key default gen_random_uuid(),
  slug text not null unique,
  name text not null unique,
  roles text[] not null default '{}',
  avatar_path text,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists hero_meta (
  id uuid primary key default gen_random_uuid(),
  hero_id uuid not null references heroes(id) on delete cascade,
  patch_id uuid references patches(id) on delete set null,
  tier text not null check (tier in ('S+', 'S', 'A', 'B', 'C', 'D')),
  meta_score integer not null check (meta_score between 0 and 100),
  lane text,
  source_type text not null check (source_type in ('pro', 'ranked', 'manual', 'community')),
  source_name text not null,
  source_url text,
  confidence integer not null default 70 check (confidence between 0 and 100),
  evidence text,
  created_at timestamptz not null default now()
);

create table if not exists matchups (
  id uuid primary key default gen_random_uuid(),
  hero_id uuid not null references heroes(id) on delete cascade,
  target_hero_id uuid not null references heroes(id) on delete cascade,
  relation text not null check (relation in ('counters', 'weak_into', 'synergy')),
  weight integer not null default 70 check (weight between 0 and 100),
  reason text not null,
  source_type text not null default 'manual' check (source_type in ('pro', 'ranked', 'manual', 'community')),
  source_url text,
  patch_id uuid references patches(id) on delete set null,
  created_at timestamptz not null default now(),
  unique (hero_id, target_hero_id, relation, patch_id)
);

create table if not exists items (
  id uuid primary key default gen_random_uuid(),
  slug text not null unique,
  name_en text not null unique,
  name_ru text not null,
  image_path text,
  tags text[] not null default '{}'
);

create table if not exists pro_builds (
  id uuid primary key default gen_random_uuid(),
  hero_id uuid not null references heroes(id) on delete cascade,
  patch_id uuid references patches(id) on delete set null,
  role text,
  style text not null,
  confidence integer not null default 70 check (confidence between 0 and 100),
  source_name text not null,
  source_url text,
  notes text,
  created_at timestamptz not null default now()
);

create table if not exists pro_build_items (
  id uuid primary key default gen_random_uuid(),
  build_id uuid not null references pro_builds(id) on delete cascade,
  item_id uuid not null references items(id) on delete cascade,
  slot integer not null check (slot between 1 and 6),
  timing text,
  reason text,
  is_flex boolean not null default false,
  unique (build_id, item_id, slot, is_flex)
);

create table if not exists community_votes (
  id uuid primary key default gen_random_uuid(),
  matchup_id uuid references matchups(id) on delete cascade,
  hero_id uuid references heroes(id) on delete cascade,
  target_hero_id uuid references heroes(id) on delete cascade,
  vote integer not null check (vote in (-1, 1)),
  note text,
  created_at timestamptz not null default now()
);

alter table patches enable row level security;
alter table heroes enable row level security;
alter table hero_meta enable row level security;
alter table matchups enable row level security;
alter table items enable row level security;
alter table pro_builds enable row level security;
alter table pro_build_items enable row level security;
alter table community_votes enable row level security;

create policy "public read patches" on patches for select using (true);
create policy "public read heroes" on heroes for select using (true);
create policy "public read hero_meta" on hero_meta for select using (true);
create policy "public read matchups" on matchups for select using (true);
create policy "public read items" on items for select using (true);
create policy "public read pro_builds" on pro_builds for select using (true);
create policy "public read pro_build_items" on pro_build_items for select using (true);

-- Keep community writes disabled until moderation/auth is added.
create policy "public read community_votes" on community_votes for select using (true);
