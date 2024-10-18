#!/bin/bash

while true; do
    echo "Hello, please choose 1 option"
    echo "(1) Type anything and it will show in the terminal"
    echo "(2) Play a random sound"
    echo "(3) Exit"
    read -p "Enter your choice: " option

    if [ "$option" == "1" ]; then
        read -p "Type anything: " text
        echo "$text"

    elif [ "$option" == "2" ]; then
        if [[ "$OSTYPE" == "linux-gnu"* ]]; then
            find /home/saadomar123/Script/sounds -type f -name "*.mp3" | shuf -n 1 | xargs -I{} mpg123 {}
        elif [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
            find "C:\Users\salshekhom\Downloads\Script\sounds" -type f -name "*.mp3" | shuf -n 1 | xargs -I{} powershell -c "Start-Process {} -NoNewWindow"
        else
            echo "Unsupported OS"
        fi

    elif [ "$option" == "3" ]; then
        echo "Goodbye!"
        exit 0

    else
        echo "Invalid option. Please choose 1, 2, or 3."
    fi
done

