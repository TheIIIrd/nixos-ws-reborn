{ pkgs, ... }: {
  environment.gnome.excludePackages = with pkgs; [
    epiphany
    geary
    gnome-contacts
    gnome-maps
    gnome-music
    gnome-shell-extensions
    gnome-tour
    seahorse
    snapshot
    totem
  ];
}
