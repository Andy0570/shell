#!/bin/bash
# -r 测试文件是否可读

pwfile=/etc/shadow

# 1. 检查文件是否存在
if [ -f "$pwfile" ]; then
	echo file exists.
	# 2. 检查文件可读性
	if [ -r "$pwfile" ]; then
		echo file is readable.
	else
		echo file is not readable.
	fi
else
	echo file does not exist.
fi
