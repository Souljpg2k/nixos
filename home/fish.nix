{
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting
      starship init fish | source
    '';
    shellAbbrs = {
      re = "sudo nixos-rebuild switch --flake ~/.config/nixos#nixos";
      cg = "sudo nix-collect-garbage -d";
      up = "nix flake update --flake ~/.config/nixos";
      ff = "fastfetch";
    };
  };
}
