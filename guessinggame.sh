echo "Start of Program"

function goodguess {

for files in $(ls | wc -l)
do
	let quantity=$quantity+$files
done
}

goodguess result
echo $result

count=0

while [[ $count -eq 0 ]]
do
	echo "How many files in this directory?  Please input your answer in numerical form:"
	read answer
	if  [[ $quantity -ne $answer ]]
	then
		if [[ $answer -lt $quantity ]]
		then
			echo "Too low."
			echo "That is incorrect.  Please try again."
			let count=$count+0
		else
			echo "Too high."
			echo "That is incorrect.  Please try again."
			let count=$count+0
		fi
	else
		echo "That is correct!  Congratulations!!"
		let count=$count+1
	fi
done


