{
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
}
