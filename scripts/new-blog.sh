#!/bin/bash

# Simple script to create a new blog post

echo "=== Create New Blog Post ==="
echo ""

read -p "Title: " title
read -p "Description: " description
read -p "Author [DarkSec Team]: " author
author=${author:-"DarkSec Team"}
read -p "Tags (comma separated) [pentesting]: " tags
tags=${tags:-"pentesting"}

# Convert title to slug
slug=$(echo "$title" | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g' | sed 's/[^a-z0-9-]//g')
filename="src/content/blog/${slug}.md"

# Get current date
date=$(date +%Y-%m-%d)

# Convert comma-separated tags to YAML array
IFS=',' read -ra TAG_ARRAY <<< "$tags"
yaml_tags="["
for i in "${!TAG_ARRAY[@]}"; do
  tag=$(echo "${TAG_ARRAY[$i]}" | xargs) # trim whitespace
  if [ $i -gt 0 ]; then yaml_tags+=", "; fi
  yaml_tags+="\"$tag\""
done
yaml_tags+="]"

# Create the blog post file
cat > "$filename" << EOF
---
title: "$title"
description: "$description"
pubDate: $date
author: "$author"
tags: $yaml_tags
---

# $title

Write your blog post content here...

## Section 1

Your content...

## Section 2

Your content...
EOF

echo ""
echo "✅ Blog post created: $filename"
echo ""
echo "Next steps:"
echo "1. Edit the file and add your content"
echo "2. Run: git add $filename"
echo "3. Run: git commit -m \"Add blog post: $title\""
echo "4. Run: git push"
echo "5. Run: npm run build && wrangler pages deploy dist --project-name=darksec"
