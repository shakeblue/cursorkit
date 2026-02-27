#!/bin/bash
ruff check --fix "$CURSOR_FILE" 2>/dev/null || true
