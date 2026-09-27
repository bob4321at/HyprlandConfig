-- Converted from hyprland/window_rules.conf
return {
  rules = {
    -- equivalent to: windowrule = suppressevent maximize, class:.*
    { action = "suppressevent maximize", class = ".*" },

    -- equivalent to: windowrule = nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0
    {
      action = "nofocus",
      class = "^$",
      title = "^$",
      xwayland = 1,
      floating = 1,
      fullscreen = 0,
      pinned = 0,
    },

    -- windowrulev2 = workspace special:discord silent, class:^(discord)$
    {
      action = "workspace special:discord silent",
      class = "^(discord)$",
      v2 = true,
    },

    -- fullscreen rules for qutebrowser
    { action = "fullscreen", class = "qutebrowser" },
    { action = "fullscreen", class = "^(qutebrowser)$" },
  }
}
