{
  programs.ghostty = {
    enable = true;

    settings = {
      theme = "ghostty";
      font-family = "SF Mono";
      font-size = 12;
      bell-features = "no-title";
      cursor-style = "bar";
      cursor-style-blink = true;
      confirm-close-surface = false;
      window-padding-x = 10;
      window-padding-y = 10;
      background-opacity = 0.98;
      copy-on-select = true;
      shell-integration = "fish";
    };
  };
}