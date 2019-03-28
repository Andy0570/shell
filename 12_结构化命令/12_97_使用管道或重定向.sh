#!/bin/bash
# redirecting the for output to a file

# 将 for 命令的结果重定向到文件 output.txt
for file in /home/tiandi/*
do
	if [ -d "$file" ]
	then
		echo "$file is a directory"
	else
		echo "$file is a file"
	fi
done > output.txt

# 将循环输出的结果管道给另一个命令
for state in "North Dakota" Connecticut
do
	echo "$state is next place to go"
done | sort
echo "This completes our travels"
