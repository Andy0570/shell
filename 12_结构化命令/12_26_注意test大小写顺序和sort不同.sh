#!/bin/bash

# test 命令中，大写字母 < 小写字母；
# sort 命令中，大写字母 > 小写字母；
# 原因：test 使用标准的 ASCII 排序，sort 使用本地化语言设置进行排序，对于英语，本地化设置指定了排序顺序中小写字母出现在大写字母之前。

var1=Testing
var2=testing

if [ $val1 \> $val2 ]; then
	echo '$val1 is greater than $val2'
else
	echo '$val1 is less than $val2'
fi
