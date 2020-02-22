#!/bin/bash
echo -e "guess.bash - Guess the number of files in current Directory\n"

### Get number of files
(( answer = RANDOM % 100 + 1 ))
guess=-1
typeset -i num=0

### Play game
while (( guess != answer )); do
	num=num+1
	read -p "Enter guess $num: " guess
	if (( guess < answer )); then
		echo "Higher..."
	elif (( guess > answer )); then
		echo "Lower..."
	fi
done
echo -e "Correct! That took $num guesses.\n"
