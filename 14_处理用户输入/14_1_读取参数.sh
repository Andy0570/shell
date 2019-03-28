#!/bin/bash
# using one command line parameter
# 阶乘运算：1*2*3*...*N

factorial=1
for ((number = 1; number <= $1; number++)); do
	factorial=$(($factorial * $number))
done
echo The factor of $1 is $factorial
