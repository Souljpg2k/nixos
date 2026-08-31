{
  programs.starship = {
    enable = true;

    settings = {
      add_newline = false;
      format = "$directory$git_branch$character";

      character = {
        success_symbol = "[](bold green)";
        error_symbol = "[](bold red)";
      };

      directory = {
        truncation_length = 2;
        truncation_symbol = ".../";
        read_only = " ";
        style = "bg:background fg:white";
        format = "[]($style)[(bg:white fg:black)$path](bg:white fg:black)[ ]($style)";
      };

      git_commit = {
        commit_hash_length = 4;
        tag_symbol = " ";
      };

      git_branch = {
        style = "bg:background fg:white";
        format = "[]($style)[[  ](bg:white fg:black)$branch](bg:white fg:black)[ ]($style)";
      };

      package = {
        disabled = true;
      };
    };
  };
}
