#!/bin/bash

unpack_onlygames() {
    source_dir="wp-content/$1/onlygames-$1/src/*"
    target_dir="wp-app/wp-content/$1"

    echo "⌛️ Clearing onlygames-$1 directory..."
    cp -r $source_dir $target_dir
    rm -rf "$target_dir/onlygames-$1"
    echo "✅ Succesfuly unpacked contents of onlygames-$1/"
}

if [ "$1" = "plugins" ]; then
    unpack_onlygames plugins
elif [ "$1" = "themes" ]; then
    unpack_onlygames themes
else
    echo "❌ Invalid argument provided to 'unpack-onlygames.sh'. Should be either 'plugins' or 'themes'."
fi
