# Multilingual Support (English + Spanish)

This repository offers two versions of the student branding starter template:

1. **English-Only (Default - `main` branch)** - This is what you're currently using
2. **Multilingual (English + Spanish - `multilingual` branch)** - For bilingual students or courses

## When to Use the Multilingual Branch

Consider using the multilingual branch if:

- You are teaching in a bilingual environment
- Your students need to showcase their work in both English and Spanish
- You want to reach audiences who speak different languages
- You are specifically working with English and Spanish content

## How to Use the Multilingual Version

### Option 1: Fork Directly from the Multilingual Branch

This is the simplest approach if you know you need multilingual support from the start.

1. Visit: `https://github.com/yourusername/student-branding-starter/tree/multilingual`
2. Click the "Fork" button (GitHub preserves branch selection when forking)
3. After forking, set the multilingual branch as default:
   - Go to Settings → Branches
   - Change default branch from `main` to `multilingual`
   - Click "Update"
4. Follow the same setup steps from [FORK_SETUP.md](FORK_SETUP.md)

### Option 2: Switch an Existing Fork to Multilingual

If you already forked from `main` and want to switch:

```bash
# Get the multilingual branch
git fetch origin multilingual:multilingual

# Switch to the multilingual branch
git checkout multilingual

# Push to your fork
git push -u origin multilingual
```

Then set as default branch in your repository's Settings → Branches if desired.

## Multilingual Configuration

The multilingual version includes:

- Dual language configuration in `hugo.toml`
- Content in both `content/en/` and `content/es/` directories
- Language switch toggle in the site header
- i18n translation files for both languages
- URLs include language codes (e.g., `/en/about/` and `/es/acerca-de/`)

## Adding Content in Both Languages

In the multilingual version:

1. English content goes in `content/en/`
2. Spanish content goes in `content/es/`
3. Each file needs a corresponding version in both directories

For example, if you create `content/en/posts/my-project.md`, you should also create `content/es/posts/my-project.md` with the translated content.

## Deployment

Deployment works exactly the same way as the English-only version:

1. GitHub Actions will automatically build and deploy your site
2. The workflow is identical for both branches
3. GitHub Pages will serve your multilingual site with language switching

## Testing Locally

Run `hugo server` to test your multilingual site locally. You'll see:

- Language switcher in the navigation
- Switch between `/en/` and `/es/` paths
- Translated page titles and site elements