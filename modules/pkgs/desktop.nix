{ pkgs, inputs, ... }:

{
  home.packages = with pkgs; [
    qt6.qtdeclarative
    qt6.qtimageformats
    qtengine
    bibata-cursors
    cliphist
    hyprshot
    hypridle
    hyprpicker
    hyprshutdown
    hyprpolkitagent
    inputs.quickshell.packages.${pkgs.stdenv.hostPlatform.system}.default
    inputs.caelestia-shell.packages.${pkgs.stdenv.hostPlatform.system}.with-cli
    inputs.m3shapes.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}