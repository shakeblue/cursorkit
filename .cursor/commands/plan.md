# /plan - Task Planning Command

Create structured implementation plans with task breakdown.

## Workflow

### 1. Understanding
- Parse requirements, identify core vs. nice-to-have
- Clarify ambiguities, list assumptions
- Define acceptance criteria

### 2. Research
- Explore codebase for related code and patterns
- Research unfamiliar technologies if needed

### 3. Task Breakdown
- Decompose into atomic tasks (15-60 min each)
- Order by dependencies
- Include testing tasks
- Estimate: S (<30min), M (30-60min), L (1-2h)

### 4. Documentation
```markdown
## Plan: [Name]

### Summary
[2-3 sentences]

### Tasks
| # | Task | Size | Depends On |
|---|------|------|------------|

### Files to Create/Modify
### Risks
### Success Criteria
```

## Detailed Mode
For 2-5 minute micro-tasks with exact code samples and TDD steps:
- Exact file paths
- Complete code samples
- TDD: write test → verify fail → implement → verify pass → commit
