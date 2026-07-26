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

generate_eula
echo "✓ Generated eula.txt"

generate_start_script
echo "✓ Generated start.sh"

pause

}
generate_eula() {

    cat > "servers/$SERVER_NAME/eula.txt" << EOF
eula=true
EOF

}
generate_start_script() {

cat > "servers/$SERVER_NAME/start.sh" << EOF
#!/data/data/com.termux/files/usr/bin/bash

cd "\$(dirname "\$0")"

java -Xms${SERVER_RAM}M -Xmx${SERVER_RAM}M -jar server.jar nogui
EOF

chmod +x "servers/$SERVER_NAME/start.sh"

}
