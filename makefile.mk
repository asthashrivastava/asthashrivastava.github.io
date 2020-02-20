README.md: guessinggame.sh
	touch README.md
	echo "guessinggame.sh" > README.md
	echo "Make File execution Date and Time $$(date)  " >> README.md
	echo "* **No. of lines in GuessingGame.sh:** $$(wc -l guessinggame.sh | cut -d ' ' -f1)  " >> README.md
