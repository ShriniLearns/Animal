#!/bin/bash

# Trigger the child workflow using the GitHub API
curl -L \
  -X POST \
  -H "Accept: application/vnd.github.v3+json" \
  -H "Authorization: Bearer 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" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/shrinidhi-demo/Animal/actions/workflows/workflow2.yml/dispatches \
  -d '{"ref":"main"}'
