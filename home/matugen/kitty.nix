{
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
}
