#!/bin/bash
# 读取 .csv 格式的数据文件，输出 SQL INSERT 语句来将数据插入数据库
#
# members.csv 文件格式示例：
# Blum,Richard,123 Main St.,Chicago,IL,60601
# Blum,Barbara,123 Main St.,Chicago,IL,60601
# Bresnahan,Christine,456 Oak Ave.,Columbus,OH,43201
# Bresnahan,Timothy,456 Oak Ave.,Columbus,OH,43201

outfile='members.sql'
IFS=','
while [ read lname fname address city state zip ]; do
  # >> 输出追加重定向，将 cat 命令的输出追加到由 $outfile 变量指定的文件中。
  # << 输入追加重定向，EOF符号标记了追加到文件中的数据的起止。
  cat >> $outfile << EOF
  INSERT INTO members
  (lname,fname,address,city,state,zip) VALUES
  ('$lname', '$fname', '$address', '$city', '$state', '$zip');
  EOF
# $1 代表第一个命令行参数。
done < ${1}
