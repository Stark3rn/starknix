{ config, pkgs, ... }:
{
  services.xserver.enable = true;
  services.openssh.enable = true;
  services.xserver.windowManager.bspwm.enable = true;

  # Display manager (syntaxe non dépréciée)
  services.xserver.displayManager.lightdm.enable = true;

  # sxhkd lancé automatiquement
  services.xserver.windowManager.bspwm.sxhkd.configFile = "/etc/nixos/dotfiles/sxhkd/sxhkdrc";

  services.xserver.xkb.layout = "fr";
  security.rtkit.enable = true;

  networking.hostName = "starknix";

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  environment.systemPackages = with pkgs; [
    kitty
    picom      # retiré du service commenté, gardé ici uniquement
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
    git
  ];

  users.users.stark = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    initialPassword = "changeme";
  };
}
