{ pkgs, inputs, ... }:

{
  fonts.fontconfig = {
    enable = true;

    defaultFonts = {
      sansSerif = [
        "Inter"
        "Sarabun"
        "IPAexGothic"
        "NanumGothic"
        "LXGW WenKai"
        "Noto Sans"
      ];

      serif = [
        "Libre Baskerville"
        "Sarabun"
        "IPAexMincho"
        "NanumMyeongjo"
        "LXGW WenKai"
        "Noto Serif"
      ];

      monospace = [
        "JetBrainsMono Nerd Font"
        "Noto Sans Mono"
      ];

      emoji = [
        "Noto Color Emoji"
      ];
    };
  };

  home.packages = with pkgs; [
    sarabun-font
    ipaexfont
    nanum
    lxgw-wenkai
    libre-baskerville
    noto-fonts
    nerd-fonts.jetbrains-mono
    inter
    material-symbols
  ];
}