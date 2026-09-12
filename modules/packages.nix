{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  environment.systemPackages = with pkgs; [
    wget
    bun
    go
    python3
    vim
    curl
    tree
    gcc
    usbutils
    pciutils
    xdg-utils
  ];
}