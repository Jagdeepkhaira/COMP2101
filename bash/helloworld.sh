echo "Setuid Files"
sudo find / -type f -executable -perm -4000 -ls | sort -k 3
