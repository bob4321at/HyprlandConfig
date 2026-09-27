-- Converted from hyprland/keybinds.conf
-- Variables and a list of bind objects; adapt to your Hyprland Lua binding API as needed.

return {
  vars = {
    mainMod = "SUPER",
    terminal = "alacritty",
    fileManager = "nemo",
    menu = "vicinae toggle",
    pathToMusicPlayerRunScript = os.getenv("HOME") .. "/.config/hypr/bind_player_start.sh",
    pathToMusicPlayerSelectRunScript = os.getenv("HOME") .. "/golang/BindPlayerV2/run.sh",
  },

  binds = {
    -- basic
    { mods = "$mainMod", key = "RETURN", type = "exec", args = "$terminal" },
    { mods = "$mainMod SHIFT", key = "Q", type = "exec", args = "$terminal" },
    { mods = "$mainMod", key = "Q", type = "killactive" },
    { mods = "$mainMod", key = "E", type = "exec", args = "$fileManager" },
    { mods = "$mainMod", key = "V", type = "togglefloating" },
    { mods = "$mainMod", key = "R", type = "exec", args = "$menu" },
    { mods = "$mainMod", key = "P", type = "pseudo" },

    -- focus movement
    { mods = "$mainMod", key = "H", type = "movefocus", args = "l" },
    { mods = "$mainMod", key = "L", type = "movefocus", args = "r" },
    { mods = "$mainMod", key = "K", type = "movefocus", args = "u" },
    { mods = "$mainMod", key = "J", type = "movefocus", args = "d" },

    -- workspaces (1..0)
    { mods = "$mainMod", key = "1", type = "workspace", args = "1" },
    { mods = "$mainMod", key = "2", type = "workspace", args = "2" },
    { mods = "$mainMod", key = "3", type = "workspace", args = "3" },
    { mods = "$mainMod", key = "4", type = "workspace", args = "4" },
    { mods = "$mainMod", key = "5", type = "workspace", args = "5" },
    { mods = "$mainMod", key = "6", type = "workspace", args = "6" },
    { mods = "$mainMod", key = "7", type = "workspace", args = "7" },
    { mods = "$mainMod", key = "8", type = "workspace", args = "8" },
    { mods = "$mainMod", key = "9", type = "workspace", args = "9" },
    { mods = "$mainMod", key = "0", type = "workspace", args = "10" },

    -- move to workspace with SHIFT
    { mods = "$mainMod SHIFT", key = "1", type = "movetoworkspace", args = "1" },
    { mods = "$mainMod SHIFT", key = "2", type = "movetoworkspace", args = "2" },
    { mods = "$mainMod SHIFT", key = "3", type = "movetoworkspace", args = "3" },
    { mods = "$mainMod SHIFT", key = "4", type = "movetoworkspace", args = "4" },
    { mods = "$mainMod SHIFT", key = "5", type = "movetoworkspace", args = "5" },
    { mods = "$mainMod SHIFT", key = "6", type = "movetoworkspace", args = "6" },
    { mods = "$mainMod SHIFT", key = "7", type = "movetoworkspace", args = "7" },
    { mods = "$mainMod SHIFT", key = "8", type = "movetoworkspace", args = "8" },
    { mods = "$mainMod SHIFT", key = "9", type = "movetoworkspace", args = "9" },
    { mods = "$mainMod SHIFT", key = "0", type = "movetoworkspace", args = "10" },

    -- named workspaces
    { mods = "$mainMod", key = "C", type = "workspace", args = "name:code" },
    { mods = "$mainMod SHIFT", key = "C", type = "movetoworkspace", args = "name:code" },
    { mods = "$mainMod", key = "D", type = "workspace", args = "name:draw" },
    { mods = "$mainMod SHIFT", key = "D", type = "movetoworkspace", args = "name:draw" },

    -- special workspaces
    { mods = "$mainMod", key = "M", type = "togglespecialworkspace", args = "special:mail" },
    { mods = "$mainMod SHIFT", key = "M", type = "movetoworkspace", args = "special:mail" },

    { mods = "$mainMod", key = "W", type = "togglespecialworkspace", args = "discord" },
    { mods = "$mainMod SHIFT", key = "W", type = "movetoworkspace", args = "special:discord" },

    { mods = "$mainMod", key = "B", type = "togglespecialworkspace", args = "browser" },
    { mods = "$mainMod SHIFT", key = "B", type = "movetoworkspace", args = "special:browser" },

    { mods = "$mainMod SHIFT", key = "S", type = "exec", args = "hyprshot -m region" },

    -- mouse binds
    { mods = "$mainMod", key = "mouse_down", type = "workspace", args = "e+1" },
    { mods = "$mainMod", key = "mouse_up", type = "workspace", args = "e-1" },

    { mods = "$mainMod", key = "mouse:272", type = "movewindow", mouse = true },
    { mods = "$mainMod", key = "mouse:273", type = "resizewindow", mouse = true },

    -- media keys (bindel/bindl)
    { mods = "", key = "XF86AudioRaiseVolume", type = "exec", args = "wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+" },
    { mods = "", key = "XF86AudioLowerVolume", type = "exec", args = "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-" },
    { mods = "", key = "XF86AudioMute", type = "exec", args = "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle" },
    { mods = "", key = "XF86AudioMicMute", type = "exec", args = "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle" },
    { mods = "", key = "XF86MonBrightnessUp", type = "exec", args = "brightnessctl -e4 -n2 set 5%+" },
    { mods = "", key = "XF86MonBrightnessDown", type = "exec", args = "brightnessctl -e4 -n2 set 5%-" },

    { mods = "", key = "XF86AudioNext", type = "exec", args = "playerctl next" },
    { mods = "", key = "XF86AudioPause", type = "exec", args = "playerctl play-pause" },
    { mods = "", key = "XF86AudioPlay", type = "exec", args = "playerctl play-pause" },
    { mods = "", key = "XF86AudioPrev", type = "exec", args = "playerctl previous" },

    -- music player scripts
    { mods = "$mainMod", key = "grave", type = "exec", args = "[float] " .. "$pathToMusicPlayerSelectRunScript" },
    { mods = "$mainMod CONTROL", key = "grave", type = "exec", args = "$pathToMusicPlayerRunScript" },
    { mods = "$mainMod SHIFT", key = "grave", type = "exec", args = "pkill bind_player" },

    -- misc
    { mods = "$mainMod", key = "F", type = "fullscreen" },
    { mods = "$mainMod", key = "P", type = "pin" },

    { mods = "$mainMod", key = "N", type = "exec", args = "swaync-client --toggle-panel" },
    { mods = "SUPER", key = "A", type = "exec", args = "steam -silent -applaunch 431730" },
    { mods = "SUPER", key = "S", type = "exec", args = "gpu-screen-recorder-gtk" },
  },
}
