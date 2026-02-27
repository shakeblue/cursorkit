# /security-scan - Security Scanning Command

Scan code and dependencies for security vulnerabilities.

## Workflow

### 1. Dependency Scan
```bash
pip-audit
npm audit
```

### 2. Secret Detection
- Scan for API keys, passwords, tokens in code
- Check .env files aren't committed

### 3. Code Review
- Input validation
- SQL injection patterns
- XSS vulnerabilities
- Command injection
- Path traversal

### 4. OWASP Compliance Check
- [ ] A01: Access Control
- [ ] A02: Cryptographic Failures
- [ ] A03: Injection
- [ ] A05: Security Misconfiguration
- [ ] A07: Authentication Failures

## Output
```markdown
## Security Scan Report

### Findings
| Severity | Count |
|----------|-------|
| Critical | X |
| High | X |
| Medium | X |

### Details
#### VULN-001: [Title]
**Severity**: Critical
**File**: `path:line`
**Remediation**: [Fix]
```
