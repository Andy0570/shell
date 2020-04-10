#!/bin/bash
# extracting command line options as parameters

# 用 case 语句判断某个参数是否为选项
while [ -n "$1" ]; do
	case "$1" in
	-a) echo "Found the -a option" ;;
	-b) echo "Found the -b optins" ;;
	-c) echo "Found the -c optins" ;;
	*) echo "$1 is not a valid options" ;;
	esac
	# 参数处理完成后，向左移出
	shift
done
