if [ $# -eq 3 ]
then
	if [ -f $1 ]
	then
		l=`wc -l $1`
		head -n $3 $1 | tail +$2
	else
		echo "Enter available $i is not a file"
	fi
else
	echo "Enter the required argument"
	echo "usage file name sarting line ending line"
fi
