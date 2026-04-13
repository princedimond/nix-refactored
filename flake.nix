{
  description = "pd-nix-refactored";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/release-25.11";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
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
          };
        modules = [
          ./hosts/template
          ./configuration.nix
        ];
      };
    };
}
