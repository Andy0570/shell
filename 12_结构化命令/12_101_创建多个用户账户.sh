#!/bin/bash
# 创建多个用户账户
#
# 需要创建一个 users.csv 文件，用于存放新用户信息，格式如下：
# userid,userName
#

input="users.csv"
# read 命令可以自动读取文件中的各行
while IFS=',' read -r userid name; do
	echo "adding $userid"
  # -c ：name 作为备注信息
  # -m ：为新用户添加 home 目录
	useradd -c "$name" -m $userid
done <"$input"
