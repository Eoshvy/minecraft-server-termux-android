#!/data/data/com.termux/files/usr/bin/bash


server_summary() {

    while true
    do
        clear_screen
        show_banner

        echo "Server Configuration"
        echo
        echo "Edition : $SERVER_EDITION"
        echo "Software: $SERVER_SOFTWARE"
        echo "Version : $SERVER_VERSION"
        echo "Name    : $SERVER_NAME"
        echo "RAM     : ${SERVER_RAM} MB"
        echo
        echo "[1] Install Server"
        echo "[2] Edit Configuration"
        echo "[0] Back"
        echo

        read -p "Select an option: " choice

        case "$choice" in

            1)
                install_server
                ;;

            2)
                return
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
