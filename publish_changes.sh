#!/bin/env bash

set -eux
git commit -am "Push changes to deploy"
sbcl --load ./site-deploy.lisp
git subtree push --prefix deploy origin gh-pages
git commit -am "New deployment"
git push
