#!/usr/bin/env bash

currentBranch=`git rev-parse --abbrev-ref HEAD`

# save workspace
git stash save --include-untracked temp-`date +%s`

for i in $(git branch | sed 's/^.//')
do
    git checkout ${i}
    git pull --rebase
done

git checkout ${currentBranch}

# restore workspace
git stash pop --index

