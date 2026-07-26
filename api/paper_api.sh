#!/data/data/com.termux/files/usr/bin/bash
paper_get_latest_build() {

    echo
    echo "Connecting to Paper API..."
    echo

    curl \
        -s \
        -H "User-Agent: $PAPER_USER_AGENT" \
        "https://fill.papermc.io/v3/projects/paper"

    echo

}
