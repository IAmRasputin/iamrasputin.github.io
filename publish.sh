#!/bin/sh
set -eux

git add deploy/
git commit -m "Deploy site to github"

git subtree push --prefix deploy origin gh-pages

