#!/bin/bash

remove_wp_content() {
    local dir_path="wp-app/wp-content/$1"
    
    if [ -d "$dir_path" ]; then
        echo "Removing all directories within $dir_path (keeping .php and other files)..."
        find "$dir_path" -mindepth 1 -maxdepth 1 -type d -exec rm -rf {} +
    else
        echo "Directory does not exist: $dir_path"
    fi

    echo ""
}

if [ "$1" = "plugins" ]; then
    remove_wp_content plugins
elif [ "$1" = "themes" ]; then
    remove_wp_content themes
else
    echo "Invalid argument provided to 'clear-wp-content.sh'. Should be either 'plugins' or 'themes'."
fi