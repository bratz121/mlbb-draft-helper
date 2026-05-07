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
  | { state: "blocked"; label: "БД заблокирована"; detail: string }
  | { state: "error"; label: "БД недоступна"; detail: string };

export async function getSupabaseStatus(): Promise<SupabaseStatus> {
  if (!supabase) {
    return { state: "local", label: "Локальная база", detail: "Supabase env не настроен" };
  }

  let result;
  try {
    result = await supabase.from("heroes").select("id", { count: "exact", head: true });
  } catch (error) {
    return {
      state: "blocked",
      label: "БД заблокирована",
      detail: "Не удалось достучаться до supabase.co из текущей сети, используется локальная база",
    };
  }

  const { count, error } = result;

  if (error) {
    if (error.message.toLowerCase().includes("failed to fetch")) {
      return {
        state: "blocked",
        label: "БД заблокирована",
        detail: "Запрос к supabase.co не проходит из браузера, используется локальная база",
      };
    }

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
