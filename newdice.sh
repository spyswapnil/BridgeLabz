#!/bin/bash -x

num1=$(( RANDOM%6+1 ))
num2=$(( RANDOM%6+1 ))
num3=$(( RANDOM%6+1 ))
num4=$(( RANDOM%6+1 ))
num5=$(( RANDOM%6+1 ))
declare -A dice
n1=0
n2=0
n3=0
n4=0
n5=0
i=1
while [ $i -le 6 ]
do
	if [ $i -eq $num1 ]
	then
		dice[$num1]=$((n1+1))
	elif [ $i -eq $num2 ]
	then
		dice[$num2]=$((n2+1))
	elif [ $i -eq $num3 ]
	then
		dice[$num3]=$((n3+1))
	elif [ $i -eq $num4 ]
	then
		dice[$num4]=$((n4+1))
	elif [ $i -eq $num5 ]
	then
		dice[$num5]=$((n5+1))
	fi
	$((i++))
done
echo $num1 $num2 $num3 $num4 $num5
echo ${!dice[@]} ${dice[@]}
