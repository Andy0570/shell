#!/bin/bash
# testing the $0 parameter

# $0：shell 在命令行启动的脚本名
echo The command entered is $0

# 当传给 $0 变量的真实字符串是整个脚本的路径时，程序中就会使用整个路径，而不仅仅是程序名。
# basename 命令：返回不包含路径的脚本名。
name=`basename $0`
echo The command entered is $name
