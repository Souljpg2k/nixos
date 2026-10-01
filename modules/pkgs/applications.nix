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
    upscayl
    krita
    kdePackages.dolphin
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}
