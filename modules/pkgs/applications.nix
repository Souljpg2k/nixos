{ pkgs, inputs, ... }:

{
  home.packages = with pkgs; [
    brave
    discord
    vscode
    zed-editor
    obs-studio
    pavucontrol
    loupe
    obsidian
    tor-browser
    kdePackages.dolphin
    inputs.helium-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}