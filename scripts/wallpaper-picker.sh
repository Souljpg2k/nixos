#!/usr/bin/env bash

dir=~/Pictures/Wallpapers
[[ -d $dir ]] || {
    rofi -e "Folder not found: $dir"
    exit 1
}

thumbnailWidth=400
thumbnailHeight=300
thumbnailSize="${thumbnailWidth}x${thumbnailHeight}"
rounded=28

cache=~/.cache/wallpaper-thumbs/$thumbnailSize-$rounded
mask=$cache/mask.png
mkdir -p "$cache"

if [[ ! -f $mask ]]; then
    magick -size "$thumbnailSize" xc:black \
        -fill white \
        -draw "roundrectangle 0,0,$((thumbnailWidth - 1)),$((thumbnailHeight - 1)),$rounded,$rounded" \
        "$mask"
fi

shopt -s nullglob nocaseglob
imgs=("$dir"/*.{jpg,jpeg,png,gif,webp,bmp,tif,tiff,tga,pnm,pbm,pgm,ppm,avif,jxl,svg,ff})
((${#imgs[@]})) || {
    rofi -e "No images in $dir"
    exit 1
}

theme='
    window { width: 70%; }
    listview { columns: 4; lines: 2; spacing: 16px; }
    element { orientation: vertical; padding: 10px; }
    element-icon { size: 200px; }
    element-text { horizontal-align: 0.5; }
'

choice=$(
    for f in "${imgs[@]}"; do
        n=${f##*/}
        t=$cache/$n.png
        [[ $t -nt $f ]] || magick "$f[0]" -thumbnail "$thumbnailSize"^ -gravity center -extent "$thumbnailSize" \
            "$mask" -compose CopyOpacity -composite "$t"
        [[ -f $t ]] && printf '%s\0icon\x1f%s\n' "$n" "$t"
    done | rofi -dmenu -i -p "> " -theme-str "$theme"
)
[[ -n $choice ]] || exit 0

if ! awww query &>/dev/null; then
    setsid awww-daemon &>/dev/null &
    for _ in {1..25}; do
        awww query &>/dev/null && break
        sleep 0.2
    done
fi

awww img "$dir/$choice" \
    --transition-type random \
    --transition-fps 60 \
    --transition-duration 1