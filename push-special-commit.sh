#!/usr/bin/env bash

currentBranch=`git rev-parse --abbrev-ref HEAD`

# check current branch is not head
if test ${currentBranch} = 'HEAD'; then
    exit
fi

# $1 is the hash of the commit
git push origin $1:${currentBranch}

