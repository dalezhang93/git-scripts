#!/usr/bin/env bash

currentBranch=`git rev-parse --abbrev-ref HEAD`

# check current branch is not head
if test ${currentBranch} = 'HEAD'; then
    exit
fi

# save workspace tree
worktreeIsClean=true
git diff HEAD --quiet
if [[ $? -eq 1 ]]; then
  worktreeIsClean=false
  git stash save --include-untracked temp-`date +%s`
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

