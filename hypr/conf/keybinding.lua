local colors = require("conf.colors")

local mainMod = "SUPER"
local HYPRSCRIPTS = "~/.config/hypr/scripts"
local SCRIPTS = "~/.config/ml4w/scripts"
local ipc = "qs -c noctalia-shell ipc call"

-- Applications
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd("~/.config/ml4w/settings/terminal.sh"))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("~/.config/ml4w/settings/browser.sh"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("~/.config/ml4w/settings/filemanager.sh"))
hl.bind(mainMod .. " + C", hl.dsp.exec_cmd("~/.config/ml4w/settings/calculator.sh"))
hl.bind(mainMod .. " + Delete", hl.dsp.exec_cmd("flatpak run net.nokyan.Resources"))
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd("~/.config/ml4w/settings/screensaver.sh"))
hl.bind(mainMod .. " + ALT + T", hl.dsp.exec_cmd("~/.config/ml4w/settings/tclock.sh"))

-- Windows
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + CTRL + Q", hl.dsp.exec_cmd("hyprctl activewindow | grep pid | tr -d 'pid:' | xargs kill"))
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen(0))
hl.bind(mainMod .. " + M", hl.dsp.window.fullscreen({ mode = "maximized" }))
hl.bind(mainMod .. " + W", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + SHIFT + Y", hl.dsp.exec_cmd("hyprctl dispatch workspaceopt allfloat"))
hl.bind(mainMod .. " + A", hl.dsp.layout("togglesplit"))
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "l" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "r" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "u" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "d" }))
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.exec_cmd("hyprctl dispatch resizeactive 100 0"))
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.resize({ x = 100, y = 0, relative = true }))
hl.bind(mainMod .. " + SHIFT + left", hl.dsp.window.resize({ x = -100, y = 0, relative = true }))
hl.bind(mainMod .. " + SHIFT + down", hl.dsp.window.resize({ x = 0, y = 100, relative = true }))
hl.bind(mainMod .. " + SHIFT + up", hl.dsp.window.resize({ x = 0, y = -100, relative = true }))

hl.bind(mainMod .. " + D", hl.dsp.layout("swapsplit"))

-- Actions / Core binds
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd(ipc .. " launcher toggle"))
hl.bind("SUPER + N", hl.dsp.exec_cmd(ipc .. " notifications toggleHistory"))
hl.bind("SUPER + comma", hl.dsp.exec_cmd(ipc .. " settings toggle"))
hl.bind("SUPER + V", hl.dsp.exec_cmd(ipc .. " launcher clipboard"))
hl.bind("SUPER + semicolon", hl.dsp.exec_cmd(ipc .. " launcher emoji"))
hl.bind("SUPER + SHIFT + B", hl.dsp.exec_cmd(ipc .. " bar toggle"))
hl.bind(mainMod .. " + CTRL + W", hl.dsp.exec_cmd(ipc .. " wallpaper toggle"))
hl.bind(mainMod .. " + SHIFT + Q", hl.dsp.exec_cmd("~/.config/ml4w/scripts/wlogout.sh"))

-- System configuration
hl.bind("switch:on:Lid Switch", hl.dsp.exec_cmd("systemctl suspend"), { locked = true })

hl.bind(mainMod .. " + CTRL + R", hl.dsp.exec_cmd("hyprctl reload"))

hl.bind(mainMod .. " + SHIFT + A", function()
	if hl.get_config("animations.enabled") == false then
		hl.config({
			animations = {
				enabled = true,
			},
		})		return
	end

	hl.config({
		animations = {
			enabled = false,
		},
	})
end)

hl.bind("PRINT", hl.dsp.exec_cmd(HYPRSCRIPTS .. "/screenshot.sh"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd("grimblast --freeze copy area"))
hl.bind("SUPER + SHIFT + C", hl.dsp.exec_cmd("hyprpicker"))
hl.bind(mainMod .. " + SHIFT + H", hl.dsp.exec_cmd("hyprshade toggle blue-light-filter"), { locked = true })

--gamemode
hl.bind(mainMod .. " + SHIFT + G", hl.dsp.exec_cmd(ipc .. " powerProfile toggleNoctaliaPerformance"))
hl.bind(mainMod .. " + SHIFT + G", function()
	local game_mode = (hl.get_config("animations.enabled") == false)

	if game_mode then
		hl.exec_cmd("hyprctl reload")
		return
	end

	hl.config({
		general = {
			gaps_in = 3,
			gaps_out = 3, -- Disable gaps
			border_size = 0,
		},

		animations = {
			enabled = false, -- Disable animations
		},

		-- Disable blur, shadow and window rounding
		decoration = {
			shadow = { enabled = false },
			blur = { enabled = false },
			rounding = 0,
		},
	})
end)

hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("~/.local/share/quickshell-lockscreen/lock.sh"))

hl.bind("ALT + space", hl.dsp.exec_cmd("fcitx5-remote -t"))

-- Workspaces
for i = 1, 10 do
	local key = i % 10
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
	hl.bind(mainMod .. " + CTRL + " .. key, hl.dsp.exec_cmd(HYPRSCRIPTS .. "/moveTo.sh " .. i))
end

hl.bind(mainMod .. " + Tab", hl.dsp.focus({ workspace = "m+1" }))
hl.bind(mainMod .. " + SHIFT + Tab", hl.dsp.focus({ workspace = "m-1" }))

-- Move window pixel
hl.bind(mainMod .. " + CTRL + left", hl.dsp.window.move({ x = -100, y = 0, relative = true }))
hl.bind(mainMod .. " + CTRL + right", hl.dsp.window.move({ x = 100, y = 0, relative = true }))
hl.bind(mainMod .. " + CTRL + down", hl.dsp.window.move({ x = 0, y = 100, relative = true }))
hl.bind(mainMod .. " + CTRL + up", hl.dsp.window.move({ x = 0, y = -100, relative = true }))

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Fn keys
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -q s +5%"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -q s 5%-"), { locked = true, repeating = true })
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ +5%"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ -5%"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl pause"), { locked = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd("pactl set-source-mute @DEFAULT_SOURCE@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind("XF86Calculator", hl.dsp.exec_cmd("~/.config/ml4w/settings/calculator.sh"), { locked = true })
hl.bind("code:259", hl.dsp.exec_cmd("hyprlock"), { locked = true })

hl.bind("code:238", hl.dsp.exec_cmd("brightnessctl -d smc::kbd_backlight s +10"), { locked = true, repeating = true })
hl.bind("code:237", hl.dsp.exec_cmd("brightnessctl -d smc::kbd_backlight s 10-"), { locked = true, repeating = true })
hl.bind("XF86PowerOff", hl.dsp.exec_cmd("~/.config/ml4w/scripts/wlogout.sh"), { locked = true })
