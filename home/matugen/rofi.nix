{
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
}
