#!/bin/bash -x

echo "This problem displays winning percentage of Head and Tail combination in a Singlet, Doublet and Triplet"

flipCoin=$((RANDOM%2))
if [ $flipCoin -eq 0 ]
then
	echo "Heads"
else
	echo "Tails"
fi
