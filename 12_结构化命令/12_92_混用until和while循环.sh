#!/bin/bash
# using until and while loops

var1=3

# 外循环，当 var1 = 0 时，退出循环
until [ $val1 -eq 0 ]; do
  echo "Outer loop: $val1"
  var2=1
  # 内循环，当 var2 < 5 时，执行循环
  while [ $var2 -lt 5 ]; do
    var3=$(echo "scale=4; $var1 / $var2" | bc)
    echo "  Inner loop:$var1 / $var2 = $var3"
    var2=$[ $var2 + 1 ]
  done
  var1=$[ $var1 - 1 ] 
done
