#!/usr/bin/bash

fileCount=`ls -1 | wc -l`

#To check if the code is working 
# echo Number of files in your directory :> $fileCount

function check_guess {
    while [ $guessCount -ne $fileCount ]
    do
        if [ $guessCount -gt $fileCount ]
        then
            echo "Try Again! Your guess is HIGHER than actual . "
            read guessCount
        else
            echo "Try Again! Your guess is LOWER than actual ."
            read guessCount
        fi
    done
}

echo "Guess the number of files in your current directory :> "
read guessCount
check_guess

