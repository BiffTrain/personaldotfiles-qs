hl.config({
    decoration = {
        rounding          = 15,
        active_opacity    = 1.0,
        inactive_opacity  = 1.0,
        fullscreen_opacity = 1.0,

        blur = {
            enabled          = true,
            size             = 1,
            passes           = 4,
            vibrancy = 0.1696,
            new_optimizations = true,
            ignore_opacity   = true,
            xray             = true,
            special = false,
            popups = false,
            input_methods = false
        },

        shadow = {
            enabled      = false,
            range        = 30,
            render_power = 3,
            color        = 0x66000000,
        },
    },
})
