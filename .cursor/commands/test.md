# /test - Test Generation Command

Generate comprehensive tests for specified code.

## Workflow

### 1. Analyze Target Code
- Read code to understand functionality
- Identify inputs, outputs, side effects
- Find existing test patterns

### 2. Design Test Cases
- **Happy Path**: Valid inputs, expected output
- **Edge Cases**: Boundary values, empty inputs
- **Error Cases**: Invalid inputs, exceptions
- **Integration**: External dependency interactions

### 3. Generate Tests (pytest)
```python
import pytest
from unittest.mock import Mock, patch

class TestTargetFunction:
    def test_with_valid_input_returns_expected(self):
        ...

    def test_with_invalid_input_raises_error(self):
        ...

    @pytest.mark.parametrize("input,expected", [...])
    def test_parametrized(self, input, expected):
        ...
```

### 4. Run and Verify
```bash
pytest [test_file] -v
pytest --cov=src --cov-report=term-missing
```

## Coverage Goals
- Overall: 80%+
- Critical paths: 95%+
- New code: 90%+
