{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  time.timeZone = "Asia/Bangkok";
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "th_TH.UTF-8";
    LC_IDENTIFICATION = "th_TH.UTF-8";
    LC_MEASUREMENT = "th_TH.UTF-8";
    LC_MONETARY = "th_TH.UTF-8";
    LC_NAME = "th_TH.UTF-8";
    LC_NUMERIC = "th_TH.UTF-8";
    LC_PAPER = "th_TH.UTF-8";
    LC_TELEPHONE = "th_TH.UTF-8";
    LC_TIME = "th_TH.UTF-8";
  };

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  users.users."arx" = {
    isNormalUser = true;
    description = "arx";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    packages = with pkgs; [ ];
  };

  services.syncthing = {
    enable = true;
    openDefaultPorts = true;
    user = "arx";
    group = "users";
    dataDir = "/home/arx/.local/share/syncthing";
    configDir = "/home/arx/.config/syncthing";
  };

  nixpkgs.config.allowUnfree = true;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  environment.systemPackages = with pkgs; [
    wget
    bun
    vim
    unzip
    usbutils
  ];

  programs.hyprland.enable = true;

  services.udisks2.enable = true;
  services.gvfs.enable = true;

  environment.etc."xdg/menus/applications.menu".source =
    "${pkgs.kdePackages.plasma-workspace}/etc/xdg/menus/plasma-applications.menu";

  system.stateVersion = "26.05";

}
