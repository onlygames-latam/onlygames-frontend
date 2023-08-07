#!/bin/bash

remove_onlygames_content() {
    local dir_path="wp-content/$1/onlygames-plugins"

    if [ -d "$dir_path" ]; then
        echo "✅ Removing directory: $dir_path"
        rm -rf "$dir_path"
    else
        echo "⚠️ Directory does not exist: $dir_path"
    fi
}

if [ "$1" = "plugins" ]; then
    remove_onlygames_content plugins
elif [ "$1" = "themes" ]; then
    remove_onlygames_content themes
else
    echo "❌ Invalid argument provided to 'clear-onlygames-content.sh'. Should be either 'plugins' or 'themes'."
fi
