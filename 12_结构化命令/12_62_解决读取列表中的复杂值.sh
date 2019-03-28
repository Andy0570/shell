#!/bin/bash
# 解决 “shell看到了列表值中的单引号并尝试使用它们来定义一个单独的数据值”问题
# 1. 使用转义字符（反斜杠）来将单引号转义。
# 2. 使用双引号来定义用到单引号的值。

for test in I don\'t know if "this'll" work; do
	echo "word:$test"
done
