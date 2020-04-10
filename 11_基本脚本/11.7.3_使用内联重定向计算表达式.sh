#!/bin/bash
# 内联输入重定向：直接在命令行中重定向数据

var1=10.45
var2=43.67
var3=33.2
var4=71

# bc 计算器的结果要赋值给变量，因为在bash计算器中创建的变量只在bash计算器中有效，不能在shell脚本中使用。
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
