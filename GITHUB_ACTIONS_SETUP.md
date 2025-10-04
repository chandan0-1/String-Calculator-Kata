# GitHub Actions Setup Guide

## Quick Setup

1. **Push your code to GitHub**:
   ```bash
   git add .
   git commit -m "Add GitHub Actions CI/CD"
   git push origin main
   ```

2. **GitHub Actions will automatically run** on every push and pull request

## Available Workflows

### 1. Full CI/CD with Codecov (`ruby.yml`) - Updated to v4
- Runs tests on every push/PR
- Uploads coverage to Codecov
- Shows coverage badges in README

**Setup Codecov (optional)**:
1. Go to [codecov.io](https://codecov.io)
2. Sign in with GitHub
3. Add your repository
4. Copy the token and add it as a GitHub secret named `CODECOV_TOKEN`

### 2. Simple CI/CD (`ruby-simple.yml`) - Updated to v4
- Runs tests on every push/PR
- Uploads coverage reports as artifacts
- No external service required

### 3. Enhanced CI/CD (`ruby-updated.yml`) - Recommended
- Runs tests on every push/PR
- Uploads coverage reports as artifacts
- Comments coverage percentage on PRs
- No external service required

## What Happens Automatically

✅ **On every push to main/master**:
- Tests run automatically
- Coverage report generated
- Status badge updates

✅ **On every pull request**:
- Tests run automatically
- Coverage report generated
- PR status shows test results

## Local Development

```bash
# Run tests locally
./test.sh

# Or directly
bundle exec rspec

# View coverage
open coverage/index.html
```

## Status Badges

The README includes badges that show:
- ✅ Test status (passing/failing)
- 📊 Coverage percentage
- 🔄 Last run time

## Troubleshooting

**If GitHub Actions fails**:
1. Check the Actions tab in your GitHub repository
2. Look at the logs for specific error messages
3. Ensure your Gemfile.lock is committed
4. Verify Ruby version compatibility

**If badges don't show**:
1. Wait a few minutes after pushing
2. Check that the workflow file is in `.github/workflows/`
3. Ensure the repository name in badges matches your actual repo name
