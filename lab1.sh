#!/bin/bash
fridayfile = 'fridayfile.txt'
hwfile = 'helloworldfile.txt'
lsfile = 'lsfile.txt'
inputfile = 'in.a'

# PART 1
echo "Creating a direcroty fold1"
mkdir fold1
echo "Creating a file my_file.txt"
echo "sample Text" >> ./my_file.txt
echo "Moving around with original and copied files"
mv ./my_file.txt ./fold1/my_file.txt
cp ./fold1/my_file.txt ./copy1.txt
cp ./copy1.txt ./fold1/copy2.txt
mv ./copy1.txt ./fold1/copy1.txt
mv ./fold1/copy2.txt ./copy2.txt
echo "Deleting file, copies and directory"
rm ./my_file.txt
rm ./copy2.txt
rm -rf ./fold1
# 2. full part to my home directory is
# /home/students/17200/ealeksandrov
# 3. ``cd`` with no arguments changes 
# directory to home directory
# 4. cat can just print out the file,
# but less provides handy search, 
# navigation and more useful stuff

# PART 2
wget http://factorized.net/crusoe.txt
find /tmp -iname '*.txt'
cat $fridayfile | grep friday
echo "Hello world" >> $hwfile
echo "Hello world" > $hwfile
ls -alt > $lsfile
find / -nowarn -iname "*.txt" 2> /dev/null

#PART 3
grep -o Saturday crusoe.txt | wc -w
sed -i 's/Friday/Saturday/g' crusoe.txt
awk 'BEGIN {f = 0; s = 0;}
{f += $1; s += $2;}
END{ print f " " s}' $inputfile