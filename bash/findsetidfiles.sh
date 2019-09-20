#!/bin/bash
#
# this script generates a report of the files on the system that have the setuid permission bit turned on
# it is for the lab1 exercise

# Task 1 for the exercise is to modify it to also find and display the setgid files in a second listing
# The second listing should display after the setuid file list, and be formatted similar to the setuid file list

# Task 2 for the exercise is to modify it to also display the 10 largest files in the system, sorted by their sizes
# The listing should include the file name, owner, and size in MBytes and be displayed after the listings of setuid and setgid files

echo "setuid files:"
echo "**************** Step 1 ***************************"
find / -type f -executable -perm -4000 -ls 2>/dev/null | sort -k 3

# Task 1 - to find and display the setgid files
echo "=========== LIST OF FORMATTED FILES ================="
find / -type f -executable -perm -2000 -ls 2>/dev/null | sort -k 3

# Task 2 - to sort the size of file, show in format
echo "+++++++++++ 10 LARGEST FILES SORTED ++++++++++++++++"
find / 2>/dev/null -type f -exec ls -l --block-size=M {} + | sort -hr -k 5 | head -n 10 | awk '{print $5, $3, $9}'

exit
