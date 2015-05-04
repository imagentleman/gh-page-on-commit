#!/bin/bash
REMOTE_URL=$(git config remote.origin.url)
HTTPS_PROTOCOL="https://"
GIT_PROTOCOL="git://"
REPO_URL=${REMOTE_URL/$HTTPS_PROTOCOL}
REPO_URL=${REPO_URL/$GIT_PROTOCOL}

gulp

cd dist

git init

git config user.name "imagentleman's Travis CI"
git config user.email "imagentleman@gmail.com"

git add -A .
git commit -m "Auto-updated GitHub Pages"

git push --force "https://${TOKEN}@${REPO_URL}" master:gh-pages >/dev/null 2>&1
