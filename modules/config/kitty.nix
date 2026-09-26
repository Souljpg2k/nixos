{
  programs.kitty = {
    enable = true;

    font = {
      name = "JetBrainsMono Nerd Font";
      size = 11.0;
    };

    shellIntegration.enableFishIntegration = true;

    settings = {
      shell = "fish";
      cursor_shape = "beam";
      cursor_trail = 1;
      cursor_blink_interval = "0.5";
      confirm_os_window_close = 0;
      copy_on_select = "yes";
      window_padding_width = 15;
      background_opacity = "0.95";

      background = "#1b1a22";
      foreground = "#d4d2ef";
      selection_foreground = "#1b1a22";
      selection_background = "#9b8cff";
      url_color = "#9b8cff";
      color0 = "#555161";
      color8 = "#6a6576";
      color1 = "#ff9bd0";
      color9 = "#ffc0e2";
      color2 = "#8af5f1";
      color10 = "#a5fff9";
      color3 = "#f0f28a";
      color11 = "#f7f8a8";
      color4 = "#c4c0ff";
      color12 = "#d9d5ff";
      color5 = "#a99cff";
      color13 = "#c2baff";
      color6 = "#a9d8ff";
      color14 = "#c7e7ff";
      color7 = "#dfdcf5";
      color15 = "#f2efff";
    };
  };
}
