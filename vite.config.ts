import { paraglideVitePlugin } from '@inlang/paraglide-js';
import tailwindcss from '@tailwindcss/vite';
import { sveltekit } from '@sveltejs/kit/vite';
import { defineConfig } from 'vite';

/*** get info from package.json ***/
import { readFileSync } from 'fs';
import { fileURLToPath } from 'url';
const file = fileURLToPath(new URL('package.json', import.meta.url));
const json = readFileSync(file, 'utf8');
const pkg = JSON.parse(json);

export default defineConfig({
	plugins: [
		tailwindcss(),
		sveltekit(),
		paraglideVitePlugin({
			project: './project.inlang',
			outdir: './src/lib/paraglide',
			strategy: ['url', 'cookie', 'baseLocale']
		})
	],
	test: {
		projects: [
			{
				extends: './vite.config.ts',
				test: {
					name: 'client',
					environment: 'browser',
					browser: {
						enabled: true,
						provider: 'playwright',
						instances: [{ browser: 'chromium' }]
					},
					include: ['src/**/*.svelte.{test,spec}.{js,ts}'],
					exclude: ['src/lib/server/**'],
					setupFiles: ['./vitest-setup-client.ts']
				}
			},
			{
				extends: './vite.config.ts',
				test: {
					name: 'server',
					environment: 'node',
					include: ['src/**/*.{test,spec}.{js,ts}'],
					exclude: ['src/**/*.svelte.{test,spec}.{js,ts}']
				}
			}
		]
	},
	define: {
		__DATE__: `'${new Date().toISOString()}'`,
		__APP_VERSION__: JSON.stringify(pkg.version),
		__APP_NAME__: JSON.stringify(pkg.name),
		__APP_TITLE__: JSON.stringify(pkg.title),
		__APP_HOMEPAGE__: JSON.stringify(pkg.homepage),
		__APP_DESCRIPTION__: JSON.stringify(pkg.description),
		__APP_MENU_TITLE__: JSON.stringify(pkg.menu_title),
		__APP_MENU_SUBTITLE__: JSON.stringify(pkg.menu_subtitle),
		__APP_PROFILE_TABLE__: JSON.stringify(pkg.profileTable),
		__APP_PROFILE_KEY__: JSON.stringify(pkg.profileKey),
		__APP_THEME_COLOR__: JSON.stringify(pkg.theme_color),
		__APP_BACKGROUND_COLOR__: JSON.stringify(pkg.background_color)
	}
});
