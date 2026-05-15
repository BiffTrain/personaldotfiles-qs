local colors = require("conf.colors")

hl.config({
    general = {
        gaps_in          = 3,
        gaps_out         = 10,
        border_size      = 3,
        col = {
            active_border   = colors.secondary,
            inactive_border = colors.on_secondary,
        },
        layout           = "dwindle",
        resize_on_border = true,
    },
})
