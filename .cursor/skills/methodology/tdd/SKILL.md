---
name: test-driven-development
description: "Strict TDD workflow with red-green-refactor cycle"
metadata:
  category: methodology
---

# Test-Driven Development

## Core Rule
**NO PRODUCTION CODE WITHOUT A FAILING TEST FIRST**

## Red-Green-Refactor Cycle
1. **RED**: Write a failing test for the next behavior
2. **GREEN**: Write the minimum code to make the test pass
3. **REFACTOR**: Clean up while keeping tests green

## Rules
- One behavior per test with clear naming
- Delete any production code written before its test
- Real code over mocks when possible
- If you wrote code, you must have a test that fails without it

## Test Naming
- Python: `test_[function]_[scenario]_[expected]`
- TypeScript: `it('should [behavior] when [condition]')`

## Verification
Before claiming tests pass:
1. Run the test command
2. Read the complete output
3. Verify output matches claim
4. Only then make the claim
