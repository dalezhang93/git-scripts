#!/usr/bin/env bash

currentBranch=`git rev-parse --abbrev-ref HEAD`

# $1 is the hash of the commit
git push origin $1:${currentBranch}

