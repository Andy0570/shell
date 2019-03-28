#!/bin/bash
# using double parenthesis

var1=10

# ** 表示幂运算
# 注意：不需要将双括号中表达式里的大于号转义。这是双括号命令提供的另一个高级特性。
if (($var1 ** 2 > 90)); then
	((var2 = $var1 ** 2))
	echo "The square of $var1 is $var2"
fi
