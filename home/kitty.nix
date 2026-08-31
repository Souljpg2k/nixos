{
  programs.kitty = {
    enable = true;

    font = {
      name = "JetBrainsMono Nerd Font";
      size = 11.0;
    };

    shellIntegration.enableFishIntegration = true;

    settings = {
      include = "themes/colors.conf";

      shell = "fish";

      cursor_shape = "beam";
      cursor_trail = 1;
      cursor_blink_interval = "0.5";

      confirm_os_window_close = 0;
      copy_on_select = "yes";

      window_padding_width = 15;
      background_opacity = "0.98";
    };
  };
}
