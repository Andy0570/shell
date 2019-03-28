#!/bin/bash
# Testing file execution

# -x 判断当前用户对文件是否有执行权限

if [ -x test.sh ]; then
  echo "You can run the script: "
  ./test.sh
  else
  echo "Sorry, you are unable to execute the script"
fi
