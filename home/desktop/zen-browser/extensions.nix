{
  lib,
  nixosConfig,
  inputs,
  pkgs,
  ...
}:
{
  config = lib.mkIf nixosConfig.roles.desktop.enable {
    programs.zen-browser.profiles.princedimond.extensions.packages =
      with inputs.firefox-addons.packages.${pkgs.stdenv.hostPlatform.system}; [
        ublock-origin
        dearrow
        stylus
        bitwarden
        sponsorblock
        darkreader
        clearurls
        privacy-badger
        return-youtube-dislikes
        tampermonkey
        watchmarker-for-youtube
        #bandcamp-player-volume-control
        auto-tab-discard
        downthemall
        facebook-container
        capital-one-eno
        enhanced-h264ify
        tab-session-manager
        web-developer
      ];
  };
}
