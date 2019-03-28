#!/bin/bash
# testing file dates

# -nt 检查一个文件是否比另一个文件新
# -ot 检查一个文件是否比一个文件旧
# 在使用 -nt 或 -ot 比较文件之前，必须先确认文件是否存在。

if [ "$file1" -nt "$file2" ]; then
	echo file1 is newer than file2
else
	echo file1 is older than file2
fi

if [ "$file1" -ot "$file2" ]; then
	echo file1 is older than file2
else
	echo file1 is newer than file2
fi
