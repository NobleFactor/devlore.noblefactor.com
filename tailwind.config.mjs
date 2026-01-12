/** @type {import('tailwindcss').Config} */
export default {
  content: ['./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}'],
  theme: {
    extend: {
      colors: {
        // DevLore brand colors - adjust as needed
        'lore-primary': '#1e40af',    // Blue
        'lore-secondary': '#0f172a',  // Dark slate
        'lore-accent': '#22c55e',     // Green for success/verify
      },
    },
  },
  plugins: [],
};
