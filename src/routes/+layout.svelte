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

{#if mounted}
	{@render children()}
{/if}
