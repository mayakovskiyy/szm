#!/bin/bash

URLS=("https://github.com/" "https://youtube.com/" "https://x.com/" "https://store.steampowered.com/" "https://mail.google.com/" "https://osu.ppy.sh/" "https://linkedin.com/")

read -r -p "" media

case "$media" in
    "twt")
        firefox ${URLS[2]}
        ;;
    "yt")
        firefox ${URLS[1]}
        ;;
    "gh")
        firefox ${URLS[0]}
        ;;
    "st")
        firefox ${URLS[3]}
        ;;
    "gml")
        firefox ${URLS[4]}
        ;;
    "osu")
        firefox ${URLS[5]}
        ;;
    "ld")
        firefox ${URLS[6]}
        ;;
    "help")
        echo "[command] / [media name] - [url]"
        echo ""
        echo "twt/x - ${URLS[2]}"
        echo "yt/youtube - ${URLS[1]}"
        echo "gh/github - ${URLS[0]}"
        echo "st/steam - ${URLS[3]}"
        echo "gml/gmail - ${URLS[4]}"
        echo "osu/osu! - ${URLS[5]}"
        echo "ld/linkedin - ${URLS[6]}"
        ;;
    *)
        echo "invalid media"
        exit 1
        ;;
esac

exit
