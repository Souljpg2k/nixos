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
      background_opacity = "0.5";

      background = "#201f24";
      foreground = "#e6e1e9";
      selection_foreground = "#141318";
      selection_background = "#e6e1e9";
      url_color = "#cbc3dc";

      color0 = "#2b292f";
      color8 = "#938f99";
      color1 = "#efb8c9";
      color9 = "#ffb4ab";
      color2 = "#cebdff";
      color10 = "#e7def8";
      color3 = "#cbc3dc";
      color11 = "#e7def8";
      color4 = "#cebdff";
      color12 = "#e6e1e9";
      color5 = "#cbc3dc";
      color13 = "#cbc3dc";
      color6 = "#e7def8";
      color14 = "#efb8c9";
      color7 = "#cac4cf";
      color15 = "#e6e1e9";
    };
  };
}