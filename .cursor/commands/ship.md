# /ship - Ship Code Command

Commit + review + test + PR automation.

## Workflow

### 1. Pre-Ship Checks
```bash
git status
git diff --staged
```
- No secrets, no debug statements, no commented-out code

### 2. Code Review (unless quick mode)
- Self-review for quality and security
- Fix critical issues before proceeding

### 3. Run Tests
```bash
pytest -v
```
- All tests passing, coverage not decreased

### 4. Create Commit
- Stage changes (exclude temp/debug files)
- Conventional commit format: `type(scope): subject`

### 5. Push and Create PR
```bash
git push -u origin [branch]
gh pr create --title "type(scope): desc" --body "..."
```

## Quick Mode
Skip detailed review, auto-generate commit message.
