README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "## Date and Time of Makefile Run" >> README.md
	date >> README.md
	echo "" >> README.md
	echo "## Number of lines in guessinggame.sh:" >> README.md
	wc -l < guessinggame.sh >> README.md
