echo Enter password
stty -echo
read p1
stty echo
echo Enter confirmation password
stty -echo
read p2
stty echo
while [ "$p1" != "$p2" ]
do
	clear
	echo Password doesnot match. Re-enter the password
	stty -echo
	read p2
	stty echo
done
clear
echo Terminal locked
echo Enter the password to unlock
stty -echo
read p3
while [ "$p1" != "$p3" ]
do
	clear
	echo Terminal locked
	echo Password doesnot match. Re-enter the password
	read p3
done
echo Terminal unlocked
