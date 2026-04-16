{
  pkgs,
  lib,
  nixosConfig,
  ...
}:
let
  variant = "mocha";
  accent = "green";
in
{
  catppuccin = {
    enable = true;
    flavor = "${variant}";
    accent = "${accent}";
    cursors.enable = true;
  };
  gtk = lib.mkIf nixosConfig.pd.roles.desktop.enable {
    enable = true;
    theme = {
      name = "Catppuccin-GTK-Dark";
      package = pkgs.magnetic-catppuccin-gtk;
    };
  };
}
