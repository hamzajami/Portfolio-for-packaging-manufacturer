#!/usr/bin/env bash
# Usage: bash scripts/create-issues.sh OWNER/REPO
# Requires the GitHub CLI (gh) and `gh auth login`.
set -euo pipefail
REPO="${1:?Usage: create-issues.sh OWNER/REPO}"

make() { gh issue create --repo "$REPO" --title "$1" --label "$2" --body "From docs/ISSUES.md"; }

for l in content enhancement chore; do gh label create "$l" --repo "$REPO" 2>/dev/null || true; done

make "Replace placeholder contact details" content
make "Add real product, press and factory photos" content
make "Add final logo and favicon" content
make "Proofread Urdu translations" content
make "Write real About story" content
make "Send quote form to email or form service" enhancement
make "Add real RTL layout for Urdu" enhancement
make "Add downloadable product catalogue" enhancement
make "Add sitemap, robots.txt and share image" enhancement
make "Add customer logos and testimonials" enhancement
make "Test on small phones and fix overflow" chore
make "Run Lighthouse and fix findings" chore
make "Add GitHub Actions build and typecheck" chore
