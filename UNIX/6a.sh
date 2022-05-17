if [ $# -eq 1 ]
then
	if [ -e $1 ]
	then
		if [ -d ~/mydir ]
		then
			set -- `find ~ -name "$1"`
			for i in $*
			do
				cp $i ~/mydir 2>error
			done
			cat $i
		else
			mkdir ~/mydir
			for i in $*
			do
				cp $i ~/mydir 2>error
			done
			cat $i
		fi
	else
		echo No such file
	fi
else
	echo Provide argument
fi
