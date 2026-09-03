{
  home.file.".config/matugen/templates/btop.theme".text = ''
    # Main background
    theme[main_bg]=""

    # Main text color
    theme[main_fg]="{{colors.on_surface.default.hex}}"

    # Title color for boxes
    theme[title]="{{colors.primary.default.hex}}"

    # Highlight color for keyboard shortcuts
    theme[hi_fg]="{{colors.secondary.default.hex}}"

    # Background color of selected item in processes box
    theme[selected_bg]="{{colors.primary.default.hex}}"

    # Foreground color of selected item in processes box
    theme[selected_fg]="{{colors.on_primary.default.hex}}"

    # Color of inactive/disabled text
    theme[inactive_fg]="{{colors.on_surface_variant.default.hex}}"

    # Misc colors for processes box
    theme[proc_misc]="{{colors.tertiary.default.hex}}"

    # CPU box outline color
    theme[cpu_box]="{{colors.outline.default.hex}}"

    # Memory/disks box outline color
    theme[mem_box]="{{colors.outline.default.hex}}"

    # Net up/down box outline color
    theme[net_box]="{{colors.outline.default.hex}}"

    # Processes box outline color
    theme[proc_box]="{{colors.outline.default.hex}}"

    # Box divider line
    theme[div_line]="{{colors.outline_variant.default.hex}}"

    # Temperature graph
    theme[temp_start]="{{colors.secondary.default.hex}}"
    theme[temp_mid]="{{colors.primary.default.hex}}"
    theme[temp_end]="{{colors.error.default.hex}}"

    # CPU graph
    theme[cpu_start]="{{colors.secondary.default.hex}}"
    theme[cpu_mid]="{{colors.primary.default.hex}}"
    theme[cpu_end]="{{colors.error.default.hex}}"

    # Mem/Disk free meter
    theme[free_start]="{{colors.secondary.default.hex}}"
    theme[free_mid]=""
    theme[free_end]="{{colors.secondary_container.default.hex}}"

    # Mem/Disk cached meter
    theme[cached_start]="{{colors.tertiary.default.hex}}"
    theme[cached_mid]=""
    theme[cached_end]="{{colors.tertiary_container.default.hex}}"

    # Mem/Disk available meter
    theme[available_start]="{{colors.primary.default.hex}}"
    theme[available_mid]=""
    theme[available_end]="{{colors.primary_container.default.hex}}"

    # Mem/Disk used meter
    theme[used_start]="{{colors.error.default.hex}}"
    theme[used_mid]=""
    theme[used_end]="{{colors.error_container.default.hex}}"

    # Download graph
    theme[download_start]="{{colors.secondary.default.hex}}"
    theme[download_mid]="{{colors.primary.default.hex}}"
    theme[download_end]="{{colors.tertiary.default.hex}}"

    # Upload graph
    theme[upload_start]="{{colors.secondary.default.hex}}"
    theme[upload_mid]="{{colors.primary.default.hex}}"
    theme[upload_end]="{{colors.tertiary.default.hex}}"
  '';
}
