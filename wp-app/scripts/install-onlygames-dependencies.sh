#!/bin/bash

set -e  # Exit on any error
set -o pipefail  # Catch errors in piped commands

install_onlygames_dependencies() {
    type=$1

    # source_dir
    # took from composer.json extra.installer-paths
    # PLUGIN_PATH="vendor/onlygames-latam/onlygames-$type"
    PLUGIN_PATH="wp-app/wp-content/plugins/onlygames-$type"    

    # Validate existence of the plugin path
    if [ ! -d "$PLUGIN_PATH" ]; then
        echo "❌ ERROR: Missing directory '$PLUGIN_PATH'. Have you run 'composer install'?"
        exit 1
    fi

    # Validate composer.json presence
    if [ ! -f "$PLUGIN_PATH/composer.json" ]; then
        echo "❌ ERROR: composer.json not found in '$PLUGIN_PATH'."
        exit 1
    fi

    # Install plugin dependencies
    echo "🔄 Installing onlygames-$type dependencies..."
    pushd "$PLUGIN_PATH" > /dev/null || {
        echo "❌ Failed to enter directory $PLUGIN_PATH"
        exit 1
    }

    composer install --no-dev || {
        echo "❌ Composer install failed in $PLUGIN_PATH"
        popd > /dev/null
        exit 1
    }

    popd > /dev/null
    echo "✅ onlygames-$type dependencies installed successfully!"
}

# Entry point
if [ "$1" = "plugins" ] || [ "$1" = "themes" ]; then
    install_onlygames_dependencies "$1"
else
    echo "❌ Invalid argument. Usage: ./install-onlygames-dependencies.sh [plugins|themes]"
    exit 1
fi