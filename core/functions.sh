#!/data/data/com.termux/files/usr/bin/bash

pause() {
    echo
    read -p "Press Enter to continue..."
}

invalid_option() {
    echo
    echo "Invalid option!"
    pause
}

clear_screen() {
    clear
}
