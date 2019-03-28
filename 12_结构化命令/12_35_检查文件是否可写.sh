#!/bin/bash
# Check if a file is writable.

# -w 判断当前用户对文件是否有可写权限

item_name=$HOME
echo "The item being checked: $item_name"

# 1. -e 检查文件或者目录是否存在
if [ -e $item_name ]; then
	echo "The item $item_name does exist."
	echo "But is it a file?"
	# 2. -f 检查文件是否存在
	if [ -f $item_name ]; then
		echo "Yes, $item_name is a file."
		echo "But is it writable?"
		# 3. -w 检查文件是否可写
		if [ -w "$item_name" ]; then
			echo "Writing current time to $item_name"
			date +%H%M >>$item_name
		else
			echo "Unable to write to $item_name"
		fi

	else
		echo "No, $item_name is not a file."
	fi
else
	echo "The item $item_name does not exist."
	echo "Nothing to update."
fi
