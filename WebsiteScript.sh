#!/bin/bash

repo_url="https://github.com/iam-shahidshaikh/WebsiteScript.git"
target="/home/ubuntu/deployment"
branch="main"
build="/home/ubuntu/build"

echo "updating code from the repo..."
rm -rf "$target"  # Delete old deployment folder if it exists
git clone -b "$branch" "$repo_url" "$target"
cd "$target" || exit
git pull origin "$branch"

echo "building the project..."
cd "$build" || exit

echo "deploying the project..."

echo "Deployment complete!"
