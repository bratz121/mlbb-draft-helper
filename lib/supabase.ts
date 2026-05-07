import { createClient } from "@supabase/supabase-js";

const fallbackSupabaseUrl = "https://kwssaydlgyagfphpovut.supabase.co";
const fallbackSupabaseAnonKey = "sb_publishable_vU2UVKCriJ24p0BSusxAcg_UkFFd9UP";

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || fallbackSupabaseUrl;
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || fallbackSupabaseAnonKey;

export const isSupabaseConfigured = Boolean(supabaseUrl && supabaseAnonKey);

export const supabase = isSupabaseConfigured ? createClient(supabaseUrl!, supabaseAnonKey!) : null;

export type SupabaseStatus =
  | { state: "local"; label: "Локальная база"; detail: string }
  | { state: "empty"; label: "БД пустая"; detail: string }
  | { state: "ready"; label: "БД подключена"; detail: string }
  | { state: "error"; label: "БД недоступна"; detail: string };

export async function getSupabaseStatus(): Promise<SupabaseStatus> {
  if (!supabase) {
    return { state: "local", label: "Локальная база", detail: "Supabase env не настроен" };
  }

  const { count, error } = await supabase.from("heroes").select("id", { count: "exact", head: true });

  if (error) {
    return {
      state: "error",
      label: "БД недоступна",
      detail: error.message,
    };
  }

  if (!count) {
    return {
      state: "empty",
      label: "БД пустая",
      detail: "Подключение есть, но герои ещё не загружены",
    };
  }

  return {
    state: "ready",
    label: "БД подключена",
    detail: `${count} героев в Supabase`,
  };
}
