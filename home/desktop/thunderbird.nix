{ lib, nixosConfig, ... }:
{
  config = lib.mkIf nixosConfig.pd.roles.desktop.enable {
    programs.thunderbird = {
      enable = true;
      profiles.princedimond = {
        isDefault = true;
        extensions = [ ];
        settings = {
          "extensions.autoDisableScopes" = 0;
        };
      };
    };
  };
}
