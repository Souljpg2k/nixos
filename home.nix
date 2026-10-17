{
  home.username = "arx";
  home.homeDirectory = "/home/arx";
  home.stateVersion = "26.05";

  imports = [
    ./modules/config
    ./modules/pkgs
  ];
  
  programs.home-manager.enable = true;
}