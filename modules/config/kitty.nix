{
  programs.kitty = {
    enable = true;

    font = {
      name = "JetBrainsMono Nerd Font";
      size = 11.0;
    };

    shellIntegration.enableFishIntegration = true;

    settings = {
      include = "~/.local/state/caelestia/theme/kitty.conf";
      shell = "fish";
      cursor_shape = "beam";
      cursor_trail = 1;
      cursor_blink_interval = "0.5";
      confirm_os_window_close = 0;
      copy_on_select = "yes";
      window_padding_width = 15;
      background_opacity = "0.6";
    };
  };

  home.file.".config/caelestia/templates/kitty.conf".text = ''
    foreground #{{ onSurface.hex }}
    background #{{ surface.hex }}
    cursor #{{ secondary.hex }}
    selection_background #{{ secondary.hex }}

    color0  #{{ term0.hex }}
    color1  #{{ term1.hex }}
    color2  #{{ term2.hex }}
    color3  #{{ term3.hex }}
    color4  #{{ term4.hex }}
    color5  #{{ term5.hex }}
    color6  #{{ term6.hex }}
    color7  #{{ term7.hex }}
    color8  #{{ term8.hex }}
    color9  #{{ term9.hex }}
    color10 #{{ term10.hex }}
    color11 #{{ term11.hex }}
    color12 #{{ term12.hex }}
    color13 #{{ term13.hex }}
    color14 #{{ term14.hex }}
    color15 #{{ term15.hex }}
  '';
}