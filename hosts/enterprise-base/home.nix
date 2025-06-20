{ config, pkgs, ... }:

{
  imports = [
  ./modules/dropbox.nix
  ./modules/fastfetch.nix
	#./modules/firefox.nix # Moved to configuration.nix
  ./modules/fish.nix
	./modules/kitty.nix
  ./modules/librewolf.nix
	./modules/git.nix
  ./modules/start-menu/start-onlyoffice.nix
  ./modules/start-menu/teams.nix
  ];

  home.username = "dectec";
  home.homeDirectory = "/home/dectec";
  home.stateVersion = "25.05"; # Do not change this after initial setup

  programs.git = {
    enable = true;
    userName = "DecTec";
    userEmail = "zozano@protonmail.com";
  };

  # home.file.".local/share/applications/teams.desktop".text = ''
  #   test
  # '';
}

