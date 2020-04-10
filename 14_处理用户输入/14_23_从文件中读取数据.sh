#!/bin/bash
# 用 read 命令读取 Linux 系统文件中的数据

count=1
# 对文件使用 cat 命令，将结果通过管道传递给含有 read 命令的 while 命令。
cat test | while read line; do
	echo "Line $count: $line"
	count=$(($count + 1))
done
echo "Finished processing the file"
