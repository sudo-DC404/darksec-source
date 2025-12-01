# Contributing to DarkSec

Thank you for your interest in contributing to DarkSec! This guide will help you add content to our pentesting and security research site.

## Quick Start for Team Members

### Adding a Blog Post

1. Clone the repo if you haven't already:
```bash
git clone https://github.com/sudo-DC404/darksec-source.git
cd darksec-source
```

2. Run the blog creation script:
```bash
./scripts/new-blog.sh
```

3. Follow the prompts to enter:
   - Title
   - Description
   - Author name
   - Tags

4. The script creates a new markdown file in `src/content/blog/`

5. Edit the file and add your content

6. Commit and push:
```bash
git add .
git commit -m "Add blog post: Your Title"
git push
```

7. Deploy to Cloudflare:
```bash
npm run build
wrangler pages deploy dist --project-name=darksec
```

### Adding a Tool

1. Run the tool creation script:
```bash
./scripts/new-tool.sh
```

2. Follow the prompts to enter:
   - Tool name
   - Description
   - Author
   - Language (Python, JavaScript, Go, etc.)
   - Category (Network, Web Security, etc.)
   - GitHub URL

3. Edit the generated file to add details

4. Commit and push (same as blog posts above)

## Manual Method

### Blog Post Structure

Create a new file in `src/content/blog/your-post-slug.md`:

```markdown
---
title: "Your Post Title"
description: "Brief description"
pubDate: 2024-12-01
author: "Your Name"
tags: ["pentesting", "tutorial", "web-security"]
---

# Your Post Title

Your content here...

## Section Heading

More content...
```

### Tool Structure

Create a new file in `src/content/tools/your-tool-slug.md`:

```markdown
---
name: "Tool Name"
description: "Tool description"
author: "Your Name"
language: "Python"
category: "Network"
github: "https://github.com/username/repo"
date: 2024-12-01
---

# Tool Name

Detailed description...

## Features
- Feature 1
- Feature 2

## Installation
\`\`\`bash
pip install your-tool
\`\`\`

## Usage
\`\`\`bash
your-tool --help
\`\`\`
```

## For External Contributors

1. Fork the repository
2. Create your content using the structures above
3. Test locally: `npm run dev`
4. Submit a pull request
5. Team members will review and merge

## Content Guidelines

- All tools must be for **educational and authorized testing only**
- Include clear usage examples
- Add proper attribution
- Use markdown formatting
- Test your content locally before pushing

## Local Development

```bash
# Install dependencies
npm install

# Start dev server
npm run dev

# Build for production
npm run build

# Deploy to Cloudflare
wrangler pages deploy dist --project-name=darksec
```

## Questions?

Open an issue on GitHub or contact the team!
