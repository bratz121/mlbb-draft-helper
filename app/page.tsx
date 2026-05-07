"use client";

import { useEffect, useMemo, useState } from "react";
import { Ban, BookOpen, Crosshair, RotateCcw, Search, Sparkles, Users } from "lucide-react";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Input } from "@/components/ui/input";
import {
  type DraftState,
  type PoolLevel,
  type Side,
  getAllBans,
  getBanRecommendations,
  getBuild,
  getDraftInsights,
  getHeroMatchups,
  getRecommendations,
  heroByName,
  heroImage,
  itemImage,
} from "@/lib/draft";
import { appVersion, heroes, itemCatalog, roles, teamRoles, type Hero, type Role } from "@/lib/mlbb-data";
import { getProSignal, proHeroSignals, proMetaSources, proMetaUpdatedAt } from "@/lib/pro-meta";
import { getSupabaseStatus, type SupabaseStatus } from "@/lib/supabase";
import { cn } from "@/lib/utils";

type View = "draft" | "heroes" | "pool" | "meta";

const emptyDraft: DraftState = {
  enemies: [],
  allies: [],
  allyBans: [],
  enemyBans: [],
  role: "Любая",
  metaOnly: false,
  activeSide: "enemies",
  search: "",
};

const sideLabels: Record<Side, string> = {
  enemies: "Враг",
  allies: "Мы",
  allyBans: "Наш бан",
  enemyBans: "Бан врага",
};

const poolLabels: Record<PoolLevel, string> = {
  none: "Не играю",
  medium: "Средне",
  strong: "Сильно",
};

const views = [
  { id: "draft", label: "Драфт", icon: Crosshair },
  { id: "heroes", label: "Герои", icon: BookOpen },
  { id: "pool", label: "Мой пул", icon: Users },
  { id: "meta", label: "Мета", icon: Sparkles },
] satisfies Array<{ id: View; label: string; icon: typeof Crosshair }>;

export default function HomePage() {
  const [view, setView] = useState<View>("draft");
  const [draft, setDraft] = useState<DraftState>(emptyDraft);
  const [pool, setPool] = useState<Record<string, PoolLevel>>({});
  const [librarySearch, setLibrarySearch] = useState("");
  const [selectedHero, setSelectedHero] = useState(heroes[0]?.name ?? "");
  const [dbStatus, setDbStatus] = useState<SupabaseStatus>({ state: "local", label: "Локальная база", detail: "Проверяю Supabase" });

  useEffect(() => {
    const readHash = () => {
      const nextView = window.location.hash.replace("#", "") as View;
      if (views.some((item) => item.id === nextView)) setView(nextView);
    };
    readHash();
    window.addEventListener("hashchange", readHash);
    return () => window.removeEventListener("hashchange", readHash);
  }, []);

  useEffect(() => {
    try {
      setPool(JSON.parse(localStorage.getItem("mlbbPlayerPool") || "{}"));
    } catch {
      setPool({});
    }
  }, []);

  useEffect(() => {
    localStorage.setItem("mlbbPlayerPool", JSON.stringify(pool));
  }, [pool]);

  useEffect(() => {
    let alive = true;
    getSupabaseStatus().then((status) => {
      if (alive) setDbStatus(status);
    });
    return () => {
      alive = false;
    };
  }, []);

  const recommendations = useMemo(() => getRecommendations(draft, pool), [draft, pool]);
  const bans = useMemo(() => getBanRecommendations(draft), [draft]);
  const selectedHeroData = heroByName.get(selectedHero) ?? heroes[0];
  const activeView = views.find((item) => item.id === view) ?? views[0];

  function patchDraft(patch: Partial<DraftState>) {
    setDraft((current) => ({ ...current, ...patch }));
  }

  function addPick(side: Side, name: string) {
    setDraft((current) => {
      if (current[side].includes(name)) return current;
      if ([...current.enemies, ...current.allies, ...current.allyBans, ...current.enemyBans].includes(name)) return current;
      if (current[side].length >= 5) return current;
      return { ...current, [side]: [...current[side], name] };
    });
  }

  function removePick(side: Side, name: string) {
    setDraft((current) => ({ ...current, [side]: current[side].filter((item) => item !== name) }));
  }

  function setPoolLevel(name: string, level: PoolLevel) {
    setPool((current) => {
      const next = { ...current };
      if (level === "none") delete next[name];
      else next[name] = level;
      return next;
    });
  }

  function navigate(nextView: View) {
    setView(nextView);
    window.history.replaceState(null, "", `#${nextView}`);
  }

  return (
    <main className="mx-auto w-full max-w-[1380px] px-3 pb-24 pt-4 sm:px-4 lg:px-6 lg:pb-8 lg:pt-6">
      <header className="mb-5 grid gap-4 lg:grid-cols-[minmax(260px,1fr)_auto_minmax(170px,0.35fr)] lg:items-center">
        <div className="rounded-lg border border-border bg-card/85 p-4 shadow-xl shadow-black/15">
          <p className="mb-2 text-xs font-black uppercase tracking-wide text-primary">MLBB Draft Assistant</p>
          <h1 className="text-3xl font-black leading-none tracking-normal sm:text-4xl">Контрпики и сбор пика</h1>
        </div>

        <nav className="hidden rounded-lg border border-border bg-card/85 p-1 shadow-xl shadow-black/15 lg:flex">
          {views.map((item) => (
            <PageLink key={item.id} active={view === item.id} onClick={() => navigate(item.id)} icon={item.icon} label={item.label} href={`#${item.id}`} />
          ))}
        </nav>

        <div className="grid grid-cols-2 gap-2 rounded-lg border border-border bg-card/85 p-3 shadow-xl shadow-black/15 lg:grid-cols-1">
          <div>
            <span className="text-xs text-muted-foreground">Окно</span>
            <strong className="block">{activeView.label}</strong>
          </div>
          <div>
            <span className="text-xs text-muted-foreground">Мета</span>
            <strong className="block">май 2026</strong>
            <span className="text-xs text-muted-foreground">v{appVersion}</span>
          </div>
          <div className="col-span-2 rounded-md border border-border bg-background/55 p-2 lg:col-span-1">
            <span className="text-xs text-muted-foreground">Supabase</span>
            <strong className={cn("block text-sm", dbStatus.state === "ready" && "text-primary", dbStatus.state === "error" && "text-destructive")}>{dbStatus.label}</strong>
            <span className="block truncate text-xs text-muted-foreground" title={dbStatus.detail}>{dbStatus.detail}</span>
          </div>
        </div>
      </header>

      <nav className="fixed inset-x-3 bottom-3 z-40 grid grid-cols-4 gap-1 rounded-lg border border-border bg-background/95 p-1 shadow-2xl shadow-black/40 backdrop-blur lg:hidden">
        {views.map((item) => (
          <MobilePageLink key={item.id} active={view === item.id} onClick={() => navigate(item.id)} icon={item.icon} label={item.label} href={`#${item.id}`} />
        ))}
      </nav>

      {view === "draft" && (
        <PageWindow title="Драфт" description="Рабочее окно пиков, банов и рекомендаций.">
          <DraftView
            draft={draft}
            pool={pool}
            recommendations={recommendations}
            bans={bans}
            onPatch={patchDraft}
            onAddPick={addPick}
            onRemovePick={removePick}
            onOpenHero={(name) => {
              setSelectedHero(name);
              navigate("heroes");
            }}
            onReset={() => setDraft(emptyDraft)}
          />
        </PageWindow>
      )}

      {view === "heroes" && (
        <PageWindow title="Герои" description="Отдельное окно базы героев, матчапов и быстрых билдов.">
          <HeroesView
            search={librarySearch}
            selectedHero={selectedHeroData}
            pool={pool}
            draft={draft}
            onSearch={setLibrarySearch}
            onSelect={setSelectedHero}
            onGoDraft={() => navigate("draft")}
          />
        </PageWindow>
      )}

      {view === "pool" && (
        <PageWindow title="Мой пул" description="Твои реальные герои, чтобы советы были практичными.">
          <PoolView pool={pool} onSetPool={setPoolLevel} />
        </PageWindow>
      )}
      {view === "meta" && (
        <PageWindow title="Мета" description="Топы по ролям и быстрый переход в профиль героя.">
          <MetaView
            onSelect={(name) => {
              setSelectedHero(name);
              navigate("heroes");
            }}
          />
        </PageWindow>
      )}
    </main>
  );
}

function PageLink({ active, onClick, icon: Icon, label, href }: { active: boolean; onClick: () => void; icon: typeof Crosshair; label: string; href: string }) {
  return (
    <a
      href={href}
      onClick={(event) => {
        event.preventDefault();
        onClick();
      }}
      className={cn(
        "inline-flex min-h-11 shrink-0 items-center gap-2 rounded-md px-4 text-sm font-black transition-colors",
        active ? "bg-primary text-primary-foreground shadow-lg shadow-primary/15" : "text-muted-foreground hover:bg-muted hover:text-foreground",
      )}
    >
      <Icon className="h-4 w-4" />
      {label}
    </a>
  );
}

function MobilePageLink({ active, onClick, icon: Icon, label, href }: { active: boolean; onClick: () => void; icon: typeof Crosshair; label: string; href: string }) {
  return (
    <a
      href={href}
      onClick={(event) => {
        event.preventDefault();
        onClick();
      }}
      className={cn(
        "grid min-h-14 place-items-center gap-1 rounded-md px-1 text-[11px] font-black transition-colors",
        active ? "bg-primary text-primary-foreground" : "text-muted-foreground hover:bg-muted hover:text-foreground",
      )}
    >
      <Icon className="h-4 w-4" />
      <span className="max-w-full truncate">{label}</span>
    </a>
  );
}

function PageWindow({ title, description, children }: { title: string; description: string; children: React.ReactNode }) {
  return (
    <section className="rounded-lg border border-border bg-card/70 p-2 shadow-2xl shadow-black/20 sm:p-3">
      <div className="mb-3 rounded-md bg-background/45 px-3 py-2 sm:px-4">
        <div className="flex flex-col gap-1 sm:flex-row sm:items-end sm:justify-between">
          <h2 className="text-2xl font-black">{title}</h2>
          <p className="text-sm text-muted-foreground">{description}</p>
        </div>
      </div>
      {children}
    </section>
  );
}

function DraftView({
  draft,
  pool,
  recommendations,
  bans,
  onPatch,
  onAddPick,
  onRemovePick,
  onOpenHero,
  onReset,
}: {
  draft: DraftState;
  pool: Record<string, PoolLevel>;
  recommendations: ReturnType<typeof getRecommendations>;
  bans: ReturnType<typeof getBanRecommendations>;
  onPatch: (patch: Partial<DraftState>) => void;
  onAddPick: (side: Side, name: string) => void;
  onRemovePick: (side: Side, name: string) => void;
  onOpenHero: (name: string) => void;
  onReset: () => void;
}) {
  const unavailable = new Set([...draft.enemies, ...draft.allies, ...getAllBans(draft)]);
  const filteredHeroes = heroes
    .filter((hero) => draft.role === "Любая" || hero.roles.includes(draft.role))
    .filter((hero) => !draft.metaOnly || hero.tier === "S" || hero.tier === "A")
    .filter((hero) => !draft.search || `${hero.name} ${hero.roles.join(" ")} ${hero.tier}`.toLowerCase().includes(draft.search));

  return (
    <section className="grid gap-4 xl:grid-cols-[330px_minmax(380px,1fr)_minmax(380px,0.9fr)]">
      <Card>
        <CardHeader className="flex-row items-center justify-between">
          <div>
            <CardTitle>Драфт</CardTitle>
            <CardDescription>Пики, баны и фильтры.</CardDescription>
          </div>
          <Button variant="outline" size="sm" onClick={onReset}>
            <RotateCcw className="mr-2 h-4 w-4" />
            Сбросить
          </Button>
        </CardHeader>
        <CardContent className="grid gap-4">
          <div className="grid grid-cols-2 gap-2">
            {(Object.keys(sideLabels) as Side[]).map((side) => (
              <Button key={side} variant={draft.activeSide === side ? "default" : "outline"} onClick={() => onPatch({ activeSide: side })}>
                {sideLabels[side]}
              </Button>
            ))}
          </div>

          <div>
            <p className="mb-2 text-sm font-bold text-muted-foreground">Роль</p>
            <div className="grid grid-cols-2 gap-2 sm:grid-cols-3">
              {roles.map((role) => (
                <Button key={role} variant={draft.role === role ? "default" : "outline"} size="sm" onClick={() => onPatch({ role })}>
                  {role}
                </Button>
              ))}
            </div>
          </div>

          <label className="grid gap-2">
            <span className="text-sm font-bold text-muted-foreground">Поиск героя</span>
            <Input value={draft.search} onChange={(event) => onPatch({ search: event.target.value.toLowerCase() })} placeholder="Diggie, Khufra, Kimmy" />
          </label>

          <label className="flex items-center gap-3 text-sm font-bold text-muted-foreground">
            <input type="checkbox" checked={draft.metaOnly} onChange={(event) => onPatch({ metaOnly: event.target.checked })} />
            Только S/A tier
          </label>

          <PickGroup title="Наши баны" side="allyBans" items={draft.allyBans} onRemove={onRemovePick} onOpenHero={onOpenHero} />
          <PickGroup title="Баны врага" side="enemyBans" items={draft.enemyBans} onRemove={onRemovePick} onOpenHero={onOpenHero} />
          <PickGroup title="Враги" side="enemies" items={draft.enemies} onRemove={onRemovePick} onOpenHero={onOpenHero} />
          <PickGroup title="Мы" side="allies" items={draft.allies} onRemove={onRemovePick} onOpenHero={onOpenHero} />
        </CardContent>
      </Card>

      <Card>
        <CardHeader>
          <CardTitle>Добавить: {sideLabels[draft.activeSide]}</CardTitle>
          <CardDescription>Клик по герою добавляет его в выбранную сторону.</CardDescription>
        </CardHeader>
        <CardContent>
          <div className="scroll-soft grid max-h-[68vh] grid-cols-2 gap-2 overflow-auto pr-1 sm:grid-cols-4 lg:max-h-[720px] lg:grid-cols-3 2xl:grid-cols-4">
            {filteredHeroes.map((hero) => (
              <HeroTile key={hero.name} hero={hero} disabled={unavailable.has(hero.name)} pool={pool[hero.name]} onClick={() => onAddPick(draft.activeSide, hero.name)} onInfo={() => onOpenHero(hero.name)} />
            ))}
          </div>
        </CardContent>
      </Card>

      <Card>
        <CardHeader>
          <CardTitle>Лучшие варианты</CardTitle>
          <CardDescription>{draft.enemies.length ? `Считаю против: ${draft.enemies.join(", ")}` : "Добавь врагов, чтобы рекомендации стали точнее."}</CardDescription>
        </CardHeader>
        <CardContent className="grid gap-4">
          <DraftScore recommendations={recommendations} />
          <div className="grid gap-2">
            <h3 className="flex items-center gap-2 text-sm font-black uppercase text-muted-foreground">
              <Ban className="h-4 w-4" /> Кого банить
            </h3>
            <div className="grid gap-2 sm:grid-cols-2">
              {bans.map((item) => (
                <Button key={item.hero.name} variant="outline" className="h-auto justify-start gap-2 p-2 text-left" onClick={() => onAddPick("allyBans", item.hero.name)} disabled={draft.allyBans.length >= 5}>
                  <HeroAvatar name={item.hero.name} size="sm" />
                  <span className="grid">
                    <strong>{item.hero.name}</strong>
                    <span className="text-xs text-muted-foreground">{item.reasons[0]}</span>
                  </span>
                </Button>
              ))}
            </div>
          </div>

          <div className="grid gap-3">
            {recommendations.map((item) => (
              <RecommendationCard key={item.hero.name} item={item} onOpenHero={onOpenHero} />
            ))}
          </div>

          <div className="grid gap-2">
            <h3 className="text-sm font-black uppercase text-muted-foreground">Анализ состава</h3>
            <div className="grid gap-2 sm:grid-cols-2">
              {getDraftInsights(draft).map((insight) => (
                <div key={insight} className="rounded-md border border-border bg-secondary p-3 text-sm text-muted-foreground">
                  {insight}
                </div>
              ))}
            </div>
          </div>
        </CardContent>
      </Card>
    </section>
  );
}

function PickGroup({ title, side, items, onRemove, onOpenHero }: { title: string; side: Side; items: string[]; onRemove: (side: Side, name: string) => void; onOpenHero: (name: string) => void }) {
  return (
    <div>
      <h3 className="mb-2 text-xs font-black uppercase text-muted-foreground">{title}</h3>
      <div className="flex min-h-9 flex-wrap gap-2">
        {items.length ? (
          items.map((name) => (
            <span key={name} className="inline-flex items-center gap-2 rounded-md border border-border bg-secondary px-2 py-1 text-sm">
              <HeroAvatar name={name} size="xs" />
              <button type="button" onClick={() => onOpenHero(name)} className="font-bold">
                {name}
              </button>
              <button type="button" className="text-muted-foreground" onClick={() => onRemove(side, name)}>
                x
              </button>
            </span>
          ))
        ) : (
          <span className="text-sm text-muted-foreground">Пока пусто</span>
        )}
      </div>
    </div>
  );
}

function HeroTile({ hero, disabled, pool, onClick, onInfo }: { hero: Hero; disabled: boolean; pool?: PoolLevel; onClick: () => void; onInfo: () => void }) {
  return (
    <button type="button" disabled={disabled} onClick={onClick} className="relative grid min-h-[124px] gap-2 rounded-lg border border-border bg-secondary p-2 text-left transition hover:border-primary disabled:cursor-not-allowed disabled:opacity-40 sm:min-h-[132px]">
      <span
        role="button"
        tabIndex={0}
        onClick={(event) => {
          event.stopPropagation();
          onInfo();
        }}
        className="absolute right-2 top-2 grid h-6 w-6 place-items-center rounded-full border border-border bg-background/80 text-xs font-black text-primary"
      >
        i
      </span>
      <HeroAvatar name={hero.name} size="lg" />
      <span className="truncate font-black">{hero.name}</span>
      <span className="flex flex-wrap gap-1">
        <Badge>{hero.tier}</Badge>
        <Badge>{hero.roles[0]}</Badge>
        {pool && pool !== "none" ? <Badge className="border-primary/40 text-primary">{poolLabels[pool]}</Badge> : null}
      </span>
    </button>
  );
}

function RecommendationCard({ item, onOpenHero }: { item: ReturnType<typeof getRecommendations>[number]; onOpenHero: (name: string) => void }) {
  return (
    <article className="grid gap-3 rounded-lg border border-border bg-secondary p-3 sm:grid-cols-[1fr_74px]">
      <div className="grid gap-2">
        <div className="flex items-center gap-3">
          <HeroAvatar name={item.hero.name} size="md" />
          <div className="min-w-0">
            <button type="button" onClick={() => onOpenHero(item.hero.name)} className="truncate text-xl font-black">
              {item.hero.name}
            </button>
            <div className="mt-1 flex flex-wrap gap-1">
              {item.hero.roles.map((role) => (
                <Badge key={role}>{role}</Badge>
              ))}
            </div>
          </div>
        </div>
        <p className="text-sm text-muted-foreground">{item.hero.notes}</p>
        <ul className="grid gap-1 text-sm text-muted-foreground">
          {item.reasons.slice(0, 4).map((reason) => (
            <li key={reason}>{reason}</li>
          ))}
        </ul>
        <div className="grid gap-1 rounded-md border border-border bg-background p-2">
          <p className="text-xs font-black uppercase text-muted-foreground">Почему советует</p>
          {item.breakdown.slice(0, 5).map((part) => (
            <div key={`${item.hero.name}-${part.label}-${part.value}`} className="grid grid-cols-[1fr_auto] gap-2 text-xs">
              <span className="truncate text-muted-foreground" title={part.detail}>{part.label}</span>
              <strong className={cn(part.tone === "good" && "text-primary", part.tone === "bad" && "text-destructive", part.tone === "neutral" && "text-muted-foreground")}>
                {part.value > 0 ? `+${part.value}` : part.value}
              </strong>
            </div>
          ))}
        </div>
      </div>
      <div className="grid place-items-center rounded-lg bg-background p-3">
        <strong className="text-2xl">{item.win}%</strong>
        <span className="text-xs font-black uppercase text-muted-foreground">win</span>
      </div>
    </article>
  );
}

function DraftScore({ recommendations }: { recommendations: ReturnType<typeof getRecommendations> }) {
  const best = recommendations[0]?.win ?? 50;
  return (
    <div className="grid gap-3 rounded-lg border border-border bg-background p-4 sm:grid-cols-[110px_1fr]">
      <div className="grid h-24 w-24 place-items-center rounded-full border-[10px] border-primary text-2xl font-black">{best}%</div>
      <div>
        <h3 className="text-lg font-black">{best >= 58 ? "Пик выглядит сильнее" : best >= 48 ? "Примерно равный драфт" : "Нужен контрпик"}</h3>
        <p className="text-sm text-muted-foreground">Оценка пересчитывается от врагов, банов, союзников, роли и твоего пула героев.</p>
      </div>
    </div>
  );
}

function HeroesView({ search, selectedHero, pool, draft, onSearch, onSelect, onGoDraft }: { search: string; selectedHero: Hero; pool: Record<string, PoolLevel>; draft: DraftState; onSearch: (value: string) => void; onSelect: (name: string) => void; onGoDraft: () => void }) {
  const filtered = heroes.filter((hero) => !search || `${hero.name} ${hero.roles.join(" ")} ${hero.tier} ${hero.notes}`.toLowerCase().includes(search.toLowerCase()));
  const matchup = getHeroMatchups(selectedHero);
  const build = getBuild(selectedHero, draft);
  return (
    <section className="grid gap-4 lg:grid-cols-[minmax(0,1fr)_420px]">
      <Card>
        <CardHeader className="gap-4 sm:flex-row sm:items-center sm:justify-between">
          <div>
            <CardTitle>База героев</CardTitle>
            <CardDescription>Профили, матчапы и сборки под текущий драфт.</CardDescription>
          </div>
          <div className="relative w-full sm:w-72">
            <Search className="absolute left-3 top-3 h-4 w-4 text-muted-foreground" />
            <Input className="pl-9" value={search} onChange={(event) => onSearch(event.target.value)} placeholder="Alpha, Mid, S-tier" />
          </div>
        </CardHeader>
        <CardContent>
          <div className="grid gap-2 sm:grid-cols-2 xl:grid-cols-3">
            {filtered.map((hero) => (
              <button key={hero.name} type="button" onClick={() => onSelect(hero.name)} className={cn("grid grid-cols-[auto_1fr] items-center gap-3 rounded-lg border border-border bg-secondary p-3 text-left", selectedHero.name === hero.name && "border-primary")}>
                <HeroAvatar name={hero.name} size="md" />
                <span className="min-w-0">
                  <strong className="block truncate">{hero.name}</strong>
                  <span className="text-xs text-muted-foreground">{hero.roles.join(" / ")} · {hero.tier}-tier · {poolLabels[pool[hero.name] || "none"]}</span>
                </span>
              </button>
            ))}
          </div>
        </CardContent>
      </Card>

      <Card>
        <CardHeader>
          <div className="flex items-start gap-3">
            <HeroAvatar name={selectedHero.name} size="xl" />
            <div>
              <CardTitle>{selectedHero.name}</CardTitle>
              <CardDescription>{selectedHero.notes}</CardDescription>
              <div className="mt-2 flex flex-wrap gap-1">
                {selectedHero.roles.map((role) => (
                  <Badge key={role}>{role}</Badge>
                ))}
              </div>
            </div>
          </div>
        </CardHeader>
        <CardContent className="grid gap-4">
          <Button variant="outline" onClick={onGoDraft}>Вернуться в драфт</Button>
          <MatchupBox title="Кого закрывает" items={matchup.targets} tone="good" />
          <MatchupBox title="Опасные враги" items={matchup.dangers} tone="bad" />
          <MatchupBox title="Лучшие союзники" items={matchup.allies} tone="neutral" />
          <BuildBox hero={selectedHero} build={build} />
        </CardContent>
      </Card>
    </section>
  );
}

function MatchupBox({ title, items, tone }: { title: string; items: string[]; tone: "good" | "bad" | "neutral" }) {
  return (
    <div className={cn("rounded-lg border p-3", tone === "good" && "border-primary/30", tone === "bad" && "border-destructive/40", tone === "neutral" && "border-border")}>
      <h3 className={cn("mb-2 text-sm font-black uppercase", tone === "good" && "text-primary", tone === "bad" && "text-destructive", tone === "neutral" && "text-accent")}>{title}</h3>
      <div className="flex flex-wrap gap-2">
        {items.length ? items.map((item) => <Badge key={item}>{item}</Badge>) : <span className="text-sm text-muted-foreground">Нет точных данных</span>}
      </div>
    </div>
  );
}

function BuildBox({ hero, build }: { hero: Hero; build: ReturnType<typeof getBuild> }) {
  return (
    <div className="grid gap-3 rounded-lg border border-border bg-background p-3">
      <div>
        <h3 className="font-black">Билд под текущих врагов</h3>
        <p className="text-sm text-muted-foreground">{build.summary}</p>
        <p className="text-xs text-muted-foreground">Основа: {build.source}</p>
      </div>
      {build.flexItems.length ? (
        <div className="rounded-md border border-border bg-secondary p-2">
          <p className="text-xs font-black uppercase text-muted-foreground">Flex-слоты pro-игроков</p>
          <div className="mt-2 flex flex-wrap gap-2">
            {build.flexItems.map((item) => (
              <Badge key={item}>{itemCatalog[item]?.ru || item}</Badge>
            ))}
          </div>
        </div>
      ) : null}
      <div className="grid gap-2">
        {build.items.map((item, index) => (
          <div key={`${hero.name}-${item.id}-${index}`} className="grid grid-cols-[42px_1fr] gap-2 rounded-md border border-border bg-secondary p-2">
            <img className="h-10 w-10 rounded-md object-cover" src={itemImage(item.id)} alt="" />
            <div>
              <strong className="text-sm">{index + 1}. {itemCatalog[item.id]?.ru || item.id}</strong>
              <p className="text-xs font-bold text-primary">{item.timing}</p>
              <p className="text-xs text-muted-foreground">{item.reason}</p>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
}

function PoolView({ pool, onSetPool }: { pool: Record<string, PoolLevel>; onSetPool: (name: string, level: PoolLevel) => void }) {
  const strong = heroes.filter((hero) => pool[hero.name] === "strong").length;
  const medium = heroes.filter((hero) => pool[hero.name] === "medium").length;
  return (
    <section className="grid gap-4 lg:grid-cols-[1fr_320px]">
      <Card>
        <CardHeader>
          <CardTitle>Мой пул героев</CardTitle>
          <CardDescription>Отмечай, кем реально играешь. Драфт будет советовать практичные пики.</CardDescription>
        </CardHeader>
        <CardContent className="grid gap-3 sm:grid-cols-2 xl:grid-cols-3">
          {heroes.map((hero) => (
            <article key={hero.name} className="grid gap-3 rounded-lg border border-border bg-secondary p-3">
              <div className="flex items-center gap-3">
                <HeroAvatar name={hero.name} size="sm" />
                <div>
                  <strong>{hero.name}</strong>
                  <p className="text-xs text-muted-foreground">{hero.roles.join(" / ")}</p>
                </div>
              </div>
              <div className="grid grid-cols-3 gap-2">
                {(Object.keys(poolLabels) as PoolLevel[]).map((level) => (
                  <Button key={level} variant={(pool[hero.name] || "none") === level ? "default" : "outline"} size="sm" onClick={() => onSetPool(hero.name, level)}>
                    {poolLabels[level]}
                  </Button>
                ))}
              </div>
            </article>
          ))}
        </CardContent>
      </Card>
      <Card>
        <CardHeader>
          <CardTitle>Статистика пула</CardTitle>
        </CardHeader>
        <CardContent className="grid gap-3">
          <Stat label="Сильных" value={strong} />
          <Stat label="Средних" value={medium} />
          {teamRoles.map((role) => (
            <Stat key={role} label={role} value={heroes.filter((hero) => hero.roles.includes(role) && ["strong", "medium"].includes(pool[hero.name] || "none")).length} />
          ))}
        </CardContent>
      </Card>
    </section>
  );
}

function MetaView({ onSelect }: { onSelect: (name: string) => void }) {
  const signals = Object.values(proHeroSignals).sort((a, b) => b.scoreBoost + b.banPriority - (a.scoreBoost + a.banPriority));

  return (
    <section className="grid gap-4">
      <Card>
        <CardHeader>
          <CardTitle>Pro-сигналы меты</CardTitle>
          <CardDescription>Срез по профессиональным матчам MPL ID/PH S17, patch 2.1.67, плюс high-rank проверка. Обновлено: {proMetaUpdatedAt}.</CardDescription>
        </CardHeader>
        <CardContent className="grid gap-3 lg:grid-cols-[1fr_360px]">
          <div className="grid gap-2 sm:grid-cols-2 xl:grid-cols-3">
            {signals.slice(0, 12).map((signal) => {
              const hero = heroByName.get(signal.hero);
              return (
                <button key={signal.hero} type="button" onClick={() => onSelect(signal.hero)} className="grid gap-2 rounded-lg border border-border bg-secondary p-3 text-left hover:border-primary">
                  <span className="flex items-center gap-3">
                    {hero ? <HeroAvatar name={hero.name} size="sm" /> : null}
                    <span className="min-w-0">
                      <strong className="block truncate">{signal.hero}</strong>
                      <span className="text-xs text-muted-foreground">{signal.roles.join(" / ")} · {signal.tier}</span>
                    </span>
                  </span>
                  <span className="text-sm text-muted-foreground">{signal.evidence}</span>
                  <span className="flex flex-wrap gap-1">
                    <Badge>+{signal.scoreBoost} к пику</Badge>
                    <Badge>ban +{signal.banPriority}</Badge>
                  </span>
                </button>
              );
            })}
          </div>

          <div className="grid content-start gap-2 rounded-lg border border-border bg-background p-3">
            <h3 className="font-black">Источники</h3>
            {Object.values(proMetaSources).map((source) => (
              <a key={source.url} href={source.url} target="_blank" rel="noreferrer" className="rounded-md border border-border bg-secondary p-3 text-sm hover:border-primary">
                <strong className="block">{source.name}</strong>
                <span className="text-muted-foreground">{source.note}</span>
              </a>
            ))}
          </div>
        </CardContent>
      </Card>

      <Card>
        <CardHeader>
          <CardTitle>Мета по ролям</CardTitle>
          <CardDescription>Локальная база теперь усиливается pro-сигналами: contested герои получают бонус в рекомендациях и банах.</CardDescription>
        </CardHeader>
        <CardContent className="grid gap-3 md:grid-cols-2 xl:grid-cols-5">
          {teamRoles.map((role) => (
            <div key={role} className="rounded-lg border border-border bg-secondary p-3">
              <h3 className="mb-3 font-black">{role}</h3>
              <div className="grid gap-2">
                {heroes
                  .filter((hero) => hero.roles.includes(role))
                  .sort((a, b) => b.meta + (getProSignal(b.name)?.scoreBoost ?? 0) - (a.meta + (getProSignal(a.name)?.scoreBoost ?? 0)))
                  .slice(0, 8)
                  .map((hero) => {
                    const signal = getProSignal(hero.name);
                    return (
                      <button key={`${role}-${hero.name}`} type="button" onClick={() => onSelect(hero.name)} className="grid grid-cols-[32px_1fr] items-center gap-2 rounded-md border border-border bg-background p-2 text-left">
                        <HeroAvatar name={hero.name} size="xs" />
                        <span>
                          <strong className="block truncate text-sm">{hero.name}</strong>
                          <span className="text-xs text-muted-foreground">{hero.tier}-tier · {hero.meta}{signal ? ` · pro ${signal.tier}` : ""}</span>
                        </span>
                      </button>
                    );
                  })}
              </div>
            </div>
          ))}
        </CardContent>
      </Card>
    </section>
  );
}

function Stat({ label, value }: { label: string; value: number }) {
  return (
    <div className="flex items-center justify-between rounded-md border border-border bg-secondary p-3">
      <span className="text-sm text-muted-foreground">{label}</span>
      <strong className="text-xl text-primary">{value}</strong>
    </div>
  );
}

function HeroAvatar({ name, size }: { name: string; size: "xs" | "sm" | "md" | "lg" | "xl" }) {
  const sizes = {
    xs: "h-8 w-8",
    sm: "h-10 w-10",
    md: "h-12 w-12",
    lg: "h-16 w-full",
    xl: "h-20 w-20",
  };
  return <img className={cn("rounded-md object-cover bg-muted", sizes[size])} src={heroImage(name)} alt="" loading="lazy" decoding="async" onError={(event) => (event.currentTarget.style.display = "none")} />;
}
