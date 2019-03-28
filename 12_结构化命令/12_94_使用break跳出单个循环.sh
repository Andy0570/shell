#!/bin/bash

# 跳出单个循环
for var1 in 1 2 3 4 5 6 7 8 9 10; do
	if [ $var1 -eq 5 ]; then
		break
	fi
	echo "Iteration number: $var1"
done
echo "The for loop is completed"

# 跳出 while 循环
var1=1
while [ $var1 -lt 10 ]; do
  if [ $var1 -eq 5 ]; then
    break
  fi
  echo "Iteration number: $var1"
  var1=$[ $var1 + 1 ]
done
echo "The for loop is completed"

# 跳出内部循环
for ((a = 1; a < 4; a++)); do
	echo "Outer loop : $a"
	for ((b = 1; b < 100; b++)); do
		if [ $b -gt 4 ]; then
			break
		fi
		echo " Inner loop:$b"
	done
done