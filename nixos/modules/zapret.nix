{ pkgs-unstable, ... }: {
  services.zapret = {
    enable = true;
    package = pkgs-unstable.zapret;
    params = [
      "--dpi-desync=fake,split2"
      "--dpi-desync-ttl=7"
      "--dpi-desync-fooling=badseq"
      "--wssize 1:6"
      "--dpi-desync-fake-tls=0x00000000"
    ];
  };
}
