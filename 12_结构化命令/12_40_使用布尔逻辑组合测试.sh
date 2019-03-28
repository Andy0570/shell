#!/bin/bash
# testing compound comparisons

# AND 布尔运算符，两个条件都必须满足，返回 True
# [ condition1 ] && [ condition2 ]

# OR 布尔运算符，两个条件其中任意一个满足，返回 True
# [ condition1 ] || [ condition2 ]

if [ -d $HOME ] && [ -w $HOME/testing ]; then
	echo "The file exists and you can write to it"
else
	echo "I cannot write to it"
fi
