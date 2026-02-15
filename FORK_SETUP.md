# Setting Up Your Forked Repository for GitHub Pages

This guide will help you set up your forked copy of this repository for deployment on GitHub Pages.

> 📝 **Language Options**: This is the English-only version (default). If you need multilingual support (English + Spanish), see [MULTILINGUAL.md](MULTILINGUAL.md) for instructions.

## Prerequisites

- You have a GitHub account
- You have forked this repository to your account
- Git is installed on your local machine

## Step 1: Clone Your Fork

Clone your forked repository to your local machine:

```bash
git clone https://github.com/YOUR_USERNAME/student-branding-starter.git
cd student-branding-starter
```

## Step 2: Initialize the Theme Submodule

The site uses the PaperMod theme as a Git submodule. Initialize it with:

```bash
git submodule update --init --recursive
```

## Step 3: Personalize Your Site

Edit the `hugo.toml` file to update your personal information:

1. Change the `baseURL` to match your GitHub Pages URL:
   ```toml
   # For username.github.io repos: baseURL = "https://username.github.io/"
   # For project repos: baseURL = "https://username.github.io/repo-name/"
   baseURL = "https://YOUR_USERNAME.github.io/student-branding-starter/"
   ```

2. Update the site title and your author information
3. Replace the social media links with your own

## Step 4: Add Your Content

1. Edit the placeholder content in the Markdown files:
   - `content/about.md` - Your bio and background
   - `content/now.md` - What you're currently doing
   - `content/contact.md` - How to reach you
   - `content/projects/` - Add your projects here

2. Need multilingual support? Switch to the `multilingual` branch which includes both English and Spanish content. See [MULTILINGUAL.md](MULTILINGUAL.md) for details.

## Step 5: Enable GitHub Pages

1. In your GitHub repository, go to Settings > Pages
2. Under "Build and Deployment":
   - Source: Select "GitHub Actions"
3. This will use the pre-configured GitHub Actions workflow in `.github/workflows/deploy.yml`

## Step 6: Commit and Push Your Changes

```bash
git add .
git commit -m "Personalize site content and configuration"
git push
```

Once you push, the GitHub Actions workflow will automatically build and deploy your site. 

## Step 7: Check Your Site

After the GitHub Actions workflow completes (usually takes 1-2 minutes), your site will be available at:
```
https://YOUR_USERNAME.github.io/student-branding-starter/
```

## Troubleshooting

- **Theme not loading**: Make sure you initialized the submodule (Step 2)
- **Build failures**: Check the GitHub Actions logs for specific errors
- **Wrong URLs**: Ensure your `baseURL` is set correctly in `hugo.toml`
- **Page not found errors**: Check that your page frontmatter has the correct URLs (e.g., `/about/`, `/projects/`, etc.)

## Customization

To customize the theme further:

1. Edit CSS variables in `assets/css/extended/custom.css`
2. Override theme templates by creating files in the `layouts/` directory
3. Add images to the `static/images/` directory

## Local Development

Run the site locally for testing:

```bash
# Install Hugo (if not already installed)
# macOS: brew install hugo
# Windows: choco install hugo -confirm

# Start the development server
hugo server -D
```

Visit `http://localhost:1313/` to see your site locally.