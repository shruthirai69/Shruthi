if [ $# -eq 1 ]
then
	if [ -d $1 ]
	then
		set -- `ls -Rl $1 | grep "^-" | tr -s " " | cut -d " " -f 5,9- | sort -n | tail -n 1`
		echo "File size: $1"
		echo "File name: $2"
	else
		echo "Not a directory"
	fi
else
	echo "Enter directory name"
fi
