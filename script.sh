#!/bin/bash

# Start a loop to keep prompting until a valid option is selected
while true; do
    echo "Hello, please choose 1 option"
    echo "(1) Type anything and it will show in the terminal"
    echo "(2) Play a random sound"
    echo "(3) Exit"
    read -p "Enter your choice: " option

    # Handle the user's choice using if statements
    if [ "$option" == "1" ]; then
        read -p "Type anything: " text
        echo "$text"
        
    elif [ "$option" == "2" ]; then
        # Play a random sound from the specified folder
        find /home/saadomar123/Script/sounds -type f -name "*.mp3" | shuf -n 1 | xargs -I{} mpg123 {}

    elif [ "$option" == "3" ]; then
        echo "Goodbye!"
        exit 0

    else
        echo "Invalid option. Please choose 1, 2, or 3."
    fi
done

