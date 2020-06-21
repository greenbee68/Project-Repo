README.md:
	touch README.md

	echo "The title of my Project is 'The Guessing Game.'" > README.md
	echo "The makefile was initiated on $$(date +%D,%T)" >> README.md
	echo "The number of lines of code in my guessinggame.sh is $$(cat guessinggame.sh | wc -l)" >> README.md

clean:
	rm README.md
