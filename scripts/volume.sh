#!/usr/bin/env bash

sink=@DEFAULT_AUDIO_SINK@
cur=$(wpctl get-volume "$sink" | awk '{printf "%d", $2 * 100 + 0.5}')

choice=$(rofi -dmenu -p "Volume > " -mesg "Current: $cur%" \
    -theme-str '
        configuration { 
            location: 0; 
        } 
        window {  
            width: 240px; 
        } 
        inputbar {  
            margin: 0;  
        } 
    ' </dev/null
)

[[ -n $choice ]] || exit 0
choice=${choice//[[:space:]]/}
num=${choice%\%}

if [[ ! $choice =~ ^[0-9]+%?$ ]]; then
    rofi -e "Use numbers only !" \
        -theme-str '
            configuration { 
                location: 0; 
            } 
            window { 
                width: 190px; 
            }
        '
elif ((10#$num > 100)); then
    rofi -e "Max is 100 !" \
        -theme-str '
            configuration { 
                location: 0; 
            } 
            window { 
                width: 125px; 
            } 
        '
else
    wpctl set-volume "$sink" "$num%" && notify-send "󰎇 set-volume $((10#$num))%"
fi