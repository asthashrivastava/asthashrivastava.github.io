#!/usr/bin/bash

NF=`ls -1 | wc -l`
echo "Guess the number of files in the current directory:-"
read user_num

function count_check {
    while [ $user_num -ne $NF ]
    do
    if [ $user_num -gt $NF ]
    then
        echo "Higher than the actual value! Please try again!"
		echo " Enter your Guess:-"
        read user_num
    else
        echo "Lower than the actual value! Please try again!"
        read user_input
		echo " Enter your Guess:-"
    fi
    done
}

echo "Congratulations! You guessed it RIGHT!! Total Files in directory are: $NF !"