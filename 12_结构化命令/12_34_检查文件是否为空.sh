#!/bin/bash
# Testing if a file is empty

# -s 检查文件是否非空
# 使用场景：删除文件之前，检查文件是否为空，以防误删数据。

file_name=$HOME/sentinal

# 1. 测试文件是否存在
if [ -f "$file_name" ]; then
  # 2. 测试文件是否为空
	if [ -s "$file_name" ]; then
		echo "The $file_name file exists and has data in it."
		echo "Will not remove this file"
	else
		echo "The $file_name file exists, but is empty."
		echo "Deleting empty file..."
		rm $file_name
	fi
else
	echo "File $file_name does not exist."
fi
