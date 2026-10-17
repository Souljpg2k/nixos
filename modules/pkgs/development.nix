{ pkgs, ... }:

{
  home.packages = with pkgs; [
    bun
    go
    python3
    rustc
    cargo
    ninja
    gcc
    pkg-config
  ];
}