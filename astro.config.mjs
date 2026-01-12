import { defineConfig } from 'astro/config';
import tailwind from '@astrojs/tailwind';

export default defineConfig({
  site: 'https://devlore.noblefactor.com',
  integrations: [tailwind()],
});
