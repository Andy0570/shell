#!/bin/bash
# 移动变量

# shift 默认将每个参数变量向左移动一个位置
count=1
while [ -n "$1" ]
do
	echo "Parameter #$count = $1"
	count=$[ $count+1 ]
	shift
done

echo -e "\n"

# shift n 一次性向左移动 n 位
echo "The original parameters : $*"
shift 2
echo "Here's the new first parameter: $1"
