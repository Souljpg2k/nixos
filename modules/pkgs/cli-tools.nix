{ pkgs, ... }:

{
  home.packages = with pkgs; [
    git
    nixfmt
    neovim
    nil
    fzf
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
    ani-cli
  ];
}
