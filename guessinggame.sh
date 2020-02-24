#!/bin/bash

fileCount=$( find . -maxdepth 1 -type f | wc -l )

function validateInput {
    read getInput
    while [[ ! $getInput =~ ^[0-9]+$ ]];do 
        echo "ERR! Enter a valid numeric Input :> "
        read getInput
    done
}


function check_guess {
    
    if [ $getInput -gt $fileCount ]
    then
        echo "Try Again! Your guess is HIGHER than actual . "
        validateInput
    else
        echo "Try Again! Your guess is LOWER than actual ."
        validateInput
    fi
}

echo "Guess the number of files in your current directory :> "
read getInput
while [[ $getInput -ne $fileCount ]];do
    check_guess
done
echo "Congratulations!! You guessed it Right !"
exit 0
