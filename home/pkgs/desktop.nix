{ pkgs, ... }:

{
  home.packages = with pkgs; [
    awww
    quickshell
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
  ];
}
