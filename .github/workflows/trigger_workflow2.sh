#!/bin/bash

# GitHub repository details
GITHUB_REPO_OWNER="shrinidhi-demo"
GITHUB_REPO_NAME="Animal"
GITHUB_API_TOKEN="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"

# Workflow details
CHILD_WORKFLOW_NAME="workflow2.yml"

# Get the latest commit SHA on the main branch
LATEST_COMMIT_SHA=$(git rev-parse --verify HEAD)

# Trigger the child workflow using the GitHub API
curl -X POST \
  -H "Authorization: token ${GITHUB_API_TOKEN}" \
  -H "Accept: application/vnd.github.v3+json" \
  "https://api.github.com/repos/${GITHUB_REPO_OWNER}/${GITHUB_REPO_NAME}/actions/workflows/${CHILD_WORKFLOW_NAME}/dispatches" \
  -d "{\"ref\":\"main\",\"inputs\":{ \"commit_sha\": \"${LATEST_COMMIT_SHA}\" }}"

echo "Child workflow triggered successfully."
