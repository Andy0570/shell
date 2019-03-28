#!/bin/bash
# This script displays the date and who's logged on

# -n 参数：把文本字符串和命令输出显示在同一行
# -e 参数：支持转义字符
# echo -n -e 'The time is:\n\n'
echo The time is:
date
echo The one who has been logged is:
who
