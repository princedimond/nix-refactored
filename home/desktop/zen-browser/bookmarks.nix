{ lib, nixosConfig, ... }:
{
  config = lib.mkIf nixosConfig.roles.desktop.enable {
    programs.zen-browser.profiles.princedimond.bookmarks = {
      force = false;
      settings = [
        {
          name = "Nix Sites";
          toolbar = true;
          bookmarks = [
            {
              name = "homepage";
              url = "https://nixos.org/";
            }
            {
              name = "wiki";
              tags = [
                "wiki"
                "nix"
              ];
              url = "https://wiki.nixos.org/";
            }
            {
              name = "packages";
              url = "https://search.nixos.org/packages";
            }
          ];
        }
        {
          name = "Development";
          bookmarks = [
            {
              name = "GitHub";
              url = "https://github.com";
            }
          ];
        }
      ];
    };
  };
}
