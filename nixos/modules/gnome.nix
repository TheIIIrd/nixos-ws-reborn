{
  services.xserver = {
    enable = true;

    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;

    xkb = {
      layout = "us";
      variant = "";
    };

    # services.xserver.libinput.enable = true;

    videoDrivers = [ "nvidia" ];
  };
}
