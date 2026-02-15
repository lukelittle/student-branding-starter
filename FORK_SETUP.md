# Forking and Setting Up Your Personal Site

This guide will walk you through the process of forking this repository and setting it up for your own personal site using GitHub Pages. Follow these steps exactly to get your site up and running quickly.

## Step 1: Fork the Repository

1. Click the **Fork** button at the top-right corner of this repository.
2. Wait for GitHub to create a copy of the repository in your account.

## Step 2: Initialize the Theme Submodule

After forking, you need to initialize the theme submodule (PaperMod). You can do this in two ways:

**Option A: Command Line (Recommended)**
1. Clone your forked repository to your computer:
   ```bash
   git clone https://github.com/YOUR-USERNAME/student-branding-starter.git
   cd student-branding-starter
   ```
2. Initialize the submodule:
   ```bash
   git submodule update --init --recursive
   ```
3. Push the changes back to GitHub:
   ```bash
   git add .
   git commit -m "Initialize theme submodule"
   git push
   ```

**Option B: GitHub Web Interface**
1. In your forked repository, navigate to the `.github/workflows/deploy.yml` file.
2. Make sure it exists and contains the line `submodules: recursive` in the checkout step.
3. Make a trivial change somewhere (like adding a space to the README.md) to trigger the workflow.

## Step 3: Update Configuration

You need to update several values in the `hugo.toml` file:

1. Open `hugo.toml` in the GitHub web editor (or your local editor if you cloned the repo).
2. Look for all comments marked with ⚠️ - these indicate values you MUST change.
3. At minimum, update these critical values:

   ```toml
   # Update this to YOUR GitHub username and repository name
   baseURL = "https://YOUR-USERNAME.github.io/student-branding-starter/"
   
   # Update with your name
   title = "Your Name - Personal Site"
   
   # Update your name in language settings
   [languages.en]
   title = "Your Name - Personal Site"
   
   # Update your author info
   [languages.en.params]
   author = "Your Name"
   
   # Update your home page intro
   [languages.en.params.homeInfoParams]
   Title = "Hi, I'm Your Name 👋"
   
   # Update your social links
   [[languages.en.params.socialIcons]]
   name = "github"
   url = "https://github.com/YOUR-USERNAME"
   ```

4. If using a custom domain, set `baseURL = "https://your-domain.com/"`
5. Commit your changes with a message like "Update configuration for my site"

## Step 4: Enable GitHub Pages

1. Go to your repository's **Settings** tab.
2. In the left sidebar, click on **Pages**.
3. Under **Source**, select **GitHub Actions**.
4. **DO NOT** select "Deploy from a branch" - this won't work for Hugo sites.

![GitHub Pages Settings](https://i.imgur.com/THe6vXD.png)

## Step 5: Optional Custom Domain Setup

If you want to use a custom domain:

1. Still in the **Pages** settings, scroll to **Custom domain**.
2. Enter your domain name (e.g., `yourdomain.com` or `blog.yourdomain.com`).
3. Click **Save**.
4. Follow the DNS instructions GitHub provides.
5. Update `baseURL` in `hugo.toml` to match your custom domain.

## Step 6: Wait for Deployment

1. Go to the **Actions** tab in your repository.
2. You should see a workflow running (or queued to run).
3. Wait for it to complete (green checkmark).
4. Your site should be live at the URL you configured!

## Troubleshooting

### Theme Not Loading
- Make sure you initialized the submodule.
- Check if `.gitmodules` file exists and points to the PaperMod theme.

### Site Not Deploying
- Check the Actions tab for error messages.
- Make sure you selected "GitHub Actions" (not a branch) as the deployment source.

### Links Not Working
- Verify your `baseURL` is correct - it should match your GitHub Pages URL.
- For username.github.io repos, use `https://username.github.io/`.
- For project repos like this one, use `https://username.github.io/repo-name/`.

### Images Not Showing
- Make sure they're in the `static/images/` directory.
- Reference them with paths starting with `/images/`.

## Next Steps

After your site is up and running:

1. Update the content in `content/en/about.md`
2. Update the content in `content/en/now.md`
3. Create your own blog posts in `content/en/posts/`
4. Add your projects in `content/en/projects/`
5. Customize the theme further by exploring the [PaperMod Wiki](https://github.com/adityatelange/hugo-PaperMod/wiki)

## Need Help?

Consult the [Hugo documentation](https://gohugo.io/documentation/) or the [GitHub Pages documentation](https://docs.github.com/pages) for more advanced customization.