{
  programs.starship = {
    enable = true;

    settings = {
      add_newline = false;

      format = "$directory$git_branch$character";

      character = {
        success_symbol = "[\\$](bold white)";
        error_symbol = "[\\$](bold red)";
      };

      directory = {
        home_symbol = "~";
        style = "green";
        truncation_length = 2;
        truncation_symbol = ".../";
      };

      git_branch = {
        symbol = " ";
        truncation_length = 4;
        truncation_symbol = "";
        format = "[$symbol$branch]($style) ";
      };

      package = {
        disabled = true;
      };
    };
  };
}