#!/bin/bash
# 将一个数学运算赋给某个变量：$[ operation ]

var1=10
var2=50
var3=45
var4=$[$var1 * ($var2 - $var3)]
echo 'The final result is '$var4
