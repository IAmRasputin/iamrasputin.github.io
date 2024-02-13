#!/bin/env bash

set -eux
git commit -am "Push changes to deploy"
coleslaw deploy
git subtree push --prefix deploy origin gh-pages

