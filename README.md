# DarkSec - Pentesting & Security Research Site

A collaborative pentesting and security research platform built with Astro. Share tutorials, tools, and security research with the community.

🌐 **Live Site:** [darksec.uk](https://darksec.uk)
📦 **GitHub:** [sudo-DC404/darksec-source](https://github.com/sudo-DC404/darksec-source)

## Features

- **Blog System** - Share pentesting tutorials and security research
- **Tools Showcase** - Display security tools built by the team
- **Markdown-Based** - Easy content management with Git
- **Dark Theme** - Perfect for security professionals
- **Fast & Modern** - Built with Astro for optimal performance

## Quick Start

### For Team Members

#### Add a Blog Post
```bash
./scripts/new-blog.sh
```
Follow the prompts, then edit the generated file in `src/content/blog/`

#### Add a Tool
```bash
./scripts/new-tool.sh
```
Follow the prompts, then edit the generated file in `src/content/tools/`

#### Deploy Your Changes
```bash
git add .
git commit -m "Your message"
git push
npm run build
wrangler pages deploy dist --project-name=darksec
```

## Project Structure

```
darksec-source/
├── src/
│   ├── content/
│   │   ├── blog/          # Blog posts (markdown)
│   │   └── tools/         # Tool entries (markdown)
│   ├── layouts/           # Page layouts
│   ├── pages/             # Site pages
│   │   ├── index.astro    # Landing page
│   │   ├── blog/          # Blog pages
│   │   └── tools.astro    # Tools page
│   └── styles/            # Global styles
├── scripts/
│   ├── new-blog.sh        # Create new blog post
│   └── new-tool.sh        # Create new tool entry
└── public/                # Static assets
```

## Commands

| Command | Action |
|---------|--------|
| `npm install` | Install dependencies |
| `npm run dev` | Start dev server at `localhost:4321` |
| `npm run build` | Build for production |
| `./scripts/new-blog.sh` | Create a new blog post |
| `./scripts/new-tool.sh` | Add a new tool |
| `wrangler pages deploy dist --project-name=darksec` | Deploy to Cloudflare |

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for detailed instructions on adding content.

### Quick Contributing Guide

1. Fork the repository
2. Create your content in `src/content/blog/` or `src/content/tools/`
3. Test locally with `npm run dev`
4. Submit a pull request

## Content Format

### Blog Post Example
```markdown
---
title: "Getting Started with Web Pentesting"
description: "Learn the basics of web application security testing"
pubDate: 2024-12-01
author: "Your Name"
tags: ["pentesting", "web-security", "tutorial"]
---

# Getting Started with Web Pentesting

Your content here...
```

### Tool Example
```markdown
---
name: "Port Scanner Pro"
description: "Fast network port scanner with service detection"
author: "Your Name"
language: "Python"
category: "Network"
github: "https://github.com/username/repo"
date: 2024-12-01
---

# Port Scanner Pro

Tool details and documentation...
```

## Tech Stack

- **Framework:** [Astro](https://astro.build)
- **Content:** Markdown with frontmatter
- **Deployment:** Cloudflare Pages
- **Styling:** Scoped CSS with CSS variables

## Adding Team Members

To give someone access to add content:

1. Add them as a collaborator on GitHub
2. They clone the repo: `git clone https://github.com/sudo-DC404/darksec-source.git`
3. They can use the helper scripts to add content
4. They push changes and deploy

## License

Educational and authorized testing purposes only.

## Questions?

Open an issue or contact the team!
