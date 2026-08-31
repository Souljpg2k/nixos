{ pkgs, ... }:

{
  home.packages = with pkgs; [
    matugen
  ];

  home.file.".config/matugen/config.toml".text = ''
    [config]

    [templates.quickshell]
    input_path = '~/.config/matugen/templates/quickshell.qml'
    output_path = '~/.config/quickshell/Appearance/Appearance.qml'

    [templates.btop]
    input_path = '~/.config/matugen/templates/btop.theme'
    output_path = '~/.config/btop/themes/matugen.theme'
    post_hook = 'pkill -USR2 btop || true'

    [templates.cava]
    input_path = '~/.config/matugen/templates/cava-colors.ini'
    output_path = '~/.config/cava/themes/matugen'

    [templates.kitty]
    input_path = '~/.config/matugen/templates/kitty-colors.conf'
    output_path = '~/.config/kitty/themes/colors.conf'
    post_hook = 'pkill -SIGUSR1 kitty'

    [templates.ghostty]
    input_path = '~/.config/matugen/templates/ghostty'
    output_path = '~/.config/ghostty/themes/ghostty'
    post_hook = 'pkill -SIGUSR2 ghostty'

    [templates.rofi]
    input_path = '~/.config/matugen/templates/rofi-colors.rasi'
    output_path = '~/.config/rofi/colors.rasi'

    [templates.mako]
    input_path = '~/.config/matugen/templates/mako-colors'
    output_path = '~/.config/mako/colors'
    post_hook = 'makoctl reload'
  '';

  home.file.".config/matugen/templates/mako-colors".text = ''
    background-color={{colors.background.default.hex}}
    border-color={{colors.surface_container_highest.default.hex}}
    text-color={{colors.on_background.default.hex}}
  '';

  home.file.".config/matugen/templates/cava-colors.ini".text = ''
    [color]
    gradient = 1
    gradient_color_1 = '{{colors.primary_fixed.default.hex}}'
    gradient_color_2 = '{{colors.background.default.hex}}'
  '';

  home.file.".config/matugen/templates/quickshell.qml".text = ''
    pragma Singleton

    import Quickshell
    import QtQuick

    Singleton {
        readonly property int base: 12
        readonly property int radius: 18
        <* for name, value in colors *>
        readonly property color {{name}}: "{{value.default.hex}}"
        <* endfor *>
    }
  '';
  home.file.".config/matugen/templates/rofi-colors.rasi".text = ''
    * {
        background: {{colors.on_secondary.default.hex}};
        border-color: {{colors.inverse_on_surface.default.hex}};
        selected: {{colors.surface_container_high.default.hex}};
        primary: {{colors.on_background.default.hex}};
        text-selected: {{colors.on_background.default.hex}};
        text-element: {{colors.outline.default.hex}};
        error-message: {{colors.error.default.hex}};
    }
  '';

  home.file.".config/matugen/templates/kitty-colors.conf".text = ''
    # Cursors
    cursor {{ colors.primary.default.hex }}
    cursor_text_color {{ colors.on_primary.default.hex }}

    # Backgrounds
    background {{ colors.on_secondary.default.hex }}
    foreground {{ colors.on_surface.default.hex }}
    selection_foreground {{ colors.background.default.hex }}
    selection_background {{ colors.on_surface.default.hex }}
    url_color {{ colors.secondary.default.hex }}

    # Black
    color0 {{ colors.surface_container_high.default.hex }}
    color8 {{ colors.outline.default.hex }}

    # Red
    color1 {{ colors.tertiary.default.hex }}
    color9 {{ colors.error.default.hex }}

    # Green
    color2 {{ colors.primary.default.hex }}
    color10 {{ colors.primary_fixed.default.hex }}

    # Yellow
    color3 {{ colors.secondary.default.hex }}
    color11 {{ colors.on_secondary_container.default.hex }}

    # Blue
    color4 {{ colors.surface_tint.default.hex }}
    color12 {{ colors.on_surface.default.hex }}

    # Magenta
    color5 {{ colors.secondary.default.hex }}
    color13 {{ colors.secondary.default.hex }}

    # Cyan
    color6 {{ colors.primary_fixed.default.hex }}
    color14 {{ colors.tertiary.default.hex }}

    # White
    color7 {{ colors.on_surface_variant.default.hex }}
    color15 {{ colors.on_surface.default.hex }}
  '';

  home.file.".config/matugen/templates/ghostty".text = ''
    background = {{colors.on_secondary.default.hex}}
    foreground = {{colors.on_surface.default.hex}}
    cursor-color = {{colors.primary.default.hex}}
    cursor-text = {{colors.on_primary.default.hex}}
    selection-background = {{colors.secondary_container.default.hex}}
    selection-foreground = {{colors.on_secondary_container.default.hex}}

    palette = 0={{colors.surface_container_high.default.hex}}
    palette = 1={{colors.error.default.hex}}
    palette = 2={{colors.primary.default.hex}}
    palette = 3={{colors.tertiary.default.hex}}
    palette = 4={{colors.secondary.default.hex}}
    palette = 5={{colors.primary_fixed.default.hex}}
    palette = 6={{colors.secondary_fixed.default.hex}}
    palette = 7={{colors.on_surface_variant.default.hex}}
    palette = 8={{colors.outline.default.hex}}
    palette = 9={{colors.error_container.default.hex}}
    palette = 10={{colors.primary_container.default.hex}}
    palette = 11={{colors.tertiary_container.default.hex}}
    palette = 12={{colors.secondary_container.default.hex}}
    palette = 13={{colors.inverse_primary.default.hex}}
    palette = 14={{colors.outline_variant.default.hex}}
    palette = 15={{colors.on_surface.default.hex}}
  '';

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
