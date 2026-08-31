{ pkgs, inputs, ... }:

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
    ./theme.nix
    ./fonts.nix
    ./spicetify.nix
    ./mpv.nix
    ./matugen.nix
    ./neovim.nix
  ];

  home.packages = with pkgs; [
    awww
    brave
    vscode
    code-cursor
    git
    quickshell
    qt6.qtdeclarative
    qt6.qtimageformats
    bibata-cursors
    cliphist
    wl-clipboard
    libnotify
    imagemagick
    hyprshot
    hypridle
    hyprpicker
    hyprsunset
    hyprshutdown
    hyprpolkitagent
    obs-studio
    pavucontrol
    ffmpegthumbnailer
    yt-dlp
    yazi
    loupe
    nixfmt
    psmisc
    obsidian
    kdePackages.dolphin
    inputs.helium-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];

  programs.home-manager.enable = true;
}
