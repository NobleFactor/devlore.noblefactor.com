// The products the site publishes, in display order. One list, read by the CLI index page and the
// reference sidebar, so a product the suite commits to is one line here and nowhere else (#457).
//
// Ruled 2026-09-26: writ, lore and star ship; devlore-test is not a commitment, and the docs sync
// (devlore-cli#956) does not carry its pages. The schema in src/content/config.ts names the same three,
// as literals, because Astro's loader reads it at build time.
export const tools = [
  { name: "writ", fallback: "Environment manager with platform-aware symlinks" },
  { name: "lore", fallback: "The tribal knowledge package deployer" },
  { name: "star", fallback: "The scripting runtime and its extensions" },
] as const;

export type ToolName = (typeof tools)[number]["name"];
