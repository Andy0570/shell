#!/bin/bash
# 修改捕获

# 设置信号捕获
trap "echo 'Sorry...ctrl + c is trapped.'" SIGINT

count=1
while [ $count -le 5 ]; do
  echo "Loop #$count"
  sleep 1s
  count=$[ $count + 1 ]
done

# 修改信号捕获
trap "echo 'I modified the trap!'" SIGINT

count=1
while [ $count -le 5 ]; do
  echo "Secound Loop #$count"
  sleep 1s
  count=$[ $count + 1 ]
done
