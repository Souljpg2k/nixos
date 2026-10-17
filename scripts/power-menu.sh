#!/usr/bin/env bash

choice=$(
    printf '󰐥\n󰜉\n󰤄\n󰍃\n󰌾\n' | rofi -dmenu -format i -p "" \
        -theme-str '
        configuration { 
            location: 0;
        } 
        window { 
            width: 500px; 
        } 
        inputbar { 
            enabled: false; 
        } 
        listview { 
            columns: 5; 
            lines: 1; 
        } 
        element { 
            children: [element-text]; 
            padding: 10px 0; 
        } 
        element-text { 
            horizontal-align: 0.5; 
            vertical-align: 0.5; 
            font: "JetBrainsMono Nerd Font 40"; 
        }
    '
)

has() { command -v "$1" >/dev/null; }

case $choice in
0)
    if has hyprshutdown; then
        hyprshutdown -t 'Shutting down...' --post-cmd 'shutdown -P 0'
    else
        systemctl poweroff
    fi
    ;;
1)
    if has hyprshutdown; then
        hyprshutdown -t 'Restarting...' --post-cmd 'reboot'
    else
        systemctl reboot
    fi
    ;;
2) systemctl suspend ;;
3)
    if has hyprshutdown; then
        hyprshutdown
    else
        hyprctl dispatch 'hl.dsp.exit()'
    fi
    ;;
4)
    if has hyprlock; then
        ~/nixos/scripts/lock.sh
    else
        loginctl lock-session
    fi
    ;;
esac