#!/bin/bash
# Testing nested ifs

testuser=NoSuchUser

if grep $testuser /etc/passwd; then
	# 1. 如果用户存在，打印输出
	echo "The user $testuser exists on this system."
else
  # 2. 如果用户不存在，打印输出
	echo "The user $testuser does not exist on this system."
  # 3. 判断用户目录是否存在
	if [ ls -d /home/$testuser ]; then
		echo "However, $testuser has a directory."
	fi
fi
