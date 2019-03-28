#!/bin/bash

# break n 指定要跳出的循环层级
# 默认情况下，n 为 1，表明跳出的是当前的循环。
# 如果你将 n 设为 2，break 命令就会停止下一级的外部循环。

for ((a = 1; a < 4; a++)); do
	echo "Outer loop : $a"
	for ((b = 1; b < 100; b++)); do
		if [ $b -gt 4 ]; then
			break 2
		fi
		echo " Inner loop:$b"
	done
done
