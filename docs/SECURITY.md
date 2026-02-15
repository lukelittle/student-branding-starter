# Security Policy

## Supported Versions

This project is a static site template. Security updates are applied to the latest version.

| Version | Supported          |
| ------- | ------------------ |
| Latest  | :white_check_mark: |
| Older   | :x:                |

## Reporting a Vulnerability

If you discover a security vulnerability in this template, please report it responsibly:

### What to Report

- Security issues in the GitHub Actions workflow
- Vulnerabilities in dependencies (Hugo, theme)
- XSS or injection vulnerabilities in templates
- Exposed secrets or credentials in example code
- Other security concerns

### How to Report

**For serious security issues:**

1. **Do NOT open a public issue**
2. Email: [your-security-email@example.com]
3. Include:
   - Description of the vulnerability
   - Steps to reproduce
   - Potential impact
   - Suggested fix (if you have one)

**For minor security improvements:**

- Open a regular issue or pull request
- Tag with "security" label

### What to Expect

- **Acknowledgment** within 48 hours
- **Assessment** within 1 week
- **Fix** within 2 weeks for critical issues
- **Credit** in release notes (if you want)

## Security Best Practices for Users

### Protecting Your Site

1. **Never commit secrets**
   - API keys
   - Passwords
   - Private tokens
   - Personal information

2. **Use .gitignore**
   - Already configured in this template
   - Don't remove security-related entries

3. **Review before publishing**
   - Check for sensitive data in posts
   - Verify images don't contain private info
   - Review commit history for secrets

4. **Keep dependencies updated**
   ```bash
   # Update Hugo
   brew upgrade hugo  # macOS
   
   # Update theme
   git submodule update --remote themes/PaperMod
   ```

5. **Use HTTPS**
   - Enable "Enforce HTTPS" in GitHub Pages settings
   - Use Cloudflare for additional security

### GitHub Actions Security

This template's workflow:
- Uses official GitHub Actions
- Runs with minimal permissions
- Only deploys from main branch
- Doesn't expose secrets

### Content Security

**Don't publish:**
- Personal addresses or phone numbers
- Financial information
- Private company information
- Credentials or API keys
- Sensitive personal details

**Use placeholders instead:**
- `[your-email@example.com]`
- `[your-phone-number]`
- `[your-address]`

## Known Security Considerations

### Static Site Security

This is a static site (HTML/CSS/JS only):
- ✅ No server-side code to exploit
- ✅ No database to compromise
- ✅ No user authentication to bypass
- ✅ Minimal attack surface

### Third-Party Dependencies

**Hugo:** Keep updated to latest version

**PaperMod Theme:** 
- Maintained by community
- Review theme updates before applying
- Report theme issues to theme repository

**GitHub Actions:**
- Uses official actions from GitHub
- Minimal permissions granted
- Runs in isolated environment

## Security Updates

We monitor:
- Hugo security advisories
- GitHub Actions security updates
- Theme security issues
- Dependency vulnerabilities

Updates are applied promptly and announced in releases.

## Questions?

Security questions? Open an issue or email [your-security-email@example.com].

---

**Remember:** This template is for public personal websites. Don't publish anything you wouldn't want publicly accessible.
