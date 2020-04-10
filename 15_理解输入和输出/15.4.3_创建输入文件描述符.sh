#!/bin/bash
# redirecting input file descriptors

exec 3>&1
echo "This is the 3 file descriptor" >&3

# 文件描述符 6 用来保存 STDIN 的位置
exec 6>&0
exec 0<test

count=1
while read line; do
	echo "Line #$count: $line"
	count=$(($count + 1))
done

# 读取完成后，脚本将 STDIN 重定向到文件描述符 6
exec 0<&6

# 测试 STDIN 是否恢复正常
read -p "Are you done now?" answer
case $answer in
Y | y) echo "Goodbye" ;;
N | n) echo "Sorry, this is the end" ;;
esac
