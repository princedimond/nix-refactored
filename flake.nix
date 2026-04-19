{
  description = "pd-nix-refactored";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/release-25.11";
    nixpkgs-master.url = "github:nixos/nixpkgs";
    catppuccin.url = "github:catppuccin/nix";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    cosmic-manager = {
      url = "github:HeitorAugustoLN/cosmic-manager";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        home-manager.follows = "home-manager";
      };
    };
    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake/beta";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    firefox-addons = {
      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      nixpkgs-stable,
      nixpkgs-master,
      ...
    }@inputs:
    let
      username = "princedimond";
    in
    {
      nixosConfigurations.template = nixpkgs.lib.nixosSystem {
        specialArgs =
          let
            system = "x86_64-linux";
          in
          {
            inherit username;
            inherit inputs;
            stable = import nixpkgs-stable {
              inherit system;
              config.allowUnfree = true;
            };
            master = import nixpkgs-master {
              inherit system;
              config.allowUnfree = true;
            };
          };
        modules = [
          ./hosts/template
          ./configuration.nix
        ];
      };
    };
}
