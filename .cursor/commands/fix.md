# /fix - Bug Fix Workflow

Smart debugging and bug fixing workflow.

## Phases

### Phase 1: Error Analysis
1. Parse error message/stack trace
2. Identify error type and location
3. Check for known patterns, recent changes

### Phase 2: Root Cause Investigation
1. Trace execution path to the error
2. Form hypotheses ranked by likelihood
3. Validate — confirm root cause before fixing (NOT symptoms)

### Phase 3: Implement Fix
1. Develop minimal, targeted fix for root cause
2. Consider edge cases
3. Check similar code for same bug

### Phase 4: Verification
1. Verify original error is resolved
2. Add regression test
3. Run full test suite: `pytest -v`

## Output
```markdown
## Bug Fix Complete

### Root Cause
[Explanation]

### Fix
**File**: `path/to/file:42`
Before: [code]
After: [code]

### Regression Test
`path/to/test` - `test_[scenario]`

### Verification
- [x] Error no longer occurs
- [x] Existing tests pass
- [x] Regression test added
```
