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
    vim
    curl
    tree
    usbutils
    pciutils
    xdg-utils
  ];
}