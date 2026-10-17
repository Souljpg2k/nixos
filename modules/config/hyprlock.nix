{
  programs.hyprlock = {
    enable = true;

    settings = {
      general = {
        hide_cursor = true;
      };
      
      background = [
        {
          monitor = "";
          path = "~/.cache/hyprlock-wallpaper";
          brightness = 0.5;
        }
      ];

      input-field = [
        {
          monitor = "";
          size = "180, 35";
          outline_thickness = 2;
          dots_size = 0.4;
          dots_spacing = 0.4;
          dots_center = true;
          outer_color = "rgba(242, 242, 247, 0)";
          inner_color = "rgb(28, 28, 30)";
          font_color = "rgba(242, 242, 247, 0.5)";
          fade_on_empty = false;
          placeholder_text = "<i>Enter password</i>";
          shadow_passes = 1;
          shadow_size = 2;
          shadow_boost = "1.0";
          position = "0, 30";
          halign = "center";
          valign = "bottom";
        }
      ];

      label = [
        {
          monitor = "";
          text = "cmd[update:60000] LC_TIME=en_US.UTF-8 date '+%A, %B %d'";
          color = "rgb(242, 242, 247)";
          font_size = 16;
          font_family = "Poppins";
          position = "0, -60";
          shadow_passes = 1;
          shadow_size = 3;
          shadow_boost = "0.8";
          halign = "center";
          valign = "top";
        }
        {
          monitor = "";
          text = "$TIME";
          color = "rgb(242, 242, 247)";
          font_size = 90;
          font_family = "Poppins";
          shadow_passes = 1;
          shadow_size = 3;
          shadow_boost = "0.8";
          position = "0, -80";
          halign = "center";
          valign = "top";
        }
        {
          monitor = "";
          text = "$USER";
          color = "rgb(242, 242, 247)";
          font_size = 9;
          font_family = "Poppins";
          shadow_passes = 1;
          shadow_size = 3;
          shadow_boost = "0.8";
          position = "-150, 38";
          halign = "center";
          valign = "bottom";
        }
        {
          monitor = "";
          text = "$LAYOUT";
          color = "rgb(242, 242, 247)";
          font_size = 9;
          font_family = "Poppins";
          shadow_passes = 1;
          shadow_size = 3;
          shadow_boost = "0.8";
          position = "150, 38";
          halign = "center";
          valign = "bottom";
        }
      ];

      shape = [
        {
          monitor = "";
          size = "100, 35";
          color = "rgb(28, 28, 30)";
          rounding = -1;
          shadow_passes = 1;
          shadow_size = 3;
          shadow_boost = "0.8";
          position = "-150, 30";
          halign = "center";
          valign = "bottom";
        }
        {
          monitor = "";
          size = "100, 35";
          color = "rgb(28, 28, 30)";
          rounding = -1;
          shadow_passes = 1;
          shadow_size = 3;
          shadow_boost = "0.8";
          position = "150, 30";
          halign = "center";
          valign = "bottom";
        }
      ];
    };
  };
}