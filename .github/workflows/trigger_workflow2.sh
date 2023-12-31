#!/bin/bash

# Assign the value of the environment variable 'Demo1' to 'GITHUB_TOKEN'
#GITHUB_TOKEN="$Demo1"
#
## Trigger the child workflow using the GitHub API
#curl -L \
#  -X POST \
#  -H "Accept: application/vnd.github+json" \
#  -H "Authorization: Bearer $GITHUB_TOKEN" \
#  -H "X-GitHub-Api-Version: 2022-11-28" \
#  https://api.github.com/repos/shrinidhi-demo/Animal/actions/workflows/workflow2.yml/dispatches \
#  -d '{"ref":"main"}'

  curl -L \
  -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer ${{secrets.ADMIN_TOKEN}}" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  "https://api.github.com/repos/shrinidhi-demo/Animal/actions/workflows/workflow2.yml/dispatches" \
  -d '{"ref":"main"}'