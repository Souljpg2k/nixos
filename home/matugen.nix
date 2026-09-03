{ pkgs, ... }:

{
  home.packages = with pkgs; [
    matugen
  ];

  imports = [
    ./matugen/ghostty.nix
    ./matugen/cava.nix
    ./matugen/mako.nix
    ./matugen/kitty.nix
    ./matugen/rofi.nix
    ./matugen/btop.nix
    ./matugen/quickshell.nix
    ./matugen/zen-userchrome.nix
    ./matugen/zen-usercontent.nix
  ];

  home.file.".config/matugen/config.toml".text = ''
    [config]

    [templates.quickshell]
    input_path = '~/.config/matugen/templates/quickshell.qml'
    output_path = '~/.config/quickshell/Appearance/Appearance.qml'

    [templates.btop]
    input_path = '~/.config/matugen/templates/btop.theme'
    output_path = '~/.config/btop/themes/matugen.theme'
    post_hook = 'pkill -USR2 btop || true'

    [templates.cava]
    input_path = '~/.config/matugen/templates/cava-colors.ini'
    output_path = '~/.config/cava/themes/matugen'

    [templates.kitty]
    input_path = '~/.config/matugen/templates/kitty-colors.conf'
    output_path = '~/.config/kitty/themes/colors.conf'
    post_hook = 'pkill -SIGUSR1 kitty'

    [templates.ghostty]
    input_path = '~/.config/matugen/templates/ghostty'
    output_path = '~/.config/ghostty/themes/ghostty'
    post_hook = 'pkill -SIGUSR2 ghostty'

    [templates.rofi]
    input_path = '~/.config/matugen/templates/rofi-colors.rasi'
    output_path = '~/.config/rofi/colors.rasi'

    [templates.mako]
    input_path = '~/.config/matugen/templates/mako-colors'
    output_path = '~/.config/mako/colors'
    post_hook = 'makoctl reload'

    [templates.zen-userchrome]
    input_path = '~/.config/matugen/templates/zen-userchrome.css'
    output_path = '~/.zen/yey404x5.Default Profile/chrome/userChrome.css'

    [templates.zen-usercontent]
    input_path = '~/.config/matugen/templates/zen-usercontent.css'
    output_path = '~/.zen/yey404x5.Default Profile/chrome/userContent.css'
  '';
}
