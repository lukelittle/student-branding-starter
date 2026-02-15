# Instructor Guide

This guide is for educators, bootcamp instructors, and workshop leaders who want to teach students how to build personal branding websites.

## Overview

This template enables students to:
- Build a professional personal website in 10 minutes
- Learn static site generation with Hugo
- Practice technical writing
- Create a portfolio for job applications
- Deploy automatically with GitHub Actions

## Why Teach This?

### Career Skills

Students learn:
- **Git and GitHub** - Forking, committing, pushing
- **Markdown** - Technical writing format
- **Static site generators** - Modern web development
- **CI/CD** - Automated deployment
- **DNS** - Domain configuration (optional)
- **Technical writing** - Communication skills

### Immediate Value

- Students have a live site by end of class
- Portfolio piece for resumes
- Platform for documenting projects
- Practice writing about technical work

### Low Barrier to Entry

- No coding required to get started
- Free hosting (GitHub Pages)
- No server management
- Works on any platform

## Course Integration Ideas

### 1. Standalone Workshop (1-2 hours)

**Learning Objectives:**
- Understand importance of personal branding
- Deploy a live website
- Write first technical blog post
- Configure custom domain (optional)

**Outline:**
- 15 min: Why personal sites matter
- 20 min: Fork and deploy
- 30 min: Customize and write first post
- 20 min: Custom domain setup (optional)
- 15 min: Next steps and Q&A

### 2. Semester-Long Assignment

**Week 1:** Set up site
**Week 4:** Write about first project
**Week 8:** Add 3 more posts
**Week 12:** Custom domain and polish
**Final:** Present portfolio site

**Grading Criteria:**
- Site is live and functional (20%)
- 5+ quality blog posts (40%)
- 3+ project writeups (30%)
- Professional presentation (10%)

### 3. Capstone Project Component

Students document their capstone project:
- Weekly progress posts
- Technical decision explanations
- Challenges and solutions
- Final project showcase

### 4. Technical Writing Course

Use as platform for:
- Writing practice
- Peer review
- Audience awareness
- Technical communication

## Lesson Plan: 90-Minute Workshop

### Pre-Class Preparation (Students)

Send students this checklist 1 week before:
- [ ] Create GitHub account
- [ ] Install Git (optional, for local development)
- [ ] Think about 3 projects to write about

### Part 1: Introduction (15 minutes)

**Topics:**
- Why recruiters google you
- Power of showing vs. telling
- How writing demonstrates thinking
- Real examples of student sites

**Activity:**
- Show 2-3 example student sites
- Discuss what makes them effective

**Key Message:**
"Your site doesn't need to be perfect. It needs to exist and show your work."

### Part 2: Fork and Deploy (20 minutes)

**Live Demo (10 min):**
1. Navigate to template repository
2. Click Fork button
3. Rename to username.github.io
4. Go to Settings → Pages
5. Enable GitHub Actions
6. Show Actions tab
7. Visit live site

**Students Follow Along (10 min):**
- Instructor circulates to help
- TAs assist with issues
- Everyone should have live site

**Common Issues:**
- Repository not public
- GitHub Actions not enabled
- Waiting for deployment

### Part 3: Customize (20 minutes)

**Live Demo (5 min):**
1. Edit hugo.toml in browser
2. Update name, title, social links
3. Commit changes
4. Show Actions tab rebuilding

**Students Customize (15 min):**
- Update hugo.toml
- Edit about.md
- Commit changes
- Verify deployment

**Checkpoint:**
Everyone should have personalized site live.

### Part 4: First Blog Post (25 minutes)

**Teach (5 min):**
- What makes a good technical post
- Problem → Attempt → Solution → Lessons
- Show example post structure

**Write (15 min):**
Students write about:
- A recent project (even small)
- Something they learned this semester
- Why they're starting this site

**Minimum requirements:**
- 200+ words
- At least one code example or screenshot
- Clear problem and solution

**Publish (5 min):**
- Set draft: false
- Commit and push
- Verify post appears

### Part 5: Next Steps (10 minutes)

**Homework:**
- Write 2 more posts this month
- Add 1 project writeup
- Share site on LinkedIn

**Optional Challenges:**
- Set up custom domain
- Customize theme
- Add analytics
- Create resume page

**Resources:**
- Link to full README
- Office hours for help
- Class Discord/Slack channel

## Teaching Tips

### Set Expectations

**Do emphasize:**
- Progress over perfection
- Small projects are valid
- Writing improves with practice
- Consistency matters more than frequency

**Don't emphasize:**
- Comparing to others
- Complex technical topics
- Perfect grammar
- Frequent posting

### Handle Common Concerns

**"I don't have anything to write about"**
→ "Write about what you're learning right now. Document a class project. Explain something you just figured out."

**"My projects are too simple"**
→ "Show the example posts. Even a to-do list app teaches valuable skills when you explain your process."

**"I'm not a good writer"**
→ "Technical writing is about clarity, not literary style. You're writing for other students, not English professors."

**"What if no one reads it?"**
→ "You're writing for three audiences: yourself (learning), recruiters (job search), and future students (helping others)."

### Encourage Peer Review

**Activity:**
- Pair students up
- Exchange site URLs
- Give feedback on:
  - Clarity of writing
  - Completeness of project descriptions
  - One thing done well
  - One suggestion for improvement

### Showcase Student Work

**End of semester:**
- Students present their sites (2 min each)
- Vote on best post, best project writeup
- Share top sites with department
- Feature on course website

## Assessment Rubrics

### Basic Site Setup (Pass/Fail)

- [ ] Site is live and accessible
- [ ] Custom configuration (not default template)
- [ ] About page completed
- [ ] At least one piece of original content

### Blog Post Quality (10 points)

- **Structure (3 pts):** Clear problem, solution, lessons
- **Clarity (3 pts):** Easy to understand, well-organized
- **Technical depth (2 pts):** Shows understanding of topic
- **Completeness (2 pts):** Sufficient detail and examples

### Project Writeup Quality (10 points)

- **Overview (2 pts):** Clear description and links
- **Problem statement (2 pts):** Explains motivation
- **Technical details (2 pts):** Tech stack and implementation
- **Learnings (2 pts):** What was learned
- **Results (2 pts):** Impact and outcomes

### Overall Portfolio (20 points)

- **Content quantity (5 pts):** 5+ posts, 3+ projects
- **Content quality (5 pts):** Well-written and informative
- **Presentation (5 pts):** Professional appearance
- **Consistency (5 pts):** Regular updates throughout semester

## Troubleshooting Student Issues

### "My site won't deploy"

**Check:**
1. Repository is public
2. GitHub Actions enabled in Settings
3. Workflow file exists (.github/workflows/deploy.yml)
4. No syntax errors in hugo.toml
5. Theme submodule initialized

**Solution:**
- Check Actions tab for error messages
- Re-fork if necessary
- Verify baseURL is correct

### "My changes aren't showing"

**Check:**
1. Changes committed and pushed
2. Workflow completed (green checkmark)
3. Browser cache cleared
4. Correct URL being visited

**Solution:**
- Wait 2-3 minutes for deployment
- Hard refresh browser (Cmd+Shift+R)
- Check Actions tab for build status

### "Images won't load"

**Check:**
1. Image in static/images/ directory
2. Path starts with /images/
3. Filename matches exactly (case-sensitive)
4. Image file committed to repository

**Solution:**
- Show correct path format
- Verify file location
- Check commit history

### "I can't run Hugo locally"

**Check:**
1. Hugo installed: `hugo version`
2. In correct directory
3. Theme submodule initialized
4. No syntax errors in config

**Solution:**
- Reinstall Hugo
- Run: `git submodule update --init --recursive`
- Check error messages

## Extension Activities

### Advanced Students

**Challenges:**
1. Add custom CSS styling
2. Create custom Hugo shortcodes
3. Add search functionality
4. Implement dark mode toggle
5. Add analytics (Google Analytics, Plausible)
6. Create custom 404 page
7. Add comments (Disqus, utterances)

### Group Projects

**Collaborative site:**
- Team blog about group project
- Multiple authors
- Shared repository
- Coordinated posting schedule

### Cross-Course Integration

**With other courses:**
- **Data Science:** Write about analysis projects
- **Web Development:** Document web apps
- **Algorithms:** Explain algorithm implementations
- **Capstone:** Document entire project journey

## Resources for Instructors

### Example Syllabi

**Week-by-week breakdown:**
- Week 1: Setup and first post
- Week 2: Project writeup
- Week 3: Technical tutorial
- Week 4: Peer review
- Week 5: Custom domain (optional)

### Grading Templates

**Spreadsheet columns:**
- Student name
- Site URL
- Posts count
- Projects count
- Quality score
- Timeliness
- Final grade

### Student Handouts

**One-page quick reference:**
- Fork repository URL
- Key commands
- Common issues
- Help resources

## Success Metrics

### Student Outcomes

Track:
- % of students with live sites
- Average posts per student
- Average projects per student
- Student satisfaction scores
- Sites still active after 6 months

### Learning Outcomes

Assess:
- Technical writing improvement
- Git/GitHub proficiency
- Understanding of deployment
- Professional presentation skills

### Career Impact

Monitor:
- Students who add site to resume
- Internship/job offers mentioning site
- Recruiter feedback
- Student testimonials

## Getting Help

### For Instructors

- **Template issues:** Open issue on GitHub
- **Teaching questions:** Email [instructor-support@example.com]
- **Feature requests:** Submit pull request
- **Community:** Join instructor Discord

### For Students

- **Technical issues:** README.md troubleshooting section
- **Writing help:** Example posts in template
- **Deployment issues:** DEPLOYMENT_CHECKLIST.md
- **General questions:** Office hours, class forum

## Customization for Your Course

### Adapt the Template

**For your institution:**
- Fork and customize for your school
- Add school-specific examples
- Include course-specific requirements
- Brand with school colors/logo

**For your course:**
- Add required sections
- Specify post topics
- Set minimum requirements
- Create custom rubrics

### Create Course-Specific Content

**Add to template:**
- Course-specific example posts
- Relevant project examples
- Institution-specific resources
- Course learning objectives

## Feedback and Improvement

### Collect Student Feedback

**Mid-semester:**
- What's working well?
- What's confusing?
- What help do you need?
- What features would help?

**End of semester:**
- Overall satisfaction
- Time spent on site
- Value for career
- Suggestions for improvement

### Iterate on Teaching

**Improve each semester:**
- Update examples
- Clarify confusing sections
- Add new resources
- Incorporate student suggestions

## Conclusion

This template provides a complete, production-ready platform for teaching students about personal branding, technical writing, and modern web deployment.

**Key Benefits:**
- ✅ Students have live site in first class
- ✅ Minimal technical barriers
- ✅ Real career value
- ✅ Teaches multiple skills
- ✅ Free and open source

**Your Role:**
- Guide students through setup
- Encourage regular writing
- Provide feedback on content
- Celebrate student work

**Student Outcomes:**
- Professional portfolio site
- Technical writing practice
- Deployment experience
- Career advantage

Good luck teaching! Your students will thank you for giving them this valuable skill.

---

**Questions?** Open an issue or email [instructor-support@example.com]

**Share your experience:** We'd love to hear how you used this in your course!
