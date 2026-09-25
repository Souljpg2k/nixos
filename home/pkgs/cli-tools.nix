{ pkgs, ... }:

{
  home.packages = with pkgs; [
    git
    nixfmt
    neovim
    nil
    unzip
    tree
    psmisc
    yt-dlp
    yazi
    imagemagick
    ffmpegthumbnailer
    wl-clipboard
    libnotify
    playerctl
    tty-clock
    cmatrix
    lavat
    asciiquarium
    ani-cli
  ];
}
