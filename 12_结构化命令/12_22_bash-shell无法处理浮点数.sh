#!/bin/bash
# Testing floating point numbers 
# bash shell 仅能处理整数，test 命令无法处理 val1 变量中存储的浮点值。

val1=`echo "scale=4; 10 / 3" | bc`
echo "The test value is $val1"
if [ $val1 -gt 3 ]
then
	echo "The result is larger than 3"
fi
