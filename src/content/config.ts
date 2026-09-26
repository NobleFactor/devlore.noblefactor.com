import { defineCollection, z } from "astro:content";

const cli = defineCollection({
  type: "content",
  schema: z.object({
    title: z.string(),
    description: z.string(),
    // The committed products (#457, ruled 2026-09-26). A page for anything else fails the build, and
    // should: the docs sync (devlore-cli#956) is what keeps other trees out, and this is the check.
    tool: z.enum(["writ", "lore", "star"]),
    command: z.string(),
    parent: z.string(),
    generated: z.string(),
    version: z.string(),
  }),
});

const guides = defineCollection({
  type: "content",
  schema: z.object({
    title: z.string(),
    description: z.string(),
    tool: z.enum(["devlore", "writ", "lore", "star"]),
    category: z.enum(["overview", "tutorial", "concept", "reference"]),
    order: z.number(),
  }),
});

export const collections = { cli, guides };
