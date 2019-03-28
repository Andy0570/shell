#!/bin/bash
# look before you leap

# -d 检查指定的目录是否存在

if [ -d $HOME ]; then
	echo "Your home directory exists"
	cd $HOME
	ls -a
else
	echo "There is a problem with your HOME direcotry"
fi
