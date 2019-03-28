#!/bin/bash
# another example of how not to use the for command

# for 循环假定每个值都是用空格分割的，因此这里要用双引号圈起数据值中有空格的值。
for test in Newada "New Hampshire"
do
	echo "Now going to $test"
done
