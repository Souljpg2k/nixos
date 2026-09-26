{
  programs.fish = {
    enable = true;

    interactiveShellInit = ''
      set fish_greeting
    '';

    functions = {
      fish_prompt = ''
        set_color purple
        echo -n '['
        echo -n (prompt_pwd)
        echo -n ']'
        echo -n '$ '
        set_color normal
      '';
    };

    shellAbbrs = {
      re = "sudo nixos-rebuild switch --flake ~/nixos#nixos";
      cg = "sudo nix-collect-garbage -d";
      up = "nix flake update --flake ~/nixos";
      ff = "fastfetch";
    };
  };
}
