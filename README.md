# CursorKit

A comprehensive AI-powered development toolkit for [Cursor IDE](https://cursor.com). CursorKit supercharges your development workflow with 20 specialized agents, 20 slash commands, 12 contextual rules, 20 technical skills, MCP server integrations, and automatic code formatting hooks — all preconfigured and ready to use.

## Quick Start

### 1. Clone into your project

```bash
git clone https://github.com/your-org/cursorkit.git
```

### 2. Copy the `.cursor` folder into your project root

```bash
cp -r cursorkit/.cursor /path/to/your-project/
```

### 3. Open your project in Cursor IDE

Cursor will automatically detect the `.cursor` directory and load all agents, commands, rules, and skills.

### 4. Install MCP dependencies (optional)

CursorKit includes pre-configured MCP servers. Ensure you have `npx` available:

```bash
npm install -g npx
```

The MCP servers will be started automatically by Cursor when needed.

## What's Included

### Agents (20)

Specialized AI agents you can invoke for different development roles.

| Agent | Description |
|-------|-------------|
| `code-reviewer` | Comprehensive code reviews focused on quality, security, and performance |
| `debugger` | Analyzes errors, traces root causes, and provides targeted fixes |
| `tester` | Generates comprehensive test suites (unit, integration, E2E) |
| `planner` | Creates detailed implementation plans with structured task breakdown |
| `researcher` | Technology research with comprehensive analysis of tools and libraries |
| `scout` | Rapidly explores and maps codebases to find files, patterns, and dependencies |
| `scout-external` | Explores external resources, documentation, APIs, and open-source projects |
| `security-auditor` | Performs security audits and ensures OWASP compliance |
| `vulnerability-scanner` | Scans code and dependencies for security vulnerabilities |
| `git-manager` | Handles Git operations including commits, branches, and pull requests |
| `database-admin` | Database schema design, migrations, and query optimization |
| `api-designer` | Designs RESTful/GraphQL APIs and creates OpenAPI specifications |
| `brainstormer` | Generates creative solutions and explores technical alternatives |
| `cicd-manager` | Manages CI/CD pipelines, deployments, and release automation |
| `pipeline-architect` | Designs CI/CD pipeline architectures and optimizes build processes |
| `docs-manager` | Generates and maintains all forms of documentation |
| `copywriter` | Creates release notes, changelogs, and user-facing content |
| `journal-writer` | Maintains development journals and decision logs |
| `project-manager` | Tracks project progress, manages roadmaps, and provides status reports |
| `ui-ux-designer` | Converts designs to production code with Tailwind/shadcn |

### Commands (20)

Slash commands for common development workflows. Type these directly in Cursor's chat.

#### Development Workflow

| Command | Description |
|---------|-------------|
| `/feature` | End-to-end feature development workflow (planning through completion) |
| `/fix` | Smart debugging and bug fixing workflow |
| `/review` | Comprehensive code review with security and performance focus |
| `/test` | Generate comprehensive tests for specified code |
| `/tdd` | Test-driven development workflow (write failing tests first) |
| `/refactor` | Improve code structure without changing behavior |
| `/debug` | Analyze and debug errors, exceptions, or unexpected behavior |
| `/optimize` | Analyze and optimize code performance |

#### Planning & Research

| Command | Description |
|---------|-------------|
| `/plan` | Create structured implementation plans with task breakdown |
| `/execute-plan` | Execute plans with mandatory code review gates between tasks |
| `/research` | Technology research with analysis from multiple sources |
| `/brainstorm` | Explore design ideas and architectural decisions |

#### Git & Deployment

| Command | Description |
|---------|-------------|
| `/ship` | Commit + PR workflow |
| `/pr` | Create a well-documented pull request |
| `/deploy` | Deploy to specified environment with proper checks |
| `/checkpoint` | Create a save point for current progress |

#### Documentation & Utilities

| Command | Description |
|---------|-------------|
| `/doc` | Generate or update documentation (API, README, changelogs) |
| `/index` | Generate a comprehensive project structure index |
| `/load` | Load specific project components into context |
| `/spawn` | Launch background tasks for parallel execution |
| `/help` | Display available commands and their usage |

### Rules (12)

Contextual rules that automatically guide AI behavior. These are loaded based on context.

#### Project Rules
| Rule | Description |
|------|-------------|
| `project-context` | Core project conventions, architecture, and development workflow |
| `python-conventions` | Python coding standards (PEP 8, type hints, docstrings) |
| `git-conventions` | Git workflow and commit message standards (conventional commits) |
| `security` | Security standards and OWASP compliance requirements |
| `testing` | Testing standards including pytest patterns and coverage goals |
| `crawler-patterns` | Crawler development patterns for Korean live commerce platforms |

#### Modes
Modes change how the AI behaves and responds. Use `/mode` to switch between them.

| Mode | Description |
|------|-------------|
| `mode-brainstorm` | Exploring design ideas and architectural decisions |
| `mode-deep-research` | Thorough technology evaluation and investigation |
| `mode-implementation` | Executing approved plans with action-oriented output |
| `mode-review` | Code reviews, security audits, and quality assessments |
| `mode-orchestration` | Multi-agent coordination for complex parallel tasks |
| `mode-token-efficient` | Concise output optimized for cost savings |

### Skills (20)

Technical knowledge bases organized by category. Skills provide deep domain expertise.

#### Languages
| Skill | Description |
|-------|-------------|
| `python` | Type hints, async patterns, and Pythonic idioms |
| `typescript` | Type system and modern TypeScript patterns |
| `javascript` | ES6+ features and best practices |

#### Frameworks
| Skill | Description |
|-------|-------------|
| `react` | Component patterns, hooks, and state management |
| `nextjs` | Next.js SSR/SSG patterns and best practices |
| `django` | Django ORM, views, and REST framework |
| `fastapi` | Async patterns and automatic documentation |

#### Frontend
| Skill | Description |
|-------|-------------|
| `shadcn-ui` | shadcn/ui component library patterns |
| `tailwind` | Tailwind CSS utility-first styling |

#### Databases
| Skill | Description |
|-------|-------------|
| `postgresql` | Schemas, queries, and advanced PostgreSQL features |
| `mongodb` | Document design and aggregation pipelines |

#### DevOps
| Skill | Description |
|-------|-------------|
| `docker` | Containerization, multi-stage builds, and compose |
| `github-actions` | GitHub Actions workflows and CI/CD automation |

#### Security & Testing
| Skill | Description |
|-------|-------------|
| `owasp` | OWASP Top 10 security practices |
| `pytest` | pytest patterns and fixtures |
| `vitest` | Vitest testing for JavaScript/TypeScript |

#### Methodology
| Skill | Description |
|-------|-------------|
| `test-driven-development` | Strict TDD with red-green-refactor cycle |
| `systematic-debugging` | Structured debugging and root cause analysis |
| `sequential-thinking` | Step-by-step problem-solving methodology |
| `token-efficient` | Cost and token optimization techniques |

### MCP Servers

Pre-configured [Model Context Protocol](https://modelcontextprotocol.io/) servers for enhanced capabilities.

| Server | Purpose |
|--------|---------|
| **Context7** | Up-to-date library documentation and context |
| **Sequential Thinking** | Structured step-by-step reasoning |
| **Playwright** | Browser automation and E2E testing |
| **Memory** | Persistent knowledge graph across sessions |

### Hooks

Automatic code formatting that runs after every file edit.

| Hook | Trigger | Action |
|------|---------|--------|
| `format-python.sh` | `*.py` files edited | Auto-formats with [ruff](https://github.com/astral-sh/ruff) |
| `format-ts.sh` | `*.ts`, `*.tsx` files edited | Auto-formats with [ESLint](https://eslint.org/) |

## Project Structure

```
.cursor/
├── agents/              # 20 specialized AI agents
│   ├── code-reviewer.md
│   ├── debugger.md
│   ├── tester.md
│   └── ...
├── commands/            # 20 slash commands
│   ├── feature.md
│   ├── fix.md
│   ├── review.md
│   └── ...
├── rules/               # 12 contextual rules & modes
│   ├── project-context.mdc
│   ├── mode-brainstorm.mdc
│   └── ...
├── skills/              # 20 technical skill references
│   ├── languages/
│   ├── frameworks/
│   ├── databases/
│   ├── devops/
│   ├── methodology/
│   └── ...
├── hooks/               # Auto-formatting scripts
│   ├── format-python.sh
│   └── format-ts.sh
├── hooks.json           # Hook configuration
└── mcp.json             # MCP server configuration
```

## Customization

### Adding a New Agent

Create a new `.md` file in `.cursor/agents/`:

```markdown
# Agent Name

## Role
Describe the agent's specialized role.

## Capabilities
- What this agent can do
- Its area of expertise

## Instructions
Step-by-step instructions for the agent's behavior.
```

### Adding a New Command

Create a new `.md` file in `.cursor/commands/`:

```markdown
# /command-name - Description

## Purpose
What this command does.

## Usage
/command-name [arguments]

## Steps
1. Step one
2. Step two
```

### Adding a New Rule

Create a new `.mdc` file in `.cursor/rules/`:

```markdown
---
description: "When this rule should apply"
alwaysApply: false
---

# Rule Name

## Guidelines
- Rule details here
```

### Adding a New Skill

Create a `SKILL.md` file in `.cursor/skills/<category>/<skill-name>/`:

```markdown
# Skill Name

## Overview
What this skill covers.

## Patterns
- Key patterns and best practices
```

## Requirements

- [Cursor IDE](https://cursor.com) (latest version recommended)
- [Node.js](https://nodejs.org/) 18+ (for MCP servers)
- [ruff](https://github.com/astral-sh/ruff) (for Python formatting hook)
- [ESLint](https://eslint.org/) (for TypeScript formatting hook)

## License

MIT
