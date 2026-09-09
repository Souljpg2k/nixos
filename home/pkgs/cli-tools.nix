{ pkgs, ... }:

{
  home.packages = with pkgs; [
    git
    nixfmt
    unzip
    tree
    psmisc
    yt-dlp
    yazi
    imagemagick
    ffmpegthumbnailer
    wl-clipboard
    libnotify
  ];
}
