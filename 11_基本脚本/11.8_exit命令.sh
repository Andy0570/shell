#!/bin/bash
# testing the exit status
# 退出状态码，范围0～255，超过则进行模运算
# 默认情况下， 退出状态码为0，表明命令执行成功。

var1=10
var2=20
var3=$[ $var1 + $var2]
echo The answer is $var3
exit 5
