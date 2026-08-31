{ pkgs, inputs, ... }:

{
  fonts.fontconfig = {
    enable = true;

    defaultFonts = {
      sansSerif = [
        "SF Pro Display"
        "Sarabun"
        "IPAexGothic"
        "NanumGothic"
        "LXGW WenKai"
        "Noto Sans"
      ];

      serif = [
        "New York"
        "Sarabun"
        "IPAexMincho"
        "NanumMyeongjo"
        "LXGW WenKai"
        "Noto Serif"
      ];

      monospace = [
        "SF Mono"
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
    noto-fonts
    nerd-fonts.jetbrains-mono
    material-symbols

    inputs.apple-fonts.packages.${pkgs.stdenv.hostPlatform.system}.sf-pro
    inputs.apple-fonts.packages.${pkgs.stdenv.hostPlatform.system}.sf-mono
    inputs.apple-fonts.packages.${pkgs.stdenv.hostPlatform.system}.ny

  ];
}
