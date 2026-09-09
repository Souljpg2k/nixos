{
  services.syncthing = {
    enable = true;
    openDefaultPorts = true;
    user = "arx";
    group = "users";
    dataDir = "/home/arx/.local/share/syncthing";
    configDir = "/home/arx/.config/syncthing";
  };
}