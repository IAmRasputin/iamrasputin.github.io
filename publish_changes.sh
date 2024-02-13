#!/bin/env bash

set -eux
git commit -am "Push changes to deploy"
coleslaw deploy
cp ./favicon.ico deploy/
git subtree push --prefix deploy origin gh-pages
git commit -am "New deployment"
git push
