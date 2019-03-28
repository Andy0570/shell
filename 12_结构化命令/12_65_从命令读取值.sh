#!/bin/bash
# reading values from a file

file="state"

# 更改字段分隔符，使其只能识别换行符
IFS=$'\n'

for state in $(cat $file); do
	echo "Visit beautiful $state"
done

# 在处理代码量较大的脚本时，可能在一个地方需要修改 IFS 的值，然后忽略这次修改，在脚本的其他地方继续沿用 IFS 的默认值。
IFS.OLD=$IFS
IFS=$'\n'
#具体代码
IFS=$IFS.OLD