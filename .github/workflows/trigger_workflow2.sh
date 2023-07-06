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