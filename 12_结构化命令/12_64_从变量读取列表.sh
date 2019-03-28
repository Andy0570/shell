#!/bin/bash
# using a variable to hold the list

list="Alabama Alaska Arizona"
# 向 list 列表中追加值
list=$list" Connecticut"

for state in $list; do
	echo "Have you ever visited $state"
done
