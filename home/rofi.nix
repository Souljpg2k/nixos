{
  programs.rofi.enable = true;

  xdg.configFile."rofi/config.rasi".text = ''
    @import "colors.rasi"

    configuration {
        show-icons: true;
        location: 2;
        font: "SF Pro Rounded Medium 12";
        display-drun: " ";
        display-run: " ";
    }

    window {
        background-color: @background;
        border: 1px;
        border-radius: 18px;
        border-color: @border-color;
        width: 400px;
        padding: 2px;
        margin: 6px;
    }

    mainbox {
        padding: 5px;
        children: [ inputbar, listview ];
    }

    inputbar {
        background-color: @selected;
        border-radius: 14px;
        children: [ prompt, entry ];
        text-color: @primary;
        padding: 8px 8px 8px 12px;
        margin: 0px 0px 4px 0px;
    }

    prompt {
        text-color: @primary;
    }

    entry {
        text-color: @primary;
        placeholder: "";
    }

    listview {
        lines: 12;
        border: 0px;
        fixed-height: false;
        scrollbar: false;
        spacing: 5px;
    }

    element {
        border-radius: 12px;
        padding: 5px;
        cursor: pointer;
    }

    element normal.normal,
    element alternate.normal {
        background-color: transparent;
        text-color: @text-element;
    }

    element selected.normal {
        background-color: @selected;
        text-color: @text-selected;
    }

    textbox {
        text-color: @error-message;
        padding: 10px;
    }
  '';
}
