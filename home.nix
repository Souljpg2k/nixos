{ lib, ... }:

{
  home.username = "arx";
  home.homeDirectory = "/home/arx";
  home.stateVersion = "26.05";

  imports = lib.filter (lib.hasSuffix ".nix") (
    lib.filesystem.listFilesRecursive ./modules/config
    ++ lib.filesystem.listFilesRecursive ./modules/pkgs
  );
  
  programs.home-manager.enable = true;
}