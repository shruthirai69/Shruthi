#5a. Write a shell script that accepts filename as argument and display its creation time if file 
exist and if does not send output error message.

echo enter filename
read file
if [ -e $file ]
then
set -- `ls -ld $file`
echo "$file created at $6 $7 $8"
else
echo "file doesn't exist"
fi

