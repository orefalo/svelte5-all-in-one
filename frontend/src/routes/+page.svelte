<script lang="ts">
	import { Button } from '$lib/components/ui/button';

	function handleClick() {
		const title = document.getElementById('title');
		if (title) {
			if (title.textContent === 'Hello, Tauri!') {
				title.textContent = 'Goodbye, Tauri!';
			} else {
				title.textContent = 'Hello, Tauri!';
			}
		}
	}
</script>

<div class="flex h-screen flex-col items-center justify-center">
	<Button onclick={handleClick}>Click me</Button>
	<div>
		<h1 id="title">Hello, Tauri!</h1>
	</div>
</div>
