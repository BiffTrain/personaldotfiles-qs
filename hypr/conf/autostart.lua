hl.on("hyprland.start", function ()
    hl.exec_cmd("qs -c noctalia-shell")

    hl.exec_cmd("zen-browser")
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("dbus-update-activation-environment WAYLAND_DISPLAY DISPLAY")
    hl.exec_cmd("kdeconnect-indicator")

    hl.exec_cmd("fcitx5-remote -r")
    hl.exec_cmd("fcitx5 -d --replace &")
    hl.exec_cmd("fcitx5-remote -r")

    hl.exec_cmd("hyprshade toggle blue-light-filter")

    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")

    hl.exec_cmd("~/.config/hypr/scripts/gtk.sh")

    hl.exec_cmd("hypridle")

    hl.exec_cmd("wl-paste --watch cliphist store")
end)
