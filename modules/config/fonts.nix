{ pkgs, inputs, ... }:

{
  fonts.fontconfig = {
    enable = true;

    defaultFonts = {
      sansSerif = [
        "Poppins"
        "Inter"
        "Kanit"
        "Noto Sans CJK JP"
        "Noto Sans CJK KR"
        "Noto Sans CJK SC"
        "Noto Sans CJK TC"
        "Noto Sans"
      ];

      serif = [
        "Libre Baskerville"
        "Kanit"
        "Noto Serif CJK JP"
        "Noto Serif CJK KR"
        "Noto Serif CJK SC"
        "Noto Serif CJK TC"
        "Noto Serif"
      ];

      monospace = [
        "JetBrainsMono Nerd Font"
        "Kanit"
      ];

      emoji = [
        "Noto Color Emoji"
      ];
    };
  };

  home.packages = with pkgs; [
    kanit-font
    libre-baskerville
    noto-fonts
    nerd-fonts.jetbrains-mono
    poppins
    inter
  ];
}