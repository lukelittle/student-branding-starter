# Student Personal Branding Starter

A production-ready Hugo website template for students to build their personal brand, showcase projects, and share what they're learning. Deploy to GitHub Pages in minutes.

**Live Demo:** [View Example Site](https://yourusername.github.io)

---

## Table of Contents

- [Why This Matters](#why-this-matters)
- [What You Get](#what-you-get)
- [Quick Start](#quick-start)
- [Detailed Setup Guide](#detailed-setup-guide)
  - [1. Fork This Repository](#1-fork-this-repository)
  - [2. Enable GitHub Pages](#2-enable-github-pages)
  - [3. Customize Your Site](#3-customize-your-site)
  - [4. Local Development](#4-local-development)
- [Writing Content](#writing-content)
  - [Blog Posts](#blog-posts)
  - [Projects](#projects)
  - [Pages](#pages)
- [Custom Domain Setup](#custom-domain-setup)
  - [Using Cloudflare (Recommended)](#using-cloudflare-recommended)
  - [Using Namecheap DNS](#using-namecheap-dns)
  - [Troubleshooting Domains](#troubleshooting-domains)
- [Teaching This to Others](#teaching-this-to-others)
- [Troubleshooting](#troubleshooting)
- [Contributing](#contributing)
- [License](#license)

---

## Why This Matters

### Recruiters Google You

When you apply for internships or jobs, recruiters will search for you online. What they find matters. A personal website shows:

- **You can finish things** - You built and deployed a real site
- **You communicate well** - Writing demonstrates clear thinking
- **You're proactive** - You didn't wait to be told to build a portfolio
- **You have work to show** - Projects and posts are proof of skills

### Showing > Claiming

Anyone can write "Proficient in Python" on a resume. A blog post explaining how you built a Python project is 10x more convincing.

### Writing Compounds

A post you write today can help someone (or a recruiter) find you months or years later. Content compounds value over time through search engines and social sharing.

### Real-World Example

Many professionals run personal sites (like Lucas, who hosts his Hugo site on AWS with CloudFront/S3). But GitHub Pages is simpler and free—perfect for students. You get the same branding benefits:

- Publishing project writeups
- Sharing slides and diagrams
- Documenting event recaps
- Building a living portfolio

Your site becomes proof of your work and thinking.

### SEO Basics (Plain English)

SEO (Search Engine Optimization) means making your site easy for Google to find and understand. When you write clear posts with good titles and descriptions, people searching for those topics can discover your work. This is how you get found by recruiters, peers, and potential collaborators.

---

## What You Get

This template includes:

✅ **Modern Hugo site** with clean design  
✅ **GitHub Actions deployment** - automatic publishing  
✅ **Example content** - 2 full blog posts, 2 projects  
✅ **Multiple pages** - Home, About, Blog, Projects, Now, Contact  
✅ **Mobile responsive** - works on all devices  
✅ **Fast loading** - optimized for performance  
✅ **SEO friendly** - proper meta tags and structure  
✅ **Easy customization** - one config file to personalize  
✅ **Beginner-friendly docs** - you're reading them!

---

## Quick Start

**Total time: 10 minutes**

1. **Fork this repository** (click "Fork" button at top-right)
2. **Enable GitHub Pages** in your fork's Settings
3. **Edit `hugo.toml`** with your information
4. **Push changes** - your site deploys automatically!

Your site will be live at `https://yourusername.github.io/repository-name/`

---

## Detailed Setup Guide

### 1. Fork This Repository

**What is forking?** Forking creates your own copy of this repository that you can modify without affecting the original.

#### Steps:

1. **Click the "Fork" button** at the top-right of this GitHub page
2. **Select your account** as the destination
3. **Optionally rename** the repository:
   - For a personal site: `yourusername.github.io` (recommended)
   - Or keep the default name
4. **Click "Create fork"**
5. **Wait** for GitHub to copy the repository (takes 10-30 seconds)

#### Why Fork Instead of Clone?

- Forking keeps a connection to the original (you can get updates)
- You get your own copy to modify freely
- GitHub Actions workflows work immediately in forks

#### Keeping Your Fork Updated (Optional)

To get updates from the original template:

```bash
# Add the original repo as a remote
git remote add upstream https://github.com/original-author/student-branding-starter.git

# Fetch updates
git fetch upstream

# Merge updates into your main branch
git merge upstream/main
```

---

### 2. Enable GitHub Pages

GitHub Pages is a free hosting service from GitHub. It takes your code and makes it a live website.

#### A) If You're Setting Up the Original Template

1. Go to **Settings** (tab at top of repository)
2. Click **Pages** in the left sidebar
3. Under "Source", select **GitHub Actions**
4. Click **Save**

#### B) After Forking (Most Common)

1. Go to **your fork** on GitHub
2. Click **Settings** tab
3. Click **Pages** in the left sidebar
4. Under "Build and deployment":
   - **Source:** Select "GitHub Actions"
5. **That's it!** The first deployment starts automatically

#### Understanding the Deployment Process

When you push code to your repository:

1. **GitHub Actions triggers** (the workflow in `.github/workflows/deploy.yml`)
2. **Hugo builds your site** (converts your content to HTML)
3. **Artifact is uploaded** (the built site is packaged)
4. **Deploy step runs** (publishes to GitHub Pages)

#### Viewing Deployment Status

1. Go to the **Actions** tab in your repository
2. You'll see workflow runs listed
3. Click on a run to see detailed logs
4. Green checkmark = successful deployment
5. Red X = something failed (check logs for errors)

#### Verifying Your Site is Live

1. Go to **Settings → Pages**
2. You'll see: "Your site is live at https://yourusername.github.io/repo-name/"
3. Click the link to view your site
4. **First deployment takes 2-5 minutes**

#### Common Issues

**"Actions" tab is empty:**
- Make sure you pushed a commit after forking
- Check that GitHub Actions is enabled in Settings → Actions

**Deployment failed:**
- Click on the failed run in Actions tab
- Read the error message
- Common fix: Make sure `hugo.toml` has valid syntax

**404 error when visiting site:**
- Wait 5 minutes (DNS propagation)
- Check that baseURL in `hugo.toml` matches your GitHub Pages URL
- Ensure the repository is public

---

### 3. Customize Your Site

#### Edit `hugo.toml`

This is the main configuration file. Open it and update:

```toml
baseURL = "https://yourusername.github.io/repository-name/"
# Change to YOUR GitHub username and repository name

title = "Your Name - Personal Site"
# Change to your actual name

[params]
  author = "Your Name"
  description = "Student, developer, and lifelong learner."
  # Update with your info
```

#### Update Social Links

Find the `[[params.socialIcons]]` sections and update:

```toml
[[params.socialIcons]]
  name = "github"
  url = "https://github.com/yourusername"  # Your GitHub

[[params.socialIcons]]
  name = "linkedin"
  url = "https://linkedin.com/in/yourprofile"  # Your LinkedIn

[[params.socialIcons]]
  name = "email"
  url = "mailto:your.email@example.com"  # Your email
```

#### Customize Home Page

Edit the `homeInfoParams` section:

```toml
[params.homeInfoParams]
  Title = "Hi, I'm Your Name 👋"
  Content = """
I'm a computer science student passionate about building things.
I write about what I'm learning and share my projects.

**Currently:** Working on web development and exploring cloud technologies.
"""
```

#### Update About Page

Edit `content/about.md` with your background, interests, and goals.

#### Commit and Push

```bash
git add hugo.toml content/about.md
git commit -m "Customize site with my information"
git push
```

**Your site will automatically rebuild and deploy!** Check the Actions tab to watch progress.

---

### 4. Local Development

Running Hugo locally lets you preview changes before publishing.

#### Install Hugo

**macOS:**
```bash
brew install hugo
```

**Windows (using Chocolatey):**
```bash
choco install hugo-extended
```

**Windows (using Scoop):**
```bash
scoop install hugo-extended
```

**Linux (Ubuntu/Debian):**
```bash
sudo apt install hugo
```

**Or download binary:**
Visit [Hugo Releases](https://github.com/gohugoio/hugo/releases) and download for your OS.

#### Verify Installation

```bash
hugo version
```

You should see something like: `hugo v0.128.0+extended`

#### Clone Your Repository

```bash
git clone https://github.com/yourusername/your-repo-name.git
cd your-repo-name
```

#### Initialize Theme Submodule

```bash
git submodule update --init --recursive
```

This downloads the PaperMod theme.

#### Run Local Server

```bash
hugo server -D
```

**What this does:**
- `-D` flag shows draft posts
- Starts a local server at `http://localhost:1313`
- Auto-reloads when you save files

#### Preview Your Site

Open your browser to: `http://localhost:1313`

You'll see your site running locally!

#### Common Errors and Fixes

**Error: "command not found: hugo"**
- Hugo isn't installed or not in your PATH
- Reinstall Hugo and restart your terminal

**Error: "theme not found"**
- Run: `git submodule update --init --recursive`
- This downloads the theme

**Error: "port already in use"**
- Another process is using port 1313
- Use a different port: `hugo server -D -p 1314`

**Site looks broken:**
- Check that `baseURL` in `hugo.toml` is correct
- For local development, you can temporarily set: `baseURL = "/"`

#### Making Changes

1. Edit files in `content/`, `hugo.toml`, or `static/`
2. Save the file
3. Hugo automatically rebuilds
4. Refresh your browser to see changes

#### Building for Production

```bash
hugo --minify
```

This creates the `public/` folder with your built site. (Don't commit this folder—GitHub Actions builds it automatically.)

---

## Writing Content

### Blog Posts

#### Create a New Post

```bash
hugo new posts/my-first-post.md
```

This creates `content/posts/my-first-post.md` with front matter.

#### Front Matter Explained

Front matter is metadata at the top of your post:

```yaml
---
title: "My First Post"           # Post title (shows in browser tab and listings)
date: 2024-03-15                 # Publication date (YYYY-MM-DD format)
draft: false                     # true = hidden, false = published
tags: ["learning", "projects"]   # Categories for organizing posts
summary: "A brief description"   # Shows in post listings and search results
---
```

#### Writing Your Post

After the front matter, write in Markdown:

```markdown
## This is a Heading

This is a paragraph with **bold** and *italic* text.

### Code Example

```python
def hello():
    print("Hello, world!")
```

### Lists

- Item 1
- Item 2
- Item 3

### Links

[Link text](https://example.com)

### Images

![Alt text](/images/my-image.jpg)
```

#### Adding Images to Posts

1. Add image to `static/images/`
2. Reference in your post: `![Description](/images/filename.jpg)`

#### Using Page Bundles (Advanced)

Create a folder for your post with images:

```
content/posts/my-post/
├── index.md
├── image1.jpg
└── image2.jpg
```

Reference images: `![Description](image1.jpg)`

#### Publishing Your Post

1. Set `draft: false` in front matter
2. Commit and push:

```bash
git add content/posts/my-first-post.md
git commit -m "Add my first blog post"
git push
```

3. GitHub Actions deploys automatically!

#### SEO Tips for Posts

- **Use descriptive titles** - "How I Built a Weather App" not "My Project"
- **Write good summaries** - This appears in search results
- **Use relevant tags** - Helps organize and discover content
- **Add alt text to images** - Helps accessibility and SEO
- **Link to related posts** - Keeps readers engaged

#### Example Post Structure

See the included example posts:
- `content/posts/what-makes-strong-technical-post.md`
- `content/posts/how-to-write-about-projects.md`

These demonstrate strong technical writing with:
- Clear problem statements
- Code examples
- Lessons learned
- Actionable takeaways

---

### Projects

#### Add a New Project

```bash
hugo new projects/my-project.md
```

Or create the file manually in `content/projects/`.

#### Project Template

```markdown
---
title: "Project Name"
date: 2024-03-15
draft: false
tags: ["python", "web-dev"]
summary: "One-sentence description of what this project does."
---

## Overview

Brief description of the project.

**Live Demo:** [link]
**GitHub:** [link]

## The Problem

What problem were you solving?

## Tech Stack

- Technology 1
- Technology 2

## Key Features

- Feature 1
- Feature 2

## What I Learned

- Skill 1
- Skill 2

## Challenges

What went wrong and how you fixed it.

## Results

Impact, metrics, or outcomes.

## Future Improvements

What you'd add next.
```

#### Linking to GitHub Repos

Always link to your code:

```markdown
**GitHub:** [github.com/yourusername/project-name](https://github.com/yourusername/project-name)
```

#### Describing Impact

Even small metrics matter:
- "Used daily for 2 months"
- "Shared with 5 classmates"
- "Saved 30 minutes per week"
- "Got 10 GitHub stars"

#### Showing Metrics

Quantify when possible:
- Lines of code
- Performance improvements
- Number of users
- Time saved
- Features implemented

---

### Pages

#### Editing Existing Pages

- **About:** `content/about.md`
- **Now:** `content/now.md`
- **Contact:** `content/contact.md`

Just edit these files and push changes.

#### Creating New Pages

```bash
hugo new my-page.md
```

Add to navigation menu in `hugo.toml`:

```toml
[[menu.main]]
  identifier = "my-page"
  name = "My Page"
  url = "/my-page/"
  weight = 60  # Controls order (lower = earlier)
```

---

## Custom Domain Setup

Want to use your own domain like `yourname.com` instead of `yourusername.github.io`? Here's how.

### Understanding Domain Concepts

**Domain registrar:** Where you buy domains (Namecheap, Google Domains, etc.)

**DNS (Domain Name System):** Translates domain names to IP addresses (like a phone book for the internet)

**Apex domain:** The root domain (`example.com`)

**Subdomain:** A prefix before the domain (`www.example.com`, `blog.example.com`)

**CNAME:** A DNS record that points one domain to another

**A record:** A DNS record that points a domain to an IP address

**SSL/TLS:** Encryption that makes your site use HTTPS (the padlock icon)

**Nameservers:** Servers that control your domain's DNS settings

### Apex vs WWW

You have two options:

1. **Apex domain:** `yourname.com`
2. **WWW subdomain:** `www.yourname.com`
3. **Both:** Redirect one to the other

Most modern sites use the apex domain and redirect www to it.

---

### Using Cloudflare (Recommended)

Cloudflare provides free DNS, SSL, and performance improvements.

#### Step 1: Add Domain to Cloudflare

1. Go to [cloudflare.com](https://cloudflare.com) and create a free account
2. Click **"Add a Site"**
3. Enter your domain: `yourname.com`
4. Select the **Free plan**
5. Click **"Continue"**

#### Step 2: Change Nameservers at Your Registrar

Cloudflare will show you two nameservers like:
```
alice.ns.cloudflare.com
bob.ns.cloudflare.com
```

Now go to your domain registrar (where you bought the domain):

**For Namecheap:**

1. Log in to [namecheap.com](https://namecheap.com)
2. Go to **Domain List**
3. Click **"Manage"** next to your domain
4. Find **"Nameservers"** section
5. Select **"Custom DNS"**
6. Enter the two Cloudflare nameservers
7. Click **"Save"**

**For Google Domains:**

1. Log in to [domains.google.com](https://domains.google.com)
2. Click on your domain
3. Click **"DNS"** in the left sidebar
4. Click **"Custom name servers"**
5. Enter the two Cloudflare nameservers
6. Click **"Save"**

**For other registrars:** Look for "Nameservers" or "DNS Settings" and follow similar steps.

**Wait time:** Nameserver changes take 2-24 hours to propagate (usually 2-4 hours).

#### Step 3: Add DNS Records in Cloudflare

Once nameservers are updated (Cloudflare will email you):

1. Go to Cloudflare dashboard
2. Click on your domain
3. Click **"DNS"** in the left sidebar
4. Click **"Add record"**

**Add A records for apex domain:**

Add FOUR A records (all pointing to your apex domain `@`):

| Type | Name | IPv4 Address      | Proxy Status |
|------|------|-------------------|--------------|
| A    | @    | 185.199.108.153   | DNS only     |
| A    | @    | 185.199.109.153   | DNS only     |
| A    | @    | 185.199.110.153   | DNS only     |
| A    | @    | 185.199.111.153   | DNS only     |

**Add CNAME record for www:**

| Type  | Name | Target                      | Proxy Status |
|-------|------|-----------------------------|--------------|
| CNAME | www  | yourusername.github.io      | DNS only     |

**Important:** Set Proxy Status to "DNS only" (gray cloud, not orange). GitHub Pages doesn't work with Cloudflare proxy enabled.

#### Step 4: Configure GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings → Pages**
3. Under "Custom domain", enter: `yourname.com`
4. Click **"Save"**
5. Wait 1-2 minutes
6. Check the box **"Enforce HTTPS"** (appears after DNS verification)

GitHub will create a `CNAME` file in your repository. Don't delete it!

#### Step 5: Update hugo.toml

Change the baseURL:

```toml
baseURL = "https://yourname.com/"
```

Commit and push:

```bash
git add hugo.toml
git commit -m "Update baseURL for custom domain"
git push
```

#### Step 6: Set Up WWW Redirect (Optional)

To redirect `www.yourname.com` to `yourname.com`:

1. In Cloudflare, go to **Rules → Redirect Rules**
2. Click **"Create rule"**
3. **Rule name:** "Redirect WWW to Apex"
4. **When incoming requests match:**
   - Field: Hostname
   - Operator: equals
   - Value: `www.yourname.com`
5. **Then:**
   - Type: Dynamic
   - Expression: `concat("https://yourname.com", http.request.uri.path)`
   - Status code: 301 (Permanent Redirect)
6. Click **"Deploy"**

#### Step 7: SSL/TLS Settings

1. In Cloudflare, go to **SSL/TLS**
2. Set encryption mode to **"Full (Strict)"** (recommended)
   - This ensures end-to-end encryption
3. GitHub Pages provides SSL automatically

#### Verification

1. Visit `https://yourname.com` - should load your site
2. Visit `https://www.yourname.com` - should redirect to apex (if you set up redirect)
3. Check for HTTPS padlock icon in browser

#### Troubleshooting Cloudflare Setup

**"DNS_PROBE_FINISHED_NXDOMAIN" error:**
- DNS hasn't propagated yet (wait 2-24 hours)
- Check nameservers are correct at registrar
- Use [whatsmydns.net](https://whatsmydns.net) to check propagation

**"Too many redirects" error:**
- Change Cloudflare proxy status to "DNS only" (gray cloud)
- Clear browser cache

**HTTPS not working:**
- Wait 24 hours for GitHub to provision SSL certificate
- Make sure "Enforce HTTPS" is checked in GitHub Pages settings
- Verify DNS records are correct

---

### Using Namecheap DNS Directly

If you don't want to use Cloudflare, you can use your registrar's DNS.

#### Step 1: Add DNS Records at Namecheap

1. Log in to [namecheap.com](https://namecheap.com)
2. Go to **Domain List**
3. Click **"Manage"** next to your domain
4. Go to **"Advanced DNS"** tab
5. Click **"Add New Record"**

**Add A records:**

| Type      | Host | Value           | TTL       |
|-----------|------|-----------------|-----------|
| A Record  | @    | 185.199.108.153 | Automatic |
| A Record  | @    | 185.199.109.153 | Automatic |
| A Record  | @    | 185.199.110.153 | Automatic |
| A Record  | @    | 185.199.111.153 | Automatic |

**Add CNAME record:**

| Type         | Host | Value                   | TTL       |
|--------------|------|-------------------------|-----------|
| CNAME Record | www  | yourusername.github.io  | Automatic |

#### Step 2: Configure GitHub Pages

Same as Cloudflare Step 4 above.

#### Step 3: Update hugo.toml

Same as Cloudflare Step 5 above.

#### Limitations of Registrar DNS

- No automatic WWW redirect (you'd need to set up URL redirect at registrar)
- No free SSL from Cloudflare (GitHub provides SSL, but Cloudflare adds extra features)
- Slower DNS resolution than Cloudflare

#### Setting Up WWW Redirect at Namecheap

1. In Namecheap Advanced DNS
2. Add a **URL Redirect Record**:
   - Type: URL Redirect Record
   - Host: www
   - Value: `https://yourname.com`
   - Redirect Type: Permanent (301)

---

### Troubleshooting Domains

#### Site Shows 404 Error

**Possible causes:**

1. **baseURL is wrong in hugo.toml**
   - Must match your custom domain exactly
   - Include `https://` and trailing `/`
   - Example: `baseURL = "https://yourname.com/"`

2. **CNAME file is missing**
   - GitHub creates this automatically
   - If deleted, re-add custom domain in Settings → Pages

3. **DNS not propagated**
   - Wait 24-48 hours
   - Check with: `dig yourname.com` or [whatsmydns.net](https://whatsmydns.net)

#### Redirect Loop

**Cause:** Cloudflare proxy is enabled (orange cloud)

**Fix:** Set DNS records to "DNS only" (gray cloud)

#### Domain Already Taken Error

**Cause:** Another GitHub Pages site is using this domain

**Fix:** 
- Make sure you own the domain
- Remove it from any other GitHub repositories
- Wait 24 hours and try again

#### HTTPS Not Working

**Possible causes:**

1. **Certificate not provisioned yet**
   - Wait 24 hours after adding custom domain
   - GitHub automatically provisions SSL

2. **"Enforce HTTPS" not enabled**
   - Go to Settings → Pages
   - Check the "Enforce HTTPS" box

3. **DNS records incorrect**
   - Verify A records point to GitHub's IPs
   - Verify CNAME points to yourusername.github.io

#### DNS Propagation Check

Use these tools to check if DNS has propagated:

- [whatsmydns.net](https://whatsmydns.net)
- [dnschecker.org](https://dnschecker.org)

Or use command line:

```bash
# Check A records
dig yourname.com

# Check CNAME records
dig www.yourname.com

# Check from specific DNS server
dig @8.8.8.8 yourname.com
```

#### Still Having Issues?

1. **Clear browser cache** - Old DNS might be cached
2. **Try incognito mode** - Rules out browser cache
3. **Try different browser** - Rules out browser-specific issues
4. **Check GitHub Status** - [githubstatus.com](https://githubstatus.com)
5. **Wait 24 hours** - DNS and SSL take time

---

## Teaching This to Others

Want to run a workshop or help classmates set up their sites? Here's a 30-45 minute lesson plan.

### Workshop Outline

#### Part 1: Why Personal Sites Matter (5 minutes)

- Recruiters google you
- Writing demonstrates thinking
- Portfolio of work
- SEO and discoverability

#### Part 2: Fork and Deploy (10 minutes)

**Live demo:**
1. Fork repository
2. Enable GitHub Pages
3. Show deployment in Actions tab
4. Visit live site

**Students follow along**

#### Part 3: Customize (10 minutes)

**Edit hugo.toml:**
- Change name and title
- Update social links
- Customize home page content

**Commit and push**

**Watch it deploy**

#### Part 4: First Blog Post (15 minutes)

**Create a post:**
```bash
hugo new posts/hello-world.md
```

**Write content:**
- Title and front matter
- Short introduction
- What you're learning
- What you plan to write about

**Publish:**
- Set `draft: false`
- Commit and push

#### Part 5: Next Steps (5 minutes)

**Homework:**
- Write about a project
- Customize About page
- Add profile image
- (Optional) Set up custom domain

### Prompts for First Posts

Help students overcome blank page syndrome:

1. **"What I'm Learning This Semester"**
   - Current courses
   - Technologies exploring
   - Goals for the semester

2. **"My First Programming Project"**
   - What you built
   - What you learned
   - What you'd do differently

3. **"Why I'm Starting This Site"**
   - Career goals
   - What you want to share
   - Who you want to connect with

### Common Student Questions

**"What if I don't have projects to write about?"**
- Start with what you're learning
- Document class projects
- Write tutorials for things you just learned
- Small projects count!

**"What if my writing isn't good?"**
- Writing improves with practice
- Technical clarity > literary style
- Your audience is other students, not English professors
- Start simple and improve over time

**"How often should I post?"**
- Quality > quantity
- Once a month is great for students
- Consistency matters more than frequency
- Write when you have something to share

**"What if no one reads it?"**
- You're writing for yourself first (learning tool)
- You're writing for recruiters (they will read it)
- You're writing for future you (documentation)
- Readers come with time and SEO

---

## Troubleshooting

### Build Failures

**Check the Actions tab for error messages.**

Common issues:

**"Error: Unable to locate config file"**
- `hugo.toml` is missing or misnamed
- Make sure it's in the root directory

**"Error: failed to download modules"**
- Theme submodule not initialized
- Run: `git submodule update --init --recursive`

**"Error: failed to render pages"**
- Syntax error in a content file
- Check front matter formatting (YAML syntax)
- Look for unclosed code blocks

### Local Development Issues

**Hugo command not found:**
```bash
# Reinstall Hugo
brew install hugo  # macOS
```

**Theme not found:**
```bash
# Initialize submodules
git submodule update --init --recursive
```

**Port already in use:**
```bash
# Use different port
hugo server -D -p 1314
```

**Changes not showing:**
- Hard refresh browser (Cmd+Shift+R or Ctrl+Shift+R)
- Check that file is saved
- Look for errors in terminal

### Content Not Showing

**Post not appearing:**
- Check `draft: false` in front matter
- Check date isn't in the future
- Verify file is in `content/posts/` directory

**Page not in menu:**
- Add menu entry in `hugo.toml`
- Check `url` matches file location

**Images not loading:**
- Verify image is in `static/images/`
- Check path starts with `/images/`
- Verify filename matches exactly (case-sensitive)

### Deployment Issues

**Site not updating:**
- Check Actions tab for failed builds
- Verify you pushed to the correct branch (main)
- Clear browser cache

**404 on all pages:**
- Check `baseURL` in `hugo.toml`
- Verify GitHub Pages is enabled
- Check repository is public

**Styles not loading:**
- Check theme submodule is committed
- Verify `.gitmodules` file exists
- Check Actions logs for theme errors

### Getting Help

1. **Check Actions logs** - Most errors show here
2. **Search GitHub Issues** - Someone likely had the same problem
3. **Hugo Documentation** - [gohugo.io/documentation](https://gohugo.io/documentation/)
4. **Hugo Forum** - [discourse.gohugo.io](https://discourse.gohugo.io/)
5. **Open an issue** - On this repository if you think it's a template problem

---

## Contributing

Found a bug? Have a suggestion? Contributions are welcome!

### How to Contribute

1. **Fork this repository**
2. **Create a branch:** `git checkout -b feature/your-feature`
3. **Make your changes**
4. **Test locally:** `hugo server -D`
5. **Commit:** `git commit -m "Add your feature"`
6. **Push:** `git push origin feature/your-feature`
7. **Open a Pull Request**

### What to Contribute

- Bug fixes
- Documentation improvements
- New example content
- Theme enhancements
- Workflow improvements

### Code of Conduct

Be respectful, helpful, and constructive. We're all learning.

---

## License

This template is MIT licensed. You're free to:
- Use it for personal or commercial projects
- Modify it however you want
- Share it with others

See [LICENSE](LICENSE) file for details.

---

## Acknowledgments

- **Hugo** - Static site generator
- **PaperMod** - Hugo theme
- **GitHub Pages** - Free hosting
- **All students** who provided feedback on this template

---

## Questions?

- **Issues:** [Open an issue](https://github.com/yourusername/student-branding-starter/issues)
- **Discussions:** [Start a discussion](https://github.com/yourusername/student-branding-starter/discussions)
- **Email:** your.email@example.com

---

**Ready to build your personal brand? Fork this repository and get started!**

⭐ If this template helped you, consider starring the repository to help others find it.
