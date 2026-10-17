{ pkgs, ... }:

{
  home.packages = with pkgs; [
    bat
    neovim
    nixfmt
    nil
    fzf
    tree
    psmisc
    yt-dlp
    ffmpeg
    ffmpegthumbnailer
    playerctl
    wl-clipboard
    cliphist
    libnotify
    unzip
    zip
  ];
}