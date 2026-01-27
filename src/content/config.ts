import { defineCollection, z } from "astro:content";

const cli = defineCollection({
  type: "content",
  schema: z.object({
    title: z.string(),
    description: z.string(),
    tool: z.enum(["writ", "lore"]),
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
    tool: z.enum(["devlore", "writ", "lore"]),
    category: z.enum(["overview", "tutorial", "concept", "reference"]),
    order: z.number(),
  }),
});

export const collections = { cli, guides };
