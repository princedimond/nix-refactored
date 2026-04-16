{ username, inputs, ... }:
{
  imports = [
    ./system
    ./modules
    ./options.nix
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
