#!/bin/bash
set -e
# Trigger the child workflow using the GitHub API
curl -L \
  -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer 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" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/shrinidhi-demo/Animal/actions/workflows/workflow2.yml/dispatches \
  -d '{"ref":"main"}'