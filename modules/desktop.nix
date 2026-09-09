{ pkgs, ... }:

{
  programs.hyprland.enable = true;

  services.udisks2.enable = true;
  services.gvfs.enable = true;

  environment.etc."xdg/menus/applications.menu".source =
    "${pkgs.kdePackages.plasma-workspace}/etc/xdg/menus/plasma-applications.menu";
}
