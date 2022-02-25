for i in `ls`
do
fl=`expr length $i`
if [ $fl -ge 10 ]
then
echo $i
else 
echo "File name not greater than 10 character"
fi
done
