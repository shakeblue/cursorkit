#!/bin/bash
npx eslint --fix "$CURSOR_FILE" 2>/dev/null || true
