for i in $*
do 
	if [ -f $i ]
	then 
		echo "-------$i contents are-------"
		cat $i | tr "[a-z]" "[A-Z]"
		echo "------------------------------"
	else
		echo "$i file not found"
	fi
done
