<script lang="ts">
	import '../app.css';
	import { onMount } from 'svelte';
	import { i18n } from '$lib/i18n';

	let { children } = $props();
	let mounted = $state(false);

	onMount(() => {
		mounted = true;
	});
</script>

<svelte:head>
	<title>{__APP_TITLE__} {__APP_VERSION__}</title>
</svelte:head>

{#if mounted}
	{@render children()}
{/if}
