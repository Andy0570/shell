#!/bin/bash
# extracting options and parameters
# ./test.sh -b test1 -a -d

while [ -n "$1" ]; do
	case "$1" in
	-a) echo "Found the -a option" ;;
	-b) echo "Found the -b option" ;;
	-c) echo "Found the -c option" ;;
	--)
	  # -- 表明剩下的命令行参数都是选项，
		# shift 将双破折线移出参数变量。
		# break 跳出循环。
		shift
		break
		;;
	*) echo "$1 is not an option" ;;
	esac
	# 参数处理完成后，向左移出
	shift
done

count=1
for param in $@; do
	echo "Parameter #$count: $param"
	count=$(($count + 1))
done
