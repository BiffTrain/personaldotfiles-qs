-- Pavucontrol
hl.window_rule({
    name  = "pavucontrol",
    match = { class = "(.*org.pulseaudio.pavucontrol.*)" },
    float = true,
    center = true,
    size = "800 450",
})

-- Quickshell
hl.layer_rule({
    name  = "noctalia",
    match = { namespace = "noctalia-background-.*$" },
    ignore_alpha = 0.5,
    blur = true,
    blur_popups = true,
})



-- Blueman
hl.window_rule({
    name  = "blueman",
    match = { class = "(.*blueman-manager.*)" },
    float = true,
    center = true,
    size = "800 450",
})

-- Network Manager
hl.window_rule({
    name  = "nm-connection-editor",
    match = { title = "(.*nm-connection-editor.*)" },
    float = true,
    center = true,
})

-- Waypaper
hl.window_rule({
    name  = "waypaper-float",
    match = { class = "(.*waypaper.*)" },
    float = true,
    center = true,
    size = "850 500",
})

-- Windscribe
hl.window_rule({
    name  = "windscribe",
    match = { class = "(.*Windscribe.*)" },
    float = true,
    center = true,
    size = "300 200",
})

hl.layer_rule({
    name  = "grimblast",
    match = { namespace = "(selection)" },
    no_anim = true,
})

hl.layer_rule({
    name  = "hyprpicker",
    match = { namespace = "(hyprpicker)" },
    no_anim = true,
})


-- Kitty (float by title)
hl.window_rule({
    name  = "kitty-float",
    match = { title = "(.*kitty.*)" },
    float = true,
    center = true,
    size = "900 555",
})

-- Kitty (workspace by class)
hl.window_rule({
    name  = "kitty-workspace",
    match = { class = "(.*kitty.*)" },
    workspace = "5",
    rounding = 20,
    border_size = 5,
})

-- Qalculate
hl.window_rule({
    name  = "qalculate",
    match = { class = "(.*qalculate-gtk.*)" },
    float = true,
    center = true,
    opacity = 0.75,
})

-- Mission Center
hl.window_rule({
    name  = "mission-center",
    match = { class = "(.*io.missioncenter.MissionCenter.*)" },
    float = true,
    center = true,
    size = "1100 600",
    opacity = 0.90,
})

-- Resources
hl.window_rule({
    name  = "resources",
    match = { class = "(.*net.nokyan.Resources.*)" },
    float = true,
    center = true,
    size = "1000 700",
    opacity = 0.90,
})

-- Screensaver
hl.window_rule({
    name  = "screensaver",
    match = { class = "(.*screensaver-cmatrix.*)" },
    fullscreen = true,
})

-- Tclock
hl.window_rule({
    name  = "tclock",
    match = { class = "(.*fullscreen-tclock.*)" },
    fullscreen = true,
})

-- Workspace assignments
hl.window_rule({
    name  = "vesktop-workspace",
    match = { class = "(.*vesktop.*)" },
    workspace = "1",
})

hl.window_rule({
    name  = "zen-workspace",
    match = { class = "(.*zen.*)" },
    workspace = "3",
})

-- Browser Picture in Picture
hl.window_rule({
    name  = "picture-in-picture",
    match = { title = "(.*Picture-in-Picture.*)" },
    float = true,
    pin = true,
    move = "69.5% 4%",
})

-- nwg-display
hl.window_rule({
    name  = "nwg-display",
    match = { class = "(.*nwg-displays.*)" },
    float = true,
})

-- Transparency rules
hl.window_rule({
    name  = "thunar-opacity-1",
    match = { class = "(.*Thunar.*)" },
    opacity = 0.75,
})

hl.window_rule({
    name  = "thunar-opacity-2",
    match = { class = "(.*thunar.*)" },
    opacity = 0.75,
})

hl.window_rule({
    name  = "vesktop-opacity",
    match = { class = "(.*vesktop.*)" },
    opacity = 0.85,
})

hl.window_rule({
    name  = "kate-opacity",
    match = { class = "(.*org.kde.kate.*)" },
    opacity = 0.90,
})

hl.window_rule({
    name  = "blueman-opacity",
    match = { class = "(.*blueman-manager.*)" },
    opacity = 0.75,
})

hl.window_rule({
    name  = "pavucontrol-opacity",
    match = { class = "(.*org.pulseaudio.pavucontrol.*)" },
    opacity = 0.75,
})
