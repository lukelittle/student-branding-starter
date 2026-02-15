# Deployment Checklist

Use this checklist to ensure your site is properly configured and ready to go live.

## Pre-Deployment

### Repository Setup

- [ ] Forked the repository to your GitHub account
- [ ] Renamed repository (optional but recommended: `yourusername.github.io`)
- [ ] Repository is public (required for free GitHub Pages)
- [ ] Cloned repository to local machine (if developing locally)
- [ ] Theme submodule initialized: `git submodule update --init --recursive`

### Configuration

- [ ] Updated `baseURL` in `hugo.toml` to match your GitHub Pages URL
- [ ] Changed site `title` to your name
- [ ] Updated `author` parameter
- [ ] Updated `description` parameter
- [ ] Added your GitHub URL to social icons
- [ ] Added your LinkedIn URL to social icons
- [ ] Added your email to social icons
- [ ] Customized home page `Title` and `Content`
- [ ] Verified all URLs are correct (no placeholder text)

### Content

- [ ] Updated `content/about.md` with your information
- [ ] Updated `content/contact.md` with your contact details
- [ ] Updated `content/now.md` with current activities
- [ ] Removed or customized example blog posts
- [ ] Removed or customized example projects
- [ ] Added at least one piece of original content
- [ ] All content has `draft: false` in front matter
- [ ] All content has proper front matter (title, date, summary)

### Images

- [ ] Added profile photo to `static/images/` (if using)
- [ ] Optimized all images (< 500 KB each)
- [ ] Verified image paths are correct (`/images/filename.jpg`)
- [ ] Added alt text to all images
- [ ] Tested images load correctly locally

### Local Testing

- [ ] Hugo installed and working: `hugo version`
- [ ] Site builds without errors: `hugo --minify`
- [ ] Site runs locally: `hugo server -D`
- [ ] Tested all pages load correctly
- [ ] Tested all links work
- [ ] Tested on mobile viewport
- [ ] Checked for typos and grammar
- [ ] Verified no placeholder text remains

## GitHub Pages Setup

### Enable Pages

- [ ] Went to repository Settings → Pages
- [ ] Set Source to "GitHub Actions"
- [ ] Saved settings

### Verify Workflow

- [ ] `.github/workflows/deploy.yml` exists
- [ ] Workflow file is not modified (unless intentionally)
- [ ] Pushed at least one commit to trigger workflow
- [ ] Checked Actions tab for workflow run
- [ ] Workflow completed successfully (green checkmark)
- [ ] No errors in workflow logs

### Verify Deployment

- [ ] Visited GitHub Pages URL (Settings → Pages shows the URL)
- [ ] Site loads correctly
- [ ] All pages accessible
- [ ] All images load
- [ ] All links work
- [ ] Mobile responsive
- [ ] HTTPS working (padlock icon in browser)

## Post-Deployment

### SEO and Metadata

- [ ] Page titles are descriptive
- [ ] Meta descriptions are present
- [ ] Social media preview looks good (check with [metatags.io](https://metatags.io))
- [ ] RSS feed accessible at `/index.xml`
- [ ] Sitemap accessible at `/sitemap.xml`

### Performance

- [ ] Site loads quickly (< 3 seconds)
- [ ] Images optimized
- [ ] No console errors in browser dev tools
- [ ] Tested on multiple browsers (Chrome, Firefox, Safari)
- [ ] Tested on mobile device

### Content Quality

- [ ] No lorem ipsum or placeholder text
- [ ] No broken links
- [ ] No broken images
- [ ] Spelling and grammar checked
- [ ] Code examples formatted correctly
- [ ] All dates are correct

### Accessibility

- [ ] Images have alt text
- [ ] Links have descriptive text (not "click here")
- [ ] Color contrast is sufficient
- [ ] Site navigable with keyboard
- [ ] Headings are properly structured (h1, h2, h3)

## Custom Domain (Optional)

If using a custom domain:

### DNS Configuration

- [ ] Purchased domain from registrar
- [ ] Added A records pointing to GitHub Pages IPs:
  - [ ] 185.199.108.153
  - [ ] 185.199.109.153
  - [ ] 185.199.110.153
  - [ ] 185.199.111.153
- [ ] Added CNAME record for www subdomain
- [ ] DNS propagated (check with [whatsmydns.net](https://whatsmydns.net))

### GitHub Configuration

- [ ] Added custom domain in Settings → Pages
- [ ] CNAME file created in repository
- [ ] DNS check passed (green checkmark in Settings)
- [ ] Waited 24 hours for SSL certificate
- [ ] Enabled "Enforce HTTPS"
- [ ] Updated `baseURL` in `hugo.toml` to custom domain

### Cloudflare (If Using)

- [ ] Domain added to Cloudflare
- [ ] Nameservers changed at registrar
- [ ] DNS records added in Cloudflare
- [ ] Proxy status set to "DNS only" (gray cloud)
- [ ] SSL/TLS mode set to "Full (Strict)"
- [ ] WWW redirect configured (if desired)

### Verification

- [ ] Custom domain loads site correctly
- [ ] HTTPS working on custom domain
- [ ] WWW redirect working (if configured)
- [ ] No redirect loops
- [ ] No mixed content warnings

## Ongoing Maintenance

### Regular Tasks

- [ ] Write new content regularly (aim for monthly)
- [ ] Update "Now" page monthly
- [ ] Check for broken links quarterly
- [ ] Update Hugo version when new releases come out
- [ ] Update theme: `git submodule update --remote themes/PaperMod`
- [ ] Review and respond to any GitHub issues
- [ ] Monitor site analytics (if configured)

### Content Strategy

- [ ] Plan next 3 blog post topics
- [ ] Document completed projects
- [ ] Update portfolio with new work
- [ ] Share posts on social media
- [ ] Engage with readers who comment

### Technical Maintenance

- [ ] Monitor GitHub Actions for failed builds
- [ ] Check site loads correctly after updates
- [ ] Backup repository (GitHub is your backup, but consider local clone)
- [ ] Review security advisories for Hugo and theme
- [ ] Keep dependencies updated

## Troubleshooting

If something isn't working, check:

### Site Not Loading

- [ ] GitHub Pages enabled in Settings
- [ ] Workflow completed successfully in Actions tab
- [ ] Waited 5 minutes for deployment
- [ ] Repository is public
- [ ] Cleared browser cache

### Build Failures

- [ ] Checked Actions tab for error messages
- [ ] Verified `hugo.toml` syntax is valid
- [ ] Verified all front matter is valid YAML
- [ ] Theme submodule initialized
- [ ] No unclosed code blocks in content

### Content Not Showing

- [ ] `draft: false` in front matter
- [ ] Date not in future
- [ ] File in correct directory
- [ ] File extension is `.md`
- [ ] Committed and pushed changes

### Images Not Loading

- [ ] File in `static/images/` directory
- [ ] Path starts with `/images/`
- [ ] Filename matches exactly (case-sensitive)
- [ ] File extension correct
- [ ] Image file committed to repository

### Custom Domain Issues

- [ ] DNS records correct
- [ ] DNS propagated (24-48 hours)
- [ ] `baseURL` matches custom domain
- [ ] CNAME file exists in repository
- [ ] "Enforce HTTPS" enabled after 24 hours

## Launch Announcement

Once everything is working:

- [ ] Share on LinkedIn
- [ ] Share on Twitter/X
- [ ] Add to GitHub profile README
- [ ] Add to resume
- [ ] Tell friends and classmates
- [ ] Submit to relevant directories
- [ ] Add to email signature

## Success Metrics

Track these over time:

- [ ] Number of posts published
- [ ] Number of projects documented
- [ ] Site visitors (if analytics configured)
- [ ] GitHub stars on repository
- [ ] Feedback received
- [ ] Opportunities generated (interviews, connections)

## Resources

- **Hugo Documentation:** [gohugo.io/documentation](https://gohugo.io/documentation/)
- **PaperMod Theme Docs:** [github.com/adityatelange/hugo-PaperMod/wiki](https://github.com/adityatelange/hugo-PaperMod/wiki)
- **GitHub Pages Docs:** [docs.github.com/pages](https://docs.github.com/pages)
- **Markdown Guide:** [markdownguide.org](https://markdownguide.org)
- **DNS Checker:** [whatsmydns.net](https://whatsmydns.net)
- **Meta Tags Checker:** [metatags.io](https://metatags.io)

## Getting Help

If you're stuck:

1. Check the [README.md](README.md) for detailed instructions
2. Review [PROJECT_STRUCTURE.md](PROJECT_STRUCTURE.md) to understand the setup
3. Search [Hugo forums](https://discourse.gohugo.io)
4. Check [GitHub Issues](https://github.com/yourusername/student-branding-starter/issues)
5. Ask in relevant Discord/Slack communities

---

**Congratulations on launching your personal site!** 🎉

Remember: Your site is a living document. Keep updating it with new projects, posts, and learnings. The more you put into it, the more value you'll get out of it.

Good luck with your personal branding journey!
