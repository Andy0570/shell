#!/bin/bash
# 从 PATH 环境变量中查找可执行文件

IFS=:
# 1.对 PATH 环境变量中的目录进行迭代
for folder in $PATH; do
  echo "$folder:"
  # 2.迭代特定目录中的所有文件
  for file in $folder/*; do
    # 3.检查各个文件是否具有可执行权限
    if [ -x $file ]; then
      echo " $file"
    fi
  done
done
