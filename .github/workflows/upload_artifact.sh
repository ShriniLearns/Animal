#!/bin/bash

# File path and name
file_path="/Users/shrinidhigcw/IdeaProjects/Animal"
file_name="pom.xml"

# GitHub repository information
repository_owner="shrinidhi-demo"
repository_name="Animal"

# Personal access token (PAT) with repository scope
access_token="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"

# Upload file to GitHub repository using curl
curl -X POST \
  -H "Authorization: token $access_token" \
  -H "Content-Type: application/octet-stream" \
  --data-binary "@$file_path" \
  "https://api.github.com/repos/$repository_owner/$repository_name/com/example/Animal/$file_name"
