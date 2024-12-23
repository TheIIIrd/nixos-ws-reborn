{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # Desktop apps
    clapper
    dconf-editor
    easyeffects
    gparted
    gnome-tweaks
    inkscape
    kdenlive
    krita
    mission-center

    # CLI utils
    aria2
    bind
    curl
    htop
    ipset
    lshw
    nmap
    radare2
    wget

    # Coding stuff
    android-tools
    cargo
    clang
    clang-tools
    gcc
    gnumake
    rustc
    zulu
  ];
}
