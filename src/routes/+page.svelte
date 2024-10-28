<script lang="ts">
	import { Button } from '$lib/components/ui/button';

	function handleClick() {
		const message = document.getElementById('message');
		if (message) {
			message.textContent = 'You clicked the button.';
		}
		const title = document.getElementById('title');
		if (title) {
			title.textContent = 'Goodbye, Tauri!';
		}
	}
</script>

<div class="flex h-screen flex-col items-center justify-center">
	<Button onclick={handleClick}>Click me</Button>
	<div>
		<h1 id="title">Hello, Tauri!</h1>
		<div id="message"></div>
	</div>
</div>
