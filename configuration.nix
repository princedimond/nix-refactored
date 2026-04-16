{ username, inputs, ... }:
{
  imports = [
    ./system
    ./modules
    ./options.nix
    inputs.home-manager.nixosModules.home-manager
  ];

  home-manager = {
    extraSpecialArgs = {
      inherit username;
      inherit inputs;
    };
    backupFileExtension = "hmBAK";
    users.${username} = {
      imports = [
        ./home
      ];
    };
  };

}
