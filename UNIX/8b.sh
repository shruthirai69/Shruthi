if [ $# -eq 1 ]
then
	var=`grep -owi $1 /etc/passwd`
	if [ $? -eq 0 ]
	then
		sleep 1s
		success=`who | grep -wo "$var"`
		if [ $? -eq 0 ]
		then
			echo "Login Success"
		else 
			echo "Login Not Success"
		fi
	else
		echo "User Doesn't Exists"
	fi
else 
	echo "Please provide 1 argument"
fi
