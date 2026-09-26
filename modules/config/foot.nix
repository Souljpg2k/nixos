{
  programs.foot = {
    enable = true;

    settings = {
      main = {
        font = "JetBrains Mono Nerd Font:size=12";
        dpi-aware = "yes";
        pad = "20x20 center";
        shell = "fish";
      };

      cursor = {
        style = "beam";
        blink = "yes";
      };

      colors-dark = {
        alpha = "0.98";
        background = "1b1a22";
        foreground = "d4d2ef";
        cursor = "252239 9b8cff";

        regular0 = "555161";
        regular1 = "ff9bd0";
        regular2 = "8af5f1";
        regular3 = "f0f28a";
        regular4 = "c4c0ff";
        regular5 = "a99cff";
        regular6 = "a9d8ff";
        regular7 = "dfdcf5";

        bright0 = "6a6576";
        bright1 = "ffc0e2";
        bright2 = "a5fff9";
        bright3 = "f7f8a8";
        bright4 = "d9d5ff";
        bright5 = "c2baff";
        bright6 = "c7e7ff";
        bright7 = "f2efff";

        selection-foreground = "1b1a22";
        selection-background = "9b8cff";
        search-box-no-match = "1b1a22 f58fa8";
        search-box-match = "dfdcf5 7668c9";
        jump-labels = "1b1a22 9b8cff";
        urls = "9b8cff";
      };
    };
  };
}
