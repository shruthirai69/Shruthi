echo enter first file name
read f1
if [ -e $f1 ]
then
set -- `ls -ld $f1`
f1p=$1
else
echo "file doesnot exist"
exit
fi

echo enter second file name
read f2
if [ -e $f2 ]
then 
set -- `ls -ld $f2`
f2p=$1
else
echo "file doesnt exist"
exit
fi

if [ $f1p = $f2p ]
then
echo "File permission are identicatl"
echo "File permission is $f1p"
else
echo "file permission are not identical"
echo "$f1 permission is $f1p"
echo "$f2 permission is $f2p"
fi

