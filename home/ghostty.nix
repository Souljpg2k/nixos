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
      window-padding-x = 20;
      window-padding-y = 20;
      background-opacity = 0.5;
      copy-on-select = true;
      shell-integration = "fish";
    };

    themes.ghostty = {
      background = "201f24";
      foreground = "e6e1e9";
      cursor-color = "cebdff";
      cursor-text = "35275e";
      selection-background = "494458";
      selection-foreground = "e7def8";

      palette = [
        "0=#2b292f"
        "1=#ffb4ab"
        "2=#cebdff"
        "3=#efb8c9"
        "4=#cbc3dc"
        "5=#e8ddff"
        "6=#e7def8"
        "7=#cac4cf"
        "8=#938f99"
        "9=#93000a"
        "10=#4b3e76"
        "11=#633b49"
        "12=#494458"
        "13=#64568f"
        "14=#48454e"
        "15=#e6e1e9"
      ];
    };
  };
}