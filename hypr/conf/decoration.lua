hl.config({
    decoration = {
        rounding          = 15,
        active_opacity    = 1.0,
        inactive_opacity  = 1.0,
        fullscreen_opacity = 1.0,

        blur = {
            enabled          = true,
            size             = 3,
            passes           = 3,
            new_optimizations = true,
            ignore_opacity   = true,
            xray             = true,
        },

        shadow = {
            enabled      = false,
            range        = 30,
            render_power = 3,
            color        = 0x66000000,
        },
    },
})
