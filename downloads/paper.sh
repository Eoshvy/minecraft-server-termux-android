#!/data/data/com.termux/files/usr/bin/bash

download_paper() {

    echo
    echo "========== Paper Downloader =========="
    echo

    echo "Minecraft Version : $SERVER_VERSION"
    echo "Server Name       : $SERVER_NAME"
    paper_get_latest_build
    pause

}
