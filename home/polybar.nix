{ config, pkgs, lib, ... }:
{
  home.file.".config/polybar/config.ini".source =
    config.lib.file.mkOutOfStoreSymlink
      "/etc/nixos/dotfiles/polybar/config.ini";

  home.file.".config/polybar/colors.ini".source =
    config.lib.file.mkOutOfStoreSymlink
      "/etc/nixos/dotfiles/polybar/colors.ini";

  home.file.".config/polybar/launch.sh".source =
    config.lib.file.mkOutOfStoreSymlink
      "/etc/nixos/dotfiles/polybar/launch.sh";

  home.file.".config/polybar/powermenu.sh".source =
    config.lib.file.mkOutOfStoreSymlink
      "/etc/nixos/dotfiles/polybar/powermenu.sh";

  home.file."Pictures".source =
    config.lib.file.mkOutOfStoreSymlink
      "/etc/nixos/dotfiles/Pictures";
}
