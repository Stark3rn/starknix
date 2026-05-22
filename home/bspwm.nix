{ config, pkgs, lib, ... }:
{
  home.file.".config/bspwm/bspwmrc".source =
    config.lib.file.mkOutOfStoreSymlink
      "/etc/nixos/dotfiles/bspwm/bspwmrc";

  home.file.".config/sxhkd/sxhkdrc".source =
    config.lib.file.mkOutOfStoreSymlink
      "/etc/nixos/dotfiles/sxhkd/sxhkdrc";

  home.activation.chmodBspwmrc =
    lib.hm.dag.entryAfter [ "writeBoundary" ] ''
      chmod +x ~/.config/bspwm/bspwmrc
    '';

  home.stateVersion = "25.11";
}
