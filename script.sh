#!/bin/bash
while true; do
echo "Hello, please choose 1 option"
echo "(1) Type anything and it will show in the terminal"
echo "(2) Play a random sound"
echo "(3) Exit"
read -p "Enter your choice: " option
 
if [ "$option" == "1" ]; then
read -p "Type anything: " text
echo $text
exit 0

elif $option == 2 then
find /home/saadomar123/Script/sounds -type f | shuf -n 1 | xargs -I{} mpg123 {}
exit 0

elif $option == 3 then

	echo "Goodbye!"
	exit
else
     echo "Invalid option. Please run the script again and choose 1, 2, or 3."
     fi
done
