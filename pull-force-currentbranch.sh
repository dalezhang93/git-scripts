#!/usr/bin/env bash

# clean workspace
git checkout . && git clean -df

# get current branch
currentBranch=`git rev-parse --abbrev-ref HEAD`

git fetch
git reset --hard origin/${currentBranch}

