#!/bin/bash
#
# this script rolls a pair of six-sided dice and displays both the rolls and the sum
#

# Improve this script by re-organizing it to:
#  put the number of sides in a variable which is used as the range for the random number

#  put the bias, or offset, for the RANDOM number in a variable (it is 1 for our purposes)
#     - you can think of this as the minimum value for the generated number
#  roll the dice using the variables for the range and bias i.e. RANDOM % range + bias
#  generate the sum of the dice
#  generate the average of the dice
#  display a summary of what was rolled, and what the result was
# Tell the user we have started processing

# IMPROVED script...................
sides=6
bias=1

echo "         .Rolling the dice.
......    ......    ......     ......."
# roll the dice and save the results
dice1=$(( RANDOM % sides + bias ))
dice2=$(( RANDOM % sides + bias ))
# sum up the rolls
sum=$(( dice1 + dice2 ))
# average
average=$(($sum / 2))
# display the results
echo "Rolled Outcomes $dice1, $dice2 "
echo "Sum of rolled Dices $dice1, $dice2 for a $sum"
echo "Average of the rolled dices  $average"
