echo -n "Enter time:"
read h
u=`whoami`
#h=`date +%H`
if [ $h -ge 4 ] && [ $h -lt 12 ]
then 
echo "Good Morning $u"
elif [ $h -ge 12 ] && [ $h -lt 16 ]
then
echo "Good afternoon $u"
elif [ $h -ge 16 ] && [ $h -lt 19 ]
then
echo "Good evening $u"
else
echo "Good night $u"
fi

