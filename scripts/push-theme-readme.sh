#!/bin/bash
set -x
set -e

git --version
git config --global user.email "konick781@gmail.com"
git config --global user.name "tijko"
git config --global --add safe.directory /github/workspace
git add -a
git commit -m "Update theme readme" || exit 0
git remote add origin https://${PERSONAL_TOKEN}@github.com/${GH_REPO}.git
git push origin master 
