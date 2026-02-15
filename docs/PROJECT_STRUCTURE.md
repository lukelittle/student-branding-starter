# Project Structure

This document explains the complete file structure of the Student Branding Starter template.

## Repository File Tree

```
student-branding-starter/
├── .github/
│   └── workflows/
│       └── deploy.yml              # GitHub Actions workflow for deployment
├── .git/                           # Git repository data
├── .gitmodules                     # Git submodule configuration (theme)
├── .gitignore                      # Files to ignore in git
├── content/                        # All your site content
│   ├── _index.md                   # Home page content
│   ├── about.md                    # About page
│   ├── contact.md                  # Contact page
│   ├── now.md                      # Now page (what you're doing)
│   ├── posts/                      # Blog posts directory
│   │   ├── what-makes-strong-technical-post.md
│   │   └── how-to-write-about-projects.md
│   └── projects/                   # Projects directory
│       ├── _index.md               # Projects listing page
│       ├── task-manager.md         # Example project 1
│       └── weather-cli.md          # Example project 2
├── static/                         # Static assets (images, files)
│   └── images/
│       └── README.md               # Guide for adding images
├── themes/                         # Hugo themes
│   └── PaperMod/                   # PaperMod theme (git submodule)
├── hugo.toml                       # Main Hugo configuration
├── README.md                       # Main documentation (you are here)
├── QUICKSTART.md                   # Quick start guide
├── CONTRIBUTING.md                 # Contribution guidelines
├── SECURITY.md                     # Security policy
├── LICENSE                         # MIT License
├── PROJECT_STRUCTURE.md            # This file
└── setup.sh                        # Automated setup script
```

## Directory Explanations

### `.github/workflows/`

Contains GitHub Actions workflows that automate deployment.

**deploy.yml:**
- Triggers on push to main branch
- Installs Hugo
- Builds the site
- Deploys to GitHub Pages

### `content/`

All your site content in Markdown format.

**Structure:**
- `_index.md` - Home page
- `about.md` - About page
- `contact.md` - Contact page
- `now.md` - Now page
- `posts/` - Blog posts
- `projects/` - Project portfolio

**Front Matter:**
Each content file has YAML front matter:
```yaml
---
title: "Page Title"
date: 2024-03-15
draft: false
tags: ["tag1", "tag2"]
summary: "Brief description"
---
```

### `static/`

Static files served as-is (no processing).

**Common uses:**
- Images: `static/images/photo.jpg` → `/images/photo.jpg`
- PDFs: `static/resume.pdf` → `/resume.pdf`
- Favicons: `static/favicon.ico` → `/favicon.ico`
- Custom CSS/JS: `static/css/custom.css` → `/css/custom.css`

### `themes/PaperMod/`

The PaperMod theme (added as git submodule).

**Don't edit directly!** Theme updates would overwrite changes.

**To customize:**
- Override in your own files
- Use Hugo's template lookup order
- Modify `hugo.toml` parameters

### Configuration Files

**hugo.toml:**
- Site configuration
- Theme settings
- Menu structure
- Social links
- SEO settings

**.gitignore:**
- Excludes `public/` (built site)
- Excludes `resources/` (generated assets)
- Excludes OS files (.DS_Store)

**.gitmodules:**
- Defines theme submodule
- Points to PaperMod repository

## File Purposes

### Documentation Files

| File | Purpose |
|------|---------|
| README.md | Complete documentation and setup guide |
| QUICKSTART.md | 10-minute quick start guide |
| CONTRIBUTING.md | How to contribute to the project |
| SECURITY.md | Security policy and best practices |
| PROJECT_STRUCTURE.md | This file - explains structure |
| LICENSE | MIT License terms |

### Content Files

| File | Purpose |
|------|---------|
| content/_index.md | Home page content |
| content/about.md | About page |
| content/contact.md | Contact information |
| content/now.md | Current activities |
| content/posts/*.md | Blog posts |
| content/projects/*.md | Project portfolio entries |

### Configuration Files

| File | Purpose |
|------|---------|
| hugo.toml | Main site configuration |
| .gitignore | Git ignore rules |
| .gitmodules | Git submodule configuration |

### Automation Files

| File | Purpose |
|------|---------|
| .github/workflows/deploy.yml | GitHub Actions deployment |
| setup.sh | Local setup automation script |

## Content Organization

### Blog Posts

Location: `content/posts/`

**Naming convention:**
- Use descriptive names: `how-to-build-api.md`
- Use hyphens, not spaces
- Lowercase recommended

**Front matter:**
```yaml
---
title: "Post Title"
date: 2024-03-15
draft: false
tags: ["tag1", "tag2"]
summary: "Brief description for listings"
---
```

### Projects

Location: `content/projects/`

**Structure:**
- `_index.md` - Projects listing page
- Individual project files: `project-name.md`

**Front matter:**
```yaml
---
title: "Project Name"
date: 2024-03-15
draft: false
tags: ["python", "web-dev"]
summary: "One-line project description"
---
```

### Pages

Location: `content/`

**Standard pages:**
- `about.md` - About you
- `contact.md` - Contact information
- `now.md` - Current activities

**Custom pages:**
Create new `.md` files in `content/` and add to menu in `hugo.toml`.

## Build Process

### Local Development

```bash
hugo server -D
```

**What happens:**
1. Hugo reads `hugo.toml`
2. Loads theme from `themes/PaperMod/`
3. Processes content from `content/`
4. Copies static files from `static/`
5. Generates HTML in memory
6. Serves at `http://localhost:1313`
7. Watches for changes and rebuilds

### Production Build

```bash
hugo --minify
```

**What happens:**
1. Hugo reads `hugo.toml`
2. Loads theme
3. Processes content (excludes drafts)
4. Copies static files
5. Generates HTML in `public/`
6. Minifies HTML/CSS/JS
7. Optimizes for production

### GitHub Actions Deployment

**Trigger:** Push to main branch

**Steps:**
1. Checkout code
2. Initialize theme submodule
3. Install Hugo
4. Build site with `hugo --minify`
5. Upload `public/` as artifact
6. Deploy to GitHub Pages

**Result:** Site live at `https://yourusername.github.io/`

## Customization Points

### Easy Customization

**hugo.toml:**
- Site title and description
- Author information
- Social links
- Menu structure
- Theme parameters

**content/ files:**
- All page content
- Blog posts
- Projects
- About information

**static/images/:**
- Profile photos
- Project screenshots
- Blog post images

### Advanced Customization

**Override theme templates:**
Create `layouts/` directory and add template files.

**Custom CSS:**
Add `static/css/custom.css` and reference in config.

**Custom shortcodes:**
Create `layouts/shortcodes/` for reusable content blocks.

## Adding New Content

### New Blog Post

```bash
hugo new posts/my-post.md
```

Creates: `content/posts/my-post.md`

### New Project

```bash
hugo new projects/my-project.md
```

Creates: `content/projects/my-project.md`

### New Page

```bash
hugo new my-page.md
```

Creates: `content/my-page.md`

Add to menu in `hugo.toml`:
```toml
[[menu.main]]
  identifier = "my-page"
  name = "My Page"
  url = "/my-page/"
  weight = 60
```

## Theme Details

### PaperMod Theme

**Repository:** https://github.com/adityatelange/hugo-PaperMod

**Features:**
- Clean, minimal design
- Fast loading
- Mobile responsive
- Dark mode support
- SEO optimized
- Social icons
- Search functionality
- Archive pages
- Tag pages

**Why PaperMod?**
- Popular and well-maintained
- Beginner-friendly
- Extensive documentation
- Works great with GitHub Pages
- Minimal configuration needed

### Updating Theme

```bash
git submodule update --remote themes/PaperMod
```

This pulls the latest theme updates.

## Deployment Architecture

### GitHub Pages

**How it works:**
1. You push code to GitHub
2. GitHub Actions runs workflow
3. Hugo builds static site
4. Artifact uploaded to GitHub Pages
5. Site served from GitHub's CDN

**Benefits:**
- Free hosting
- Automatic HTTPS
- Custom domain support
- Fast global CDN
- No server management

### Custom Domain (Optional)

**DNS Setup:**
- A records point to GitHub Pages IPs
- CNAME record for www subdomain
- GitHub provisions SSL certificate

**Cloudflare (Recommended):**
- Free DNS management
- Additional SSL/TLS
- Performance optimization
- DDoS protection

## File Size Considerations

### Keep Small

**public/ folder:**
- Not committed to git
- Generated on each build
- Typically 1-5 MB for starter site

**Images:**
- Optimize before uploading
- Use WebP format when possible
- Keep under 500 KB each
- Use appropriate dimensions

**Theme:**
- Submodule (doesn't bloat repo)
- Only references, not full copy
- ~2 MB when checked out

### Repository Size

**Typical sizes:**
- Fresh fork: ~500 KB
- With 10 posts: ~1 MB
- With 20 posts + images: ~5 MB

**Keep it manageable:**
- Don't commit `public/`
- Optimize images
- Don't commit large files
- Use Git LFS for large assets if needed

## Troubleshooting Structure Issues

### Theme Not Found

**Problem:** Hugo can't find theme

**Solution:**
```bash
git submodule update --init --recursive
```

### Content Not Showing

**Problem:** Posts/pages not appearing

**Check:**
- File in correct directory (`content/posts/`)
- Front matter has `draft: false`
- Date not in future
- File extension is `.md`

### Images Not Loading

**Problem:** Images show broken

**Check:**
- File in `static/images/`
- Path starts with `/images/`
- Filename matches exactly (case-sensitive)
- File extension correct

### Build Failures

**Problem:** Hugo build fails

**Check:**
- `hugo.toml` syntax valid
- Front matter YAML valid
- No unclosed code blocks
- Theme submodule initialized

## Best Practices

### Content Organization

✅ **Do:**
- Use descriptive filenames
- Organize by type (posts, projects)
- Use consistent front matter
- Add summaries to all content

❌ **Don't:**
- Mix content types in same directory
- Use spaces in filenames
- Forget front matter
- Leave drafts published

### File Management

✅ **Do:**
- Optimize images before adding
- Use meaningful commit messages
- Keep repository clean
- Update documentation

❌ **Don't:**
- Commit `public/` folder
- Add large binary files
- Commit sensitive information
- Leave broken links

### Git Workflow

✅ **Do:**
- Commit related changes together
- Write clear commit messages
- Test locally before pushing
- Keep commits focused

❌ **Don't:**
- Commit everything at once
- Use vague messages ("update")
- Push untested code
- Mix unrelated changes

## Summary

This structure is designed to be:
- **Simple** - Easy to understand and navigate
- **Organized** - Clear separation of concerns
- **Scalable** - Grows with your content
- **Maintainable** - Easy to update and customize
- **Beginner-friendly** - Minimal complexity

Start with the provided structure and customize as you grow!
