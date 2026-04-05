#!/bin/bash

run_command() {
    if ! "$@"; then
        echo "Error: Command failed: $*"
        exit 1
    fi
}

run_command rsync -avz --chmod=D755,F644 \
"/home/trips/static-website-server/devops/" \
"devops:/var/www/html/"

