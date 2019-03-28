#!/bin/bash

var1=100
var2=45

# 基本格式：variable=$(echo "option; expression" | bc)
# scale=4，表示保留4位小数
var3=$(echo "scale=4; $var1 / $var2" | bc)
echo The answer for this is $var3
