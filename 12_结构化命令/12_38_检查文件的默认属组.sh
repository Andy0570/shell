#!/bin/bash
# check file group test

# -G 检查文件的默认组，如果它匹配了用户的默认组，则测试成功。
# -G 比较只会检查默认组而非用户所属的所有组！

if [ -G $HOME/testing ]; then
  echo "You are in the same group as the file."
else
  echo "The file is not owned by your group."
fi
