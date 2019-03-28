#!/bin/bash
# getting the number of parameters

echo There were $# parameters supplied

# 花括号里不能使用美元符号：${$#}
params=$#
echo The last parameter is $params

# 将美元符号换成感叹号
echo The last parameter is ${!#}
