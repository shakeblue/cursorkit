# /feature - Feature Development Workflow

End-to-end feature development workflow.

## Phases

### Phase 1: Planning
1. Parse feature request, identify acceptance criteria
2. Explore codebase for related implementations and patterns
3. Create task breakdown ordered by dependencies
4. Estimate complexity (S/M/L)

### Phase 2: Research (if needed)
1. Research best practices for unfamiliar technology
2. Find examples in codebase or documentation
3. Document key decisions

### Phase 3: Implementation
For each task:
1. Identify target files (modify/create)
2. Write failing test first (TDD)
3. Implement the feature code
4. Verify tests pass

### Phase 4: Testing
1. Run full test suite: `pytest -v --cov=src`
2. Verify coverage does not decrease
3. Add edge case tests

### Phase 5: Code Review
- [ ] Code follows project conventions
- [ ] No security vulnerabilities
- [ ] Error handling complete
- [ ] Tests passing

### Phase 6: Completion
1. Stage appropriate files
2. Generate conventional commit message
3. Create PR if requested

## Output
```markdown
## Feature Complete

### Changes
- `path/to/file` - [What was added/modified]

### Tests
- [x] Unit tests passing
- [x] Coverage: XX%

### Ready for Review
```
