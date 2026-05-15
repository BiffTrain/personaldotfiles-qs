hl.config({
    dwindle = {
        preserve_split  = true,
    },

    master = {},

    binds = {
        workspace_back_and_forth  = true,
        allow_workspace_cycles    = true,
        pass_mouse_when_bound     = false,
    },
})

hl.gesture({ fingers = 3, direction = "swipe", action = "move" })
hl.gesture({ fingers = 4, direction = "swipe", action = "resize" })
