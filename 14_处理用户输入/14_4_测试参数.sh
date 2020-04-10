#!/bin/bash
# 在使用参数前一定要检查其中是否存在数据

# -n 测试检查命令行参数 $1 中是否有数据（即字符串长度大于0）
if [ -n "$1" ]; then
	echo Hello $1, glad to meet you.
else
	echo "Sorry, you did not identify yourself."
fi
