#!/bin/bash
# continuing an outer loop

for ((a = 1; a <= 5; a++)); do
	echo "Iteration $a:"
	for ((b = 1; b < 3; b++)); do
		if [ $a -gt 2 ] && [ $a -lt 4 ]; then
		  # continue n，指定要退出的循环层级
			# 用continue 命令来停止处理循环内的命令，但会继续处理外部循环。
			continue 2
		fi
		var3=$(($a * $b))
		echo " The result of $a * $b is $var3"
	done
done
