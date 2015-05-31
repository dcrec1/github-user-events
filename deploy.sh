#!/bin/bash
set -e # exit with nonzero exit code if anything fails
ember build --environment production
cd dist
git init
git config user.name "Travis CI"
git config user.email "deploy@travisci.com"
git add .
git commit -m "Deploy to GitHub Pages"
git push --force --quiet "https://${GH_TOKEN}@github.com/dcrec1/github-user-events.git" master:gh-pages > /dev/null 2>&1
