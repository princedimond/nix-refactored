{
  config,
  pkgs,
  username,
  ...
}:
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      ls = "eza --icons=auto";
      copy = "rsync -azvh --info=progress2";
      fr = "nh os switch \"${config.pd.path}\" --ask";
      fb = "nh os boot \"${config.pd.path}\" --ask";
      fu = "nh os switch \"${config.pd.path}\" --ask --update";
      fbu = "nh os boot \"${config.pd.path}\" --ask --update";
      clean = "nh clean all --keep 4 --keep-since 7d --ask";
    };
    histSize = 10000;
  };

  users.extraUsers.${username} = {
    shell = pkgs.zsh;
  };
}
