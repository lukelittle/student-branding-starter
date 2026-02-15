#!/bin/bash

# Student Branding Starter - Setup Script
# This script helps you set up your personal site quickly

set -e

echo "🚀 Student Branding Starter - Setup"
echo "===================================="
echo ""

# Check if Hugo is installed
if ! command -v hugo &> /dev/null; then
    echo "❌ Hugo is not installed."
    echo ""
    echo "Please install Hugo first:"
    echo "  macOS:   brew install hugo"
    echo "  Windows: choco install hugo-extended"
    echo "  Linux:   sudo apt install hugo"
    echo ""
    echo "Or download from: https://github.com/gohugoio/hugo/releases"
    exit 1
fi

echo "✅ Hugo is installed: $(hugo version)"
echo ""

# Initialize theme submodule
echo "📦 Initializing theme submodule..."
if [ -d "themes/PaperMod/.git" ]; then
    echo "✅ Theme already initialized"
else
    git submodule update --init --recursive
    echo "✅ Theme initialized"
fi
echo ""

# Prompt for customization
echo "🎨 Let's customize your site!"
echo ""

read -p "Your full name: " USER_NAME
read -p "Your GitHub username: " GITHUB_USER
read -p "Your email: " USER_EMAIL
read -p "Your LinkedIn profile (username only): " LINKEDIN_USER

# Update hugo.toml
echo ""
echo "📝 Updating configuration..."

# Create backup
cp hugo.toml hugo.toml.backup

# Update values (basic sed replacements)
sed -i.bak "s|yourusername.github.io|${GITHUB_USER}.github.io|g" hugo.toml
sed -i.bak "s|Your Name|${USER_NAME}|g" hugo.toml
sed -i.bak "s|yourusername|${GITHUB_USER}|g" hugo.toml
sed -i.bak "s|yourprofile|${LINKEDIN_USER}|g" hugo.toml
sed -i.bak "s|your.email@example.com|${USER_EMAIL}|g" hugo.toml

# Clean up backup files
rm hugo.toml.bak

echo "✅ Configuration updated"
echo ""

# Test build
echo "🔨 Testing build..."
if hugo --minify > /dev/null 2>&1; then
    echo "✅ Build successful"
else
    echo "❌ Build failed. Check for errors above."
    exit 1
fi
echo ""

# Start server
echo "🌐 Starting local server..."
echo ""
echo "Your site will be available at: http://localhost:1313"
echo ""
echo "Press Ctrl+C to stop the server"
echo ""
echo "Next steps:"
echo "  1. Edit content/about.md with your information"
echo "  2. Create your first post: hugo new posts/my-first-post.md"
echo "  3. Commit and push to GitHub to deploy"
echo ""
echo "Starting server in 3 seconds..."
sleep 3

hugo server -D
