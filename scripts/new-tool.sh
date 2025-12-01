#!/bin/bash

# Simple script to create a new tool entry

echo "=== Add New Tool ==="
echo ""

read -p "Tool Name: " name
read -p "Description: " description
read -p "Author [DarkSec Team]: " author
author=${author:-"DarkSec Team"}

echo "Language options: Python, JavaScript, Go, Rust, C/C++, Bash, PowerShell, Other"
read -p "Language: " language

echo "Category options: Network, Web Security, Cryptography, Forensics, Exploitation, Reconnaissance, Other"
read -p "Category: " category

read -p "GitHub URL: " github

# Convert name to slug
slug=$(echo "$name" | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g' | sed 's/[^a-z0-9-]//g')
filename="src/content/tools/${slug}.md"

# Get current date
date=$(date +%Y-%m-%d)

# Create the tool file
cat > "$filename" << EOF
---
name: "$name"
description: "$description"
author: "$author"
language: "$language"
category: "$category"
github: "$github"
date: $date
---

# $name

$description

## Features

- Feature 1
- Feature 2
- Feature 3

## Installation

\`\`\`bash
# Add installation instructions
\`\`\`

## Usage

\`\`\`bash
# Add usage examples
\`\`\`

## Requirements

- Requirement 1
- Requirement 2
EOF

echo ""
echo "✅ Tool created: $filename"
echo ""
echo "Next steps:"
echo "1. Edit the file and add details about your tool"
echo "2. Run: git add $filename"
echo "3. Run: git commit -m \"Add tool: $name\""
echo "4. Run: git push"
echo "5. Run: npm run build && wrangler pages deploy dist --project-name=darksec"
