<script lang="ts">
	import { i18n } from '$lib/i18n';
	import * as m from '$lib/paraglide/messages.js';
	import type { AvailableLanguageTag } from '$lib/paraglide/runtime';

	function switchToLanguage(newLanguage: AvailableLanguageTag) {
		i18n.setLanguage(newLanguage);
	}
</script>

<h1>{m.hello_world({ name: 'SvelteKit User' })}</h1>
<div>
	<button on:click={() => switchToLanguage('en')}>en</button>
	<button on:click={() => switchToLanguage('es')}>es</button>
</div>
