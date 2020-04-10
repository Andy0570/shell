#!/bin/bash
# testing $* and $@
# 抓取所有数据
# $* 变量会将命令行上提供的所有参数当作一个单词保存。
# $@ 变量会将命令行上提供的所有参数当作同一个字符串中的多个独立的单词。

count=1
for param in "$*"; do
	echo "\$* Parameter #$count = $param"
	count=$(($count + 1))
done
# $* 变量会将所有参数当成单个参数
# $ ./test12.sh rich barbara katie jessica
# 输出：
# “$* Parameter #1 = rich barbara katie jessica

count=1
for param in "$@"; do
	echo "\$@ Paramenter #$count = $param"
	count=$(($count + 1))
done
# $@ 变量会单独处理每个参数
# $ ./test12.sh rich barbara katie jessica
# 输出：
#“$@ Parameter #1 = rich
#$@ Parameter #2 = barbara
#$@ Parameter #3 = katie
#$@ Parameter #4 = jessica