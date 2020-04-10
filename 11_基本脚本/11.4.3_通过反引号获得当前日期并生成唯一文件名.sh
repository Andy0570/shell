#!/bin/bash
# copy the /usr/bin directory listing to a log file
# 通过命令替换获得当前日期并用它来生成唯一文件名。

# today 输出格式：+%y%m%d 格式告诉 date 命令将日期显示为两位数的年月日的组合
today=`date +%y%m%d`
ls /usr/bin -al > log.$today
