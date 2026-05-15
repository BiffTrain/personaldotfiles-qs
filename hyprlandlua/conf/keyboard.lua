hl.config({
    input = {
        kb_layout = "us",
        kb_variant = "",
        kb_model = "",
        kb_options = "",
        numlock_by_default = true,
        mouse_refocus = false,

        follow_mouse = 1,

        touchpad = {
            natural_scroll = false,
            scroll_factor = 1.0,
        },

        sensitivity = 0.25,
    },
})

hl.gesture({
    fingers = 3,
    direction = "swipe",
    action = "workspace",
    scale = 3,
})
