#!/data/data/com.termux/files/usr/bin/bash

install_server() {

    clear_screen
    show_banner

    echo "Installing server..."
echo

mkdir -p servers
mkdir -p "servers/$SERVER_NAME"
cat > "servers/$SERVER_NAME/server.conf" << EOF
SERVER_NAME=$SERVER_NAME
SERVER_EDITION=$SERVER_EDITION
SERVER_SOFTWARE=$SERVER_SOFTWARE
SERVER_VERSION=$SERVER_VERSION
SERVER_RAM=$SERVER_RAM
EOF
echo "✓ Created servers directory."
echo "✓ Created server: $SERVER_NAME"
echo "✓ Saved server configuration."
if [ "$SERVER_SOFTWARE" = "paper" ]; then
    download_paper
fi
pause

}
