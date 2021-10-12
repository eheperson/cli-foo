#!/bin/bash
#
# for VARIABLE in 1 2 3 4 5 .. N
# do
# 	command1
# 	command2
# 	commandN
# done
# --------
# for VARIABLE in file1 file2 file3
# do
# 	command1 on $VARIABLE
# 	command2
# 	commandN
# done
# --------
# for OUTPUT in $(Linux-Or-Unix-Command-Here)
# do
# 	command1 on $OUTPUT
# 	command2 on $OUTPUT
# 	commandN
# done
#
#
for i in 1 2 3 4 5
do
   echo "Welcome $i times"
done
#
#
for i in {1..10}
do
   echo "Welcome $i times"
done
#
#
echo "Bash version ${BASH_VERSION}..."
for i in {0..10..2}
  do 
     echo "Welcome $i times"
 done
 #
 #
 # The for Loop argument list also accpents Command-line arguments/paramenters as follows:
 # script.sh
 # run as follow : 
 #       ./script one foo bar
 ## $@ expands to the positional parameters, starting from one.  ##
for i in $@
do
    echo "Script arg is $i"
done