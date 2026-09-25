{ pkgs, inputs, ... }:

{
  home.packages = with pkgs; [
    qt6.qtdeclarative
    qt6.qtimageformats
    bibata-cursors
    cliphist
    hyprshot
    hypridle
    hyprpicker
    hyprsunset
    hyprshutdown
    hyprpolkitagent
    inputs.quickshell.packages.${pkgs.stdenv.hostPlatform.system}.default
    inputs.caelestia-shell.packages.${pkgs.stdenv.hostPlatform.system}.with-cli
  ];
}