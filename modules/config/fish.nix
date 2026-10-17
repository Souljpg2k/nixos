{
  programs.fish = {
    enable = true;

    shellInit = ''
      set -gx EDITOR vim
      set -gx VISUAL vim
    '';

    interactiveShellInit = ''
      set fish_greeting
      starship init fish | source
    '';
 
    shellAliases = {
      btw = "echo i use nixos-btw";
      vim = "nvim";
      vi = "nvim";
    };
 
    shellAbbrs = {
      nrs = "sudo nixos-rebuild switch --flake ~/nixos#arx";
    };
  };
}
