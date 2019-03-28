#!/bin/bash
# nesting for loops

# 外部循环
for ((a = 1; a <= 3; a++)); do
	echo "Starting loop $a:"
	# 内部循环
	for ((b = 1; b <= 3; b++)); do
		echo "Inside loog: $b:"
	done
done
