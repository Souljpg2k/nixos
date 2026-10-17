{
  programs.kitty = {
    enable = true;

    font = {
      name = "JetBrainsMono Nerd Font";
      size = 11.0;
    };

    shellIntegration.enableFishIntegration = true;
    shellIntegration.mode = "no-cursor";

    settings = {
      shell = "fish";
      cursor_shape = "block";
      cursor_trail = 1;
      cursor_blink_interval = "0.5";
      confirm_os_window_close = 0;
      copy_on_select = "yes";
      mouse_hide_wait = 1;
      window_padding_width = 15;
      background_opacity = "0.95";
      dynamic_background_opacity = true;

      background = "#1c1c1e";
      foreground = "#f2f2f7";
      selection_background = "#8e8e93";
      selection_foreground = "#f2f2f7";
      cursor = "#e5e5ea";
      cursor_text_color = "#1c1c1e";
      url_color = "#3bddec";

      color0 = "#1c1c1e";
      color8 = "#636366";
      color1 = "#ff375f";
      color9 = "#ff8ac4";
      color2 = "#00d2e0";
      color10 = "#54dfcb";
      color3 = "#ffd600";
      color11 = "#fedf43";
      color4 = "#1e6ef4";
      color12 = "#0091ff";
      color5 = "#6d7cff";
      color13 = "#a7aaff";
      color6 = "#3cd3fe";
      color14 = "#6dd9ff";
      color7 = "#e5e5ea";
      color15 = "#f2f2f7";
    };
  };
}