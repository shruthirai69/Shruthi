echo -n "enter a time"
read h
u=`whoami`
#h=`date +%H`
if [ $h -ge 4 ] && [ $h -lt 12 ]
then
	echo "Good morning $u"
elif [ $h -ge 12 ] && [ $h -lt 16 ]
then
	echo "Good Afternoon $u"
elif [ $h -ge 16 ] && [ $h -lt 19 ]
then
	echo "Good Evening $u"
else
	echo "Good Night $u"
fi
