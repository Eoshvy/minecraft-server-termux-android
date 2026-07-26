#!/data/data/com.termux/files/usr/bin/bash
paper_get_latest_build() {

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
