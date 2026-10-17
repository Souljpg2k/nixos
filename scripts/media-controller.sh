#!/usr/bin/env bash

status=$(playerctl status 2>/dev/null) || {
    rofi -e "No player running !" \
        -theme-str '
            configuration { 
                location: 0;
            } 
            window { 
                width: 190px; 
            }
        '
    exit 1
}

shuffle=$(playerctl shuffle 2>/dev/null)
loop=$(playerctl loop 2>/dev/null)

[[ $status == Playing ]] && pp=Pause || pp=Play

theme='
configuration {
    location: 0;
}
window {
    width: 50%;
}
inputbar {
    enabled: false;
}
listview {
    columns: 5;
    lines: 1;
}
element {
    orientation: vertical;
}
element-text {
    horizontal-align: 0.5;
    padding: 0 0 25px 0;
}
'

choice=$(printf '%s\n' "Shuffle: ${shuffle:-n/a}" Previous "$pp" Next "Loop: ${loop:-n/a}" |
    rofi -dmenu -no-custom -selected-row 2 -p "♪ " -theme-str "$theme")

case $choice in
Play | Pause) playerctl play-pause ;;
Previous) playerctl previous ;;
Next) playerctl next ;;
Shuffle*)
    if [[ -n $shuffle ]]; then
        playerctl shuffle Toggle
    else
        rofi -e "Shuffle not supported"
    fi
    ;;
Loop*)
    if [[ -z $loop ]]; then
        rofi -e "Loop not supported"
    else
        case $loop in
        None) playerctl loop Track ;;
        Track) playerctl loop Playlist ;;
        *) playerctl loop None ;;
        esac
    fi
    ;;
esac