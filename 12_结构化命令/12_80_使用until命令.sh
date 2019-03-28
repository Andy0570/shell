#!/bin/bash
# using the until command

# 只要该变量的值等于0，until 命令就会停止循环
var1=100
until [ $var1 -eq 0 ]; do
	echo $var1
	var1=$(($var1 - 25))
done

# 使用多个测试命令时，只有最后一个命令的退出状态码决定了 bash shell 是否执行已定义的 other commands
var1=100
until
	echo $var1
	[ $var1 -eq 0 ]
do
	echo Inside the loop: $var1
	var1=$(($var1 - 25))
done
