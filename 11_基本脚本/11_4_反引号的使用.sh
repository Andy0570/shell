#!/bin/bash
# using the backtick character  会把反引号里面当作一条命令来执行

# 将命令输出赋值给变量有两种方式：
testing=`date`
# 推荐使用这种方式： testing=$(date)
echo "The date and time are: $testing"
