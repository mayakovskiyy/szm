#!/bin/bash

file="szm.sh"
os="$(uname -s)"
if [[ "$os" == "Linux" ]]; then
    chmod +x file
    echo "installing szm.sh for gnu/linux"
    destination="~/.local/bin/"
    mv -n -- "$file" "$destination"
    echo "succsesfully installed!"
elif [[ "$os" == "Darwin" ]]; then
    chmod +x file
    echo "installing szm.sh for macos"
    destination="/usr/local/bin/"
    mv -n -- "$file" "$destination"
    echo "succsesfully installed!"
else
    echo "unknown os"
fi

exit 0