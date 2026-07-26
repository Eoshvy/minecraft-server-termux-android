#!/data/data/com.termux/files/usr/bin/bash

version_menu() {

    clear_screen
    show_banner

    echo "Choose Minecraft Version"
    echo
    echo "[1] 1.21.11"
    echo "[2] 1.21.10"
    echo
    echo "[0] Back"
    echo

    read -p "Select an option: " choice
case "$choice" in

    1)
    SERVER_VERSION="1.21.11"
    server_name_menu
    ;;

2)
    SERVER_VERSION="1.21.10"
    server_name_menu
    ;;

    0)
        return
        ;;

    *)
        invalid_option
        return
        ;;

esac

}
