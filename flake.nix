{
  description = "pd-nix-refactored";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/release-25.11";
    nixpkgs-master.url = "github:nixos/nixpkgs";
    home-manager = {
      url = "github:nix-community/home-manager";
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
