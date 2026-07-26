#!/data/data/com.termux/files/usr/bin/bash

ram_menu() {

    clear_screen
    show_banner

    echo "Select Server RAM"
    echo
    echo "[1] 1024 MB (1 GB)"
    echo "[2] 2048 MB (2 GB)"
    echo "[3] 4096 MB (4 GB)"
    echo
    echo "[0] Back"
    echo

    read -p "Select an option: " choice
    case "$choice" in

    1)
        SERVER_RAM="1024"
        server_summary
        ;;

    2)
        SERVER_RAM="2048"
        server_summary
        ;;

    3)
        SERVER_RAM="4096"
        server_summary
        ;;

    0)
        return
        ;;

    *)
        invalid_option
        ;;

esac
}
