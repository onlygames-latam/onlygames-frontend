#!/bin/bash

unpack_onlygames() {
    type=$1
    source_dir="wp-app/wp-content/$type/onlygames-$type/src"
    target_dir="wp-app/wp-content/$type"

    echo "📦 Merging contents of $source_dir into $target_dir..."    
    cp -r "$source_dir/"* "$target_dir"

    echo "✅ Succesfuly unpacked contents from $source_dir into $target_dir"

    echo "Removing $target_dir/onlygames-$type directory..."
    rm -rf "$target_dir/onlygames-$1"
    echo "✅ Removal complete!"

    echo ""
}

if [ "$1" = "plugins" ]; then
    unpack_onlygames plugins
elif [ "$1" = "themes" ]; then
    unpack_onlygames themes
else
    echo "❌ Invalid argument provided to 'unpack-onlygames.sh'. Should be either 'plugins' or 'themes'."
fi
