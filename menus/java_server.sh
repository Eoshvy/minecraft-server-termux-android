#!/data/data/com.termux/files/usr/bin/bash

java_server_menu() {

while true
do
    clear_screen
    show_banner

    echo "Java Edition"
    echo
    echo "Choose Server Software"
    echo
    echo "[1] Vanilla"
    echo "[2] Paper"
    echo "[3] Fabric"
    echo "[4] Purpur"
    echo
    echo "[0] Back"
    echo

    read -p "Select an option: " choice

    case "$choice" in

        1)SERVER_SOFTWARE="vanilla"
            echo
            echo "Vanilla installer is coming soon."
            pause
            ;;

        2)
    SERVER_SOFTWARE="paper"
    version_menu
    ;;

        3)  SERVER_SOFTWARE="fabric"
            echo
            echo "Fabric installer is coming soon."
            pause
            ;;

        4)  SERVER_SOFTWARE="purpur"
            echo
            echo "Purpur installer is coming soon."
            pause
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
