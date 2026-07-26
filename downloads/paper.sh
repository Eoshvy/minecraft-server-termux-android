#!/data/data/com.termux/files/usr/bin/bash

download_paper() {

    echo
    echo "========== Paper Downloader =========="
    echo

    echo "Minecraft Version : $SERVER_VERSION"
    echo "Server Name       : $SERVER_NAME"
    paper_download_server
    pause

}
paper_download_server() {

    echo
    echo "Connecting to Paper API..."

    paper_check_version
paper_get_build_info

echo
echo "Downloading Paper..."

curl -L \
    "$DOWNLOAD_URL" \
    -o "servers/$SERVER_NAME/server.jar"
echo
echo "Download completed!"
echo
echo "Saved to:"
echo "servers/$SERVER_NAME/server.jar"
pause
}
