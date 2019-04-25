#!/usr/bin/env bash

# 保留缓存区
# 清空未追踪文件
# stash 名字随机

git stash save --keep-index --include-untracked temp-`date +%s`

