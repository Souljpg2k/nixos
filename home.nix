{ lib, ... }:

{
  home.username = "arx";
  home.homeDirectory = "/home/arx";
  home.stateVersion = "26.05";

  imports = lib.filter (lib.hasSuffix ".nix") (
    lib.filesystem.listFilesRecursive ./modules/config
    ++ lib.filesystem.listFilesRecursive ./modules/pkgs
  );

  home.sessionVariables = {
    QML2_IMPORT_PATH = "/etc/profiles/per-user/$USER/lib/qt-6/qml";
  };

  programs.home-manager.enable = true;
}