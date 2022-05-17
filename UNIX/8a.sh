if [ $# -eq 1 ]
then 
	user=`who | grep -woi "$1"`
	if [ $? -eq 0 ]
	then
		if [ "$user" = `whoami` ]
		then
			currentHour=`date +%H`
			currentMinute=`date +%M`
			currentUser=`whoami`
			set -- `who | grep $currentUser`
			set -- `echo $4 | tr ":" " "`
			loginHour=$1
			loginMinute=$2
			hours=`expr $currentHour - $loginHour`
			minutes=`expr $currentMinute - $loginMinute`
			if [ $minutes -lt 0 ]
			then
				hours=`expr $hours - 1`
				loginMinute=`expr 60 - $loginMinute`
				minutes=`expr $loginMinute + $currentMinute`
			fi
			echo The user `whoami` working time is $hours hours $minutes minutes
		else
			echo User not loggedin
		fi
	else 
		echo User does not exist
	fi
else
	echo Enter parameter
fi
