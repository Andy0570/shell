#!/bin/bash
# check file ownership

# -o 检查文件是否存在并属当前用户所有

if [ -o /etc/passwd ]; then
	echo "You are the owner of the /etc/passwd file."
else
	echo "Sorry, you are not the onwer of the file /etc/passwd file."
fi
