echo "enter first file name:"
read file1
if [ -e $file1 ]
then

set -- `ls -ld $file1`
file1perm=$1
else
echo "File doesnt exit"
exit
fi
echo "enter second file name:" 
read file2
if [ -e $file2 ]
then
set -- `ls -ld $file2`
file2perm=$1
else
echo "file doesnt exit"
exit
fi
if [ $file1perm = $file2perm ]
then
echo "file permissions are identical"
echo "permission is $file1perm"
else
echo "file permission are not identical"
echo "$file1 permission is $file1perm"
echo "$file2 permission is $file2perm"
fi
