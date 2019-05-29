# git-scripts

- `clean-workspace.sh` 清空工作区内容
- `pullrebase-all.sh` 使用`rebase`更新远程分支到本地分支
- `stash-workspace.sh` 只保存工作区中所有内容,不包含缓存区
- `stash-all.sh` 保存所有有变动的内容
- `rebase-continue.sh` 在`rebase`过程中解决完冲突后，执行`git rebase --continue`
- `cherry-pick-continue.sh` 在`cherry-pick`过程中解决完冲突后，执行`git cherry-pick --continue`
- `githook-eslit-pre-receive.sh` 通过服务端 `git` 钩子校验 `eslit` 规范

