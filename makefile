readme : guessinggame.sh
	touch README.md
	echo "Project Title : Unix Workbench Guessing Game" > README.md
	echo "\nNumber of Lines in Script : " >> README.md
	cat guessinggame.sh | wc -l >> README.md
	echo "\nMake File Execution Time : " >> README.md
	date >> README.md
