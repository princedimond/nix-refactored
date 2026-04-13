{ pkgs, username, ... }:
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      ls = "eza --icons=auto";
      copy = "rsync -azvh --info=progress2";
    };
    histSize = 10000;
  };

  users.extraUsers.${username} = {
    shell = pkgs.zsh;
  };
}
