# /review - Code Review Command

Comprehensive code review with security, performance, and quality focus.

## Scope Options
- File path: Review specific file(s)
- `staged`: Review staged changes (`git diff --staged`)
- `pr`: Review branch diff (`git diff main...HEAD`)

## Review Phases

### 1. Code Quality
- Correctness, edge cases, null handling
- Naming, readability, consistency
- Function length, complexity

### 2. Security
- Input validation, injection prevention
- Auth checks, secrets detection
- No eval(), no hardcoded credentials

### 3. Performance
- N+1 queries, missing indexes
- Algorithmic complexity
- Proper async/await

### 4. Maintainability
- SOLID principles, DRY
- Test coverage
- Documentation

## Output
```markdown
## Code Review: [Target]
**Verdict**: [Approve / Request Changes]

### Critical Issues (Must Fix)
### Recommendations (Should Fix)
### Suggestions (Nice to Have)
### What's Good
### Summary
```
