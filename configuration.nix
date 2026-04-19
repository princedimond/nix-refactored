{ username, inputs, ... }:
{
  imports = [
    ./system
    ./modules
    ./options.nix
    inputs.home-manager.nixosModules.home-manager
    inputs.catppuccin.nixosModules.catppuccin
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
        inputs.catppuccin.homeModules.catppuccin
        inputs.cosmic-manager.homeManagerModules.cosmic-manager
        inputs.zen-browser.homeModules.zen-browser
      ];
    };
  };

}
