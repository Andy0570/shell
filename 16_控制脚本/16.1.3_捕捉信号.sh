#!/bin/bash
# testing signal trapping

# 使用 trap 命令忽略 SIGINT 信号，并控制脚本的行为。
trap "echo 'Sorry! I have trapped Ctrl-C'" SIGINT SIGTERM

echo this is a test program

count=1

while [ $count -le 10 ]; do
	echo "Loop #$count"
	sleep 5
	count=$(($count + 1))
done
