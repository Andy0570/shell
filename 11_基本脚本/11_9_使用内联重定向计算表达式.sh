#!/bin/bash

var1=10.45
var2=43.67
var3=33.2
var4=71

# EOF 文本字符串标识了内联重定向数据的起止。
var5=$(
	bc <<EOF
scale=4
a1 = $var1 * $var2
b1 = $var3 * $var4
a1 + b1
EOF
)
echo The final answer for this mess is $var5
