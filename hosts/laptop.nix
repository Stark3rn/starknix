{ config, pkgs, ... }:

{
  services.xserver.enable = true;

  services.openssh.enable = true;

  services.xserver.windowManager.bspwm.enable = true;

  services.xserver.displayManager.lightdm.enable = true;

  #services.picom = {
  #  enable = true;
  #  backend = "glx";
  #  settings = {
  #    shadow = false;
  #    frame-opacity = 0.0;
  #  };
  #};

  services.xserver.xkb.layout = "fr";

  security.rtkit.enable = true;

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  environment.systemPackages = with pkgs; [
    kitty
    picom
    polybar
    rofi
    firefox
    thunar
    sxhkd
    flameshot
    dunst
    libnotify
    copyq
    xclip
    pamixer
    brightnessctl
    feh
    rofimoji
    htop
    fastfetch
  ];

  users.users.stark = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    initialPassword = "changeme";
  };

  system.stateVersion = "25.11";
}
