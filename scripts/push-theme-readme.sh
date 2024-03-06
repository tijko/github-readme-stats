#!/bin/bash
set -x
set -e

git --version
git config --global user.email "konick781@gmail.com"
git config --global user.name "tijko"
git config --global --add safe.directory /github/workspace
git add -A
git commit -m "Run README-Github-Theme creation scripts" || exit 0
git remote add origin https://${PERSONAL_TOKEN}@github.com/${GH_REPO}.git
git push origin master 
