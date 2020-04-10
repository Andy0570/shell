#!/bin/bash
# getting the number of parameters

# $# 表示脚本运行时携带的命令行参数的个数
echo There were $# parameters supplied

# 花括号里不能使用美元符号：${$#}
# 解决方法一：将 $# 变量的值传给变量后再使用。
params=$#
echo The last parameter is $params

# 解决方法二：将美元符号换成感叹号
echo The last parameter is ${!#}

# warning
# 当命令行上没有任何参数时，
# $# 的值为 0，params 变量的值为 0，
# ${!#} 变量会返回命令行用到的脚本名。