#!/bin/bash
figlet Tool-Trunk

echo 
echo 
echo "Created By:"
echo "-----------------------"
echo "Bilawal Ali,22BSCYS002 "
echo "Madiha Sehar,22BSCYS022" 
echo
echo "Example: muet.edu.pk"

read  -p "Enter URL:  " url

echo -e "1 Nmap \n2 Subdomain \n3 Nikto \n4 Waf00f \n5 Sqlmap" 
read -p "Enter:  " n

if [ "$n" -eq 1 ]; then 
	nmap  $url

elif [ "$n" -eq 2 ]; then
	subfinder -d $url -v
 
elif [ "$n" -eq 3 ]; then
	nikto -h $url
elif [ "$n" -eq 4 ];then
	wafw00f $url
elif [ "$n" -eq 5 ]; then
	sqlmap "http://$url" --batch  --crawl 2

else  
	echo "Envalid number"
fi
