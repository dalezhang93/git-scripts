#!/usr/bin/env bash

currentBranch=`git rev-parse --abbrev-ref HEAD`

for i in $(git branch | sed 's/^.//')
do
    git checkout ${i}
    git pull --rebase
done

git checkout ${currentBranch}

