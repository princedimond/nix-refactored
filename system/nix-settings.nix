{
  nix.settings = {
    download-buffer-size = 524288000; # 500 MiB
    experimental-features = [
      "nix-command"
      "flakes"
    ];
  };

  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "25.11";
}
