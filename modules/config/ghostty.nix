{
  programs.ghostty = {
    enable = true;

    settings = {
      command = "fish";
      shell-integration = "fish";
      shell-integration-features = "no-cursor";
      theme = "TokyoNight";
      font-family = "JetBrainsMono Nerd Font";
      font-size = 12;
      bell-features = "no-title";
      cursor-style = "block";
      cursor-style-blink = true;
      confirm-close-surface = false;
      window-padding-x = 20;
      window-padding-y = 20;
      background-opacity = 0.2;
      copy-on-select = true;
    };
  };
}
