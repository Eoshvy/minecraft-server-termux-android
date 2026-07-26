#!/data/data/com.termux/files/usr/bin/bash
paper_check_version() {

    echo
    echo "Connecting to Paper API..."
    echo

    response=$(curl \
    -s \
    -H "User-Agent: $PAPER_USER_AGENT" \
    "https://fill.papermc.io/v3/projects/paper")

VERSION_GROUP=$(echo "$SERVER_VERSION" | cut -d'.' -f1,2)

if echo "$response" | jq -e --arg group "$VERSION_GROUP" --arg version "$SERVER_VERSION" '
    .versions[$group] | index($version)
' >/dev/null; then
    echo "✓ Version $SERVER_VERSION is supported."
else
    echo "✗ Version $SERVER_VERSION is not supported."
fi
}
paper_get_build_info() {

    VERSION_GROUP=$(echo "$SERVER_VERSION" | cut -d'.' -f1,2)

    response=$(curl \
        -s \
        -H "User-Agent: $PAPER_USER_AGENT" \
        "https://fill.papermc.io/v3/projects/paper/versions/$VERSION_GROUP/builds")

    LATEST_BUILD=$(echo "$response" | jq -r '.[0].id')
DOWNLOAD_NAME=$(echo "$response" | jq -r '.[0].downloads["server:default"].name')
DOWNLOAD_URL=$(echo "$response" | jq -r '.[0].downloads["server:default"].url')

echo
echo "Latest Build : $LATEST_BUILD"
echo "File Name    : $DOWNLOAD_NAME"
echo "Download URL :"
echo "$DOWNLOAD_URL"
}
