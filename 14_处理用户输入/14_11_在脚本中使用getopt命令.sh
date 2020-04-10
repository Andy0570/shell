#!/bin/bash
# extracting command line options and values with getopt
# getopt 命令可以接受一系列任意形式的命令行选项和参数，并自动将它们转换成适当的格式。
# getopt command is not goot at dealing with space, we can use getopts

set -- $(getopt -q ab:c "$@")
while [ -n "$1" ]; do
	case "$1" in
	-a) echo "Found the -a option" ;;
	-b)
		param="$2"
		echo "Found the -b option,with parameter value $param"
		shift
		;;
	-c) echo "Found the -c option" ;;
	--)
		shift
		break
		;;
	*) echo "$1 is not an option" ;;
	esac
	shift
done

count=1
for param in "$@"; do
	echo "Parameter #$count: $param"
	count=$(($count + 1))
done
