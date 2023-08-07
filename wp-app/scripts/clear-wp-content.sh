#!/bin/bash

remove_wp_content() {
    local dir_path="wp-content/$1"
    
    if [ -d "$dir_path" ]; then
        echo "Removing all directories within $dir_path except .php files..."
        find "$dir_path" -mindepth 1 -maxdepth 1 -type d -exec sh -c 'rm -rf "$1"/*' _ {} \;
    else
        echo "Directory does not exist: $dir_path"
    fi
}

if [ "$1" = "plugins" ]; then
    remove_wp_content plugins
elif [ "$1" = "themes" ]; then
    remove_wp_content themes
else
    echo "Invalid argument provided to 'clear-wp-content.sh'. Should be either 'plugins' or 'themes'."
fi
