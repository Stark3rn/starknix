{ config, pkgs, lib, ... }:

{
  home.activation.copyConfigs =
    lib.hm.dag.entryAfter [ "writeBoundary" ] ''
      mkdir -p ~/.config/bspwm
      mkdir -p ~/.config/sxhkd

      cp -n /etc/nixos/dotfiles/bspwm/bspwmrc ~/.config/bspwm/bspwmrc
      cp -n /etc/nixos/dotfiles/sxhkd/sxhkdrc ~/.config/sxhkd/sxhkdrc

      chmod +x ~/.config/bspwm/bspwmrc
    '';

  home.stateVersion = "25.11";
}
