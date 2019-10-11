#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data
# TASK 2: Improve it by rewriting it to use the if command
# TASK 3: Improve it by giving them 3 tries to get it right before failing (test 3 times but only if necessary)
#           *** Do not use the exit command

myString="TestString"
referenceString="hidennis"

[ $myString = $referenceString ] && echo "You guessed the password!"

#Task-1 -------------- user for a password guess
read -p "Hi, User guess a password :" myString

#Task-2 ------------------rewriting it to use the if command
if [ $myString = $referenceString ]
then
	echo "You guessed the password! "

else
	echo "The password eludes you..."

fi

#Task-3 --------------------3 tries to get it right before failing
for try in {1..3}
do
	read -p "Try ($try): Oops!!! Please enter again password:" myString

	if [ $myString = $referenceString ]
	then
		printf "Wonderful!!!!! Successfullly, You guessed the password!\n"
		break
	else
		echo "The password eludes you........."
	fi
done
