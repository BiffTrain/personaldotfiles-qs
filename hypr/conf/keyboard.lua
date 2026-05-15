hl.config({
    input = {
        kb_layout          = "us",
        kb_variant         = "",
        kb_model           = "",
        kb_options         = "",
        numlock_by_default = true,
        mouse_refocus      = false,

        follow_mouse = 1,
        sensitivity = 1,

        touchpad = {
            natural_scroll = false,
            scroll_factor  = 1.0,
        },

    },

})



hl.device({
    name = "elan067f:00-04f3:3209-touchpad",
    sensitivity = 0.25
})
