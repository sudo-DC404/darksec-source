import { defineCollection, z } from 'astro:content';

const blog = defineCollection({
  type: 'content',
  schema: z.object({
    title: z.string(),
    description: z.string(),
    pubDate: z.coerce.date(),
    author: z.string().default('DarkSec Team'),
    tags: z.array(z.string()).default([]),
  }),
});

const tools = defineCollection({
  type: 'content',
  schema: z.object({
    name: z.string(),
    description: z.string(),
    author: z.string().default('DarkSec Team'),
    language: z.string(),
    category: z.string(),
    github: z.string(),
    date: z.coerce.date(),
  }),
});

export const collections = { blog, tools };
