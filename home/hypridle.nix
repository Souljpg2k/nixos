{
  services.hypridle = {
    enable = true;

    settings = {
      general = {
        lock_cmd = ''hyprctl dispatch 'hl.dsp.global("quickshell:lock")' '';
        before_sleep_cmd = "loginctl lock-session";
        after_sleep_cmd = ''hyprctl dispatch 'hl.dsp.dpms({ action = "enable" })' '';
      };

      listener = [
        {
          timeout = 400;
          on-timeout = "loginctl lock-session";
        }

        {
          timeout = 500;
          on-timeout = ''hyprctl dispatch 'hl.dsp.dpms({ action = "disable" })' '';
          on-resume = ''hyprctl dispatch 'hl.dsp.dpms({ action = "enable" })' '';
        }

        {
          timeout = 1800;
          on-timeout = "systemctl suspend";
        }
      ];
    };
  };
}
