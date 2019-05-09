#!/usr/bin/env bash

git status | grep -q "git cherry-pick"
if [[ $? -eq 0 ]];then

    # only if all conflicts fixed, workspace is nothing
    otherFiles=`git ls-files --others --exclude-standard`
    git diff --quiet
    if [[ $? -eq 0 ]] && [[ ${#otherFiles} -eq 0 ]]; then

        # if there is something in index then continue, otherwise skip
        git diff --cached --quiet
        if [[ $? -ne 0 ]];
            then git cherry-pick --continue
            else git cherry-pick --skip
        fi

    fi
fi

