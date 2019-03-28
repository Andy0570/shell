#!/bin/bash
# 检查文件或者目录是否存在

# -e 检查文件或者目录是否存在
# -d 检查目录是否存在
# -f 检查对象是否存在

item_name=$HOME
echo "The item being checked: $item_name"

if [ -e $item_name ]; then
	echo "The item $item_name does exist."
	echo "But is it a file?"
	if [ -f $item_name ]; then
		echo "Yes, $item_name is a file."
	else
		echo "No, $item_name is not a file."
	fi
else
	echo "The item $item_name does not exist."
	echo "Nothing to update."
fi
