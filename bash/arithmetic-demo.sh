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
read -p "Hii my friend, choose first number:" firstnum
read -p "Hii my friend, select second number:" secondnum

# Arthimatic calculation
sum=$((firstnum + secondnum))
subtraction=$((firstnum - secondnum))
multiplication=$((firstnum * secondnum))
dividend=$((firstnum / secondnum))
modulus=$((firstnum % secondnum))
power=$((firstnum ** secondnum))

fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")

cat <<EOF

SUM OF TWO NUMBERS
$firstnum + $secondnum is $sum

SUBTRACTION OF TWO NUMBERS
$firstnum - $secondnum is $subtraction

MULTIPLICATION OF TWO NUMBERS
$firstnum * $secondnum is $multiplication

DIVISION OF TWO NUMBERS
$firstnum / by $secondnum is $dividend

MODULUS OF TWO NUMBERS
$firstnum % $secondnum gives $dividend with the number $modulus

POWER METHOD
$firstnum power of the $secondnum is $power
  - More precisely, it is $fpdividend
EOF
