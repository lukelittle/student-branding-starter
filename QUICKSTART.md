# Quick Start Guide

Get your personal site live in 10 minutes.

## Prerequisites

- GitHub account
- Git installed locally (optional, for local development)

## Step 1: Fork This Repository (2 minutes)

1. Click the **"Fork"** button at the top-right of this page
2. Select your GitHub account
3. Optionally rename to `yourusername.github.io` (recommended)
4. Click **"Create fork"**

## Step 2: Enable GitHub Pages (2 minutes)

1. Go to your forked repository
2. Click **Settings** tab
3. Click **Pages** in left sidebar
4. Under "Source", select **GitHub Actions**
5. Done! Your site will deploy automatically

## Step 3: Customize (5 minutes)

### Edit hugo.toml

1. Click on `hugo.toml` in your repository
2. Click the pencil icon (Edit)
3. Update these values:

```toml
baseURL = "https://yourusername.github.io/"  # Your GitHub username
title = "Your Name - Personal Site"          # Your actual name

[params]
  author = "Your Name"                       # Your name
  
  [[params.socialIcons]]
    name = "github"
    url = "https://github.com/yourusername"  # Your GitHub
  
  [[params.socialIcons]]
    name = "linkedin"
    url = "https://linkedin.com/in/yourprofile"  # Your LinkedIn
  
  [[params.socialIcons]]
    name = "email"
    url = "mailto:your.email@example.com"    # Your email
```

4. Scroll down and click **"Commit changes"**
5. Add commit message: "Customize site configuration"
6. Click **"Commit changes"**

### Edit About Page

1. Navigate to `content/about.md`
2. Click the pencil icon (Edit)
3. Replace placeholder text with your information
4. Commit changes

## Step 4: View Your Site (1 minute)

1. Go to **Actions** tab
2. Wait for the green checkmark (deployment complete)
3. Go to **Settings → Pages**
4. Click the link to your live site!

Your site is now live at: `https://yourusername.github.io/`

## Next Steps

### Write Your First Post

1. Install Hugo locally (see main README)
2. Clone your repository
3. Run: `hugo new posts/my-first-post.md`
4. Edit the file, set `draft: false`
5. Commit and push

### Add a Project

1. Run: `hugo new projects/my-project.md`
2. Fill in project details
3. Commit and push

### Customize Further

- Add your photo to `static/images/`
- Update the Now page with current activities
- Customize the Contact page
- Add more social links

## Need Help?

- **Full documentation:** See [README.md](README.md)
- **Issues:** [Open an issue](https://github.com/yourusername/student-branding-starter/issues)
- **Hugo docs:** [gohugo.io](https://gohugo.io)

## Common Issues

**Site shows 404:**
- Wait 5 minutes for deployment
- Check baseURL matches your GitHub Pages URL
- Verify repository is public

**Changes not showing:**
- Check Actions tab for build status
- Clear browser cache
- Wait for deployment to complete

**Theme not loading:**
- Make sure you forked (not just cloned)
- Check that .gitmodules file exists
- Verify theme submodule is initialized

---

**That's it!** You now have a professional personal site. Start writing and sharing your work! 🚀
