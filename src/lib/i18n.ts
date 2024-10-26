import * as runtime from '$lib/paraglide/runtime';
import type { AvailableLanguageTag } from '$lib/paraglide/runtime';
import * as messages from '$lib/paraglide/messages';

type MessageKey = keyof typeof messages;
type MessageParams<K extends MessageKey> = Parameters<typeof messages[K]>[0];

const defaultLanguage: AvailableLanguageTag = 'en';
let currentLanguage: AvailableLanguageTag = defaultLanguage;

export const i18n = {
  ...runtime,
  setLanguage: (lang: AvailableLanguageTag) => {
    currentLanguage = lang;
    runtime.setLanguageTag(lang);
  },
  getLanguage: () => currentLanguage,
  t: <K extends MessageKey>(key: K, params?: MessageParams<K>) => {
    return messages[key](params as any);
  }
};
