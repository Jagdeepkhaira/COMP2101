#!/bin/bash
#
# this script demonstrates doing arithmetic

# Improve this script by asking the user to supply the two numbers
# Improve this script by demonstrating using subtraction and multiplication
# Improve this script by demonstrating the modulus operation
#   - the output should look something like:
#   - first divided by second gives X with a remainder of Y
# Improve this script by calculating and displaying the first number raised to the power of the second number

#firstnum=5
#secondnum=2
##sum=$((firstnum + secondnum))
#d#ividend=$((firstnum / secondnum))
#pdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")

#c#at <<EOF
#$firstnum plus $secondnum is $sum
#3$firstnum divided by $secondnum is $dividend
#  - More precisely, it is $fpdividend
#EOF
a="enter two number just put space between 2 numbers : "
read -p "$a" number1 number2
subtraction=$((number1-number2))
addition=$((number1+number2))
div=$((number1/number2))
remainder=$((number1%number2))
multi=$((number1*number2))
echo sum of number assigned by root is $addition
echo diffrence of number assigned by root is $subtraction
echo first divide by second assigns $div with a remainder of $remainder
echo multiplication of two number is $multi
echo first number raise to power of second gives $((number1**number2))
