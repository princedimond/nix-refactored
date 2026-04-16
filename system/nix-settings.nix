{
  nix.settings = {
    download-buffer-size = 524288000; # 500 MiB
    experimental-features = [
      "nix-command"
      "flakes"
    ];
    substituters = [
      "https://nix-community.cachix.org"
    ];
    trusted-public-keys = [
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
    ];
  };

  catppuccin.cache.enable = true;

  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "25.11";
}
