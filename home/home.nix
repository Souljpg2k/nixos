{ pkgs, ... }:

{
  home.username = "arx";
  home.homeDirectory = "/home/arx";
  home.stateVersion = "26.05";

  imports = [
    ./btop.nix
    ./cava.nix
    ./kitty.nix
    ./fish.nix
    ./fastfetch.nix
    ./mako.nix
    ./ghostty.nix
    ./rofi.nix
    ./starship.nix
    ./hypridle.nix
    ./fonts.nix
    ./spicetify.nix
    ./mpv.nix
    ./theme.nix
    ./pkgs/applications.nix
    ./pkgs/cli-tools.nix
    ./pkgs/desktop.nix
  ];
  
  programs.home-manager.enable = true;
}