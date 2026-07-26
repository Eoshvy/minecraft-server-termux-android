#!/data/data/com.termux/files/usr/bin/bash

create_server_menu() {

while true
do
    clear_screen
    show_banner

    echo "Create Server Wizard"
    echo
    echo "Choose Minecraft Edition"
    echo
    echo "[1] Java Edition"
    echo "[2] Bedrock Edition"
    echo
    echo "[0] Back"
    echo

    read -p "Select an option: " choice

    case "$choice" in

        1)  SERVER_EDITION="java"
            java_server_menu
            ;;

        2)  SERVER_EDITION="bedrock"
            bedrock_server_menu
            ;;

        0)
            return
            ;;

        *)
            invalid_option
            ;;

    esac

done

}
