#!/data/data/com.termux/files/usr/bin/bash

server_name_menu() {

    clear_screen
    show_banner

    echo "Server Name"
    echo

    while true
do
    read -p "Enter server name: " SERVER_NAME

    if [ -n "$SERVER_NAME" ]; then
        break
    fi

    echo
    echo "Server name cannot be empty."
    echo
done
ram_menu
}
