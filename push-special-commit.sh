#!/usr/bin/env bash

currentBranch=`git rev-parse --abbrev-ref HEAD`

# $0 is the hash of the commit
git push origin $0:${currentBranch}

