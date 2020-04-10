#!/bin/bash
# testing closing file descriptors

exec 3>test
echo "This is a test line of data" >&3
# 关闭文件描述符 3
exec 3>&-
echo "This won't work" >&3

cat test
# 关闭后再打开同一个文件，系统会自动覆盖已有文件。
exec 3>test
echo "This'll be bad" >&3
