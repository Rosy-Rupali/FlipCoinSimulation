#!/bin/bash 

echo "This problem displays winning percentage of Head and Tail combination in a Singlet, Doublet and Triplet"

read -p "number of times user want to flip the coin" flip

countHead=0
countTail=0

declare -A noOfCounts

for((i=0; i<$flip; i++))
do
	if [ $((RANDOM%2)) -eq 1 ]
	then
		((countHead++))
	else
		((countTail++))
	fi
done

echo "head="$countHead
echo "tail="$countTail

noOfCounts[tail]=$countTail
noOfCounts[head]=$countHead

echo ${noOfCounts[@]}

PercentageOfTails=$((100*$countTail/$flip))
echo "Percentage of tails= "$PercentageOfTails
PercentageOfHeads=$((100*$countHead/$flip))
echo "Percentage of heads= "$PercentageOfHeads

