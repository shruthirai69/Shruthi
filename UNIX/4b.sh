if [ $# -ge 1 ]
then	
	if [ $# -eq 2 ]
	then
		chd=$2
	else
		chd=`cd .`
	fi
	file=`find $chd -iname $1`
	if [ `echo $file | wc -c` -gt 1 ]
	then 
		number=`ls -inum $file | grep -o ^[0-9]*`
		cd $chd
		find $chd -inum $number
	else
		echo No such file
	fi
else
	echo Provide filename
fi
