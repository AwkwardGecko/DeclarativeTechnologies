#~/.dotfiles/hosts/personal-tim/personalisation/wallpaper-service.nix
{ config, lib, pkgs, ... }:

{
  home-manager.users.dectec = {
    systemd.user.services.set-wallpaper = {
      description = "Set KDE Plasma Wallpaper";
      wantedBy = [ "graphical-session.target" ];
      serviceConfig = {
        ExecStart = [ "/run/current-system/sw/bin/plasma-apply-wallpaperimage /home/dectec/.dotfiles/hosts/personal-tim/personalisation/wallpaper.png" ];
      };
    };
  };
}
