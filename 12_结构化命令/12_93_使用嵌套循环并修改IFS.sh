#!/bin/bash
# changing the IFS value

# 遍历存储在文件中的数据
# 修改 IFS 环境变量为 \n，逐行遍历 /etc/passwd 中的数据
IFS.OLD=$IFS
IFS=$'\n'
for entry in $(cat /etc/passwd); do
	echo "Values in $entry -"
	# 将 IFS 环境变量改为:，这样就能分隔开每行中的各个数据段了
	IFS=:
	for value in $entry; do
		echo " $value"
	done
done
