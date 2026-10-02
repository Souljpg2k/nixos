{ pkgs, ... }:

{
  home.packages = with pkgs; [
    git
    nixfmt
    cava
    neovim
    nil
    fzf
    unzip
    tree
    psmisc
    yt-dlp
    ffmpeg
    imagemagick
    ffmpegthumbnailer
    wl-clipboard
    libnotify
  ];
}