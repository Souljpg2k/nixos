{ pkgs, inputs, ... }:

{
  home.packages = with pkgs; [
    awww
    imagemagick
    bibata-cursors
    hyprshot
    hyprpicker
    hyprshutdown
    hyprpolkitagent
    qt6.qtdeclarative
    qt6.qtimageformats
    qtengine
    inputs.quickshell.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}