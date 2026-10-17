#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/Pictures/Wallpapers"
CACHE="$HOME/.cache/hyprlock-wallpaper"

mapfile -d '' images < <(
    find "$WALLPAPER_DIR" -maxdepth 1 -type f \
        \( -iname '*.png' -o -iname '*.jpg' \
        -o -iname '*.jpeg' -o -iname '*.webp' \) \
        -print0
)

if ((${#images[@]} == 0)); then
    echo "No wallpapers found in $WALLPAPER_DIR" >&2
    notify-send "No wallpapers found" "Directory: $WALLPAPER_DIR"
    exit 1
fi

image="${images[RANDOM % ${#images[@]}]}"

ln -sfn "$image" "$CACHE"
hyprlock "$@"