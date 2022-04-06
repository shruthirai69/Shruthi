echo "Enter the password"
stty -echo
read p1
stty echo
echo "Confirm the password" 
stty -echo
read p2
stty echo
while [ "$p1" != "$p2" ]
do
	echo -n "Password doesnt match: Reenter the password"
	read p2
done
clear
echo ".......Terminal Locked..........."


echo "Enter the password to unlcok"
stty -echo
read p3
stty echo
while [ "$p1" != "$p3" ]
do

	clear

	echo -n "Password doesnt match: Reenter the password"
	read p3
done
echo ".........Terminal unlocked.........."


