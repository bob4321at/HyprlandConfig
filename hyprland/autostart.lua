-- Converted from hyprland/autostart.conf
return {
  exec_once = {
    { cmd = "$terminal", workspace = "name:code", flags = { silent = true } },
    { cmd = "steam -silent", flags = { silent = true } },
    { cmd = "flatpak run com.discordapp.Discord", workspace = "1", flags = { silent = true } },
    { cmd = "flatpak run org.mozilla.Thunderbird", workspace = "special:mail", flags = { silent = true } },
    { cmd = "qutebrowser", workspace = "special:browser", flags = { silent = true } },

    { cmd = "fcitx5" },
    { cmd = "udiskie" },
    { cmd = "swaync" },
    { cmd = "hyprpaper" },
    { cmd = "waybar" },
    { cmd = "hyprpolkitagent" },
    { cmd = "vicinae server" },
  }
}
