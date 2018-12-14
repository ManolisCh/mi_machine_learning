#!/bin/bash
trap "exit" INT

shopt -s nullglob
numfiles=(*)
numfiles=${#numfiles[@]}
echo "$((numfiles -1 ))"


for i in $(seq 01 $((numfiles -1 )))
do
	echo "Processing file $i"
	if [ $i -le 9 ]; then
		rosbag info -y "0$i"_teleop.bag > "0$i"_teleop.txt
	else
		rosbag info -y "$i"_teleop.bag > "$i"_teleop.txt
	fi
done
