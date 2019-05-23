#!/usr/bin/env bash

currentBranch=`git rev-parse --abbrev-ref HEAD`

# save workspace tree
worktreeIsClean=true
if [[ `git diff HEAD --quiet` -eq 1 ]]; then
  worktreeIsClean=false
  git stash push --all temp-`date +%s`
fi

for i in $(git branch | sed 's/^.//')
do
    git checkout ${i}
    git pull --rebase
done

git checkout ${currentBranch}

# restore workspace tree
if [[ ${worktreeIsClean} == false ]]; then
  git stash pop --index
fi

