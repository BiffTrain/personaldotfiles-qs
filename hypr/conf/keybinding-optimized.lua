local colors = require("conf.colors")

local HYPRSCRIPTS = "~/.config/hypr/scripts"
local SCRIPTS = "~/.config/ml4w/scripts"
local ipc = "qs -c noctalia-shell ipc call"

-- Applications
hl.bind("SUPER + T", hl.dsp.exec_cmd("~/.config/ml4w/settings/terminal.sh"))
hl.bind("SUPER + B", hl.dsp.exec_cmd("~/.config/ml4w/settings/browser.sh"))
hl.bind("SUPER + E", hl.dsp.exec_cmd("~/.config/ml4w/settings/filemanager.sh"))
hl.bind("SUPER + C", hl.dsp.exec_cmd("~/.config/ml4w/settings/calculator.sh"))
hl.bind("SUPER + Delete", hl.dsp.exec_cmd("flatpak run net.nokyan.Resources"))
hl.bind("SUPER + S", hl.dsp.exec_cmd("~/.config/ml4w/settings/screensaver.sh"))
hl.bind("SUPER + ALT + T", hl.dsp.exec_cmd("~/.config/ml4w/settings/tclock.sh"))
hl.bind("SUPER + SHIFT + G", hl.dsp.exec_cmd(ipc .. " powerProfile toggleNoctaliaPerformance"))

-- Windows
hl.bind("SUPER + Q", hl.dsp.window.close())
hl.bind("SUPER + CTRL + Q", hl.dsp.exec_cmd("hyprctl activewindow | grep pid | tr -d 'pid:' | xargs kill"))
hl.bind("SUPER + F", hl.dsp.window.fullscreen(0))
hl.bind("SUPER + M", hl.dsp.window.fullscreen(1))
hl.bind("SUPER + W", hl.dsp.window.float({ action = "toggle" }))
hl.bind("SUPER + SHIFT + Y", hl.dsp.exec_cmd("hyprctl dispatch workspaceopt allfloat"))
hl.bind("SUPER + A", hl.dsp.layout("togglesplit"))
hl.bind("SUPER + left", hl.dsp.focus({ direction = "l" }))
hl.bind("SUPER + right", hl.dsp.focus({ direction = "r" }))
hl.bind("SUPER + up", hl.dsp.focus({ direction = "u" }))
hl.bind("SUPER + down", hl.dsp.focus({ direction = "d" }))
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })
hl.bind("SUPER + SHIFT + right", hl.dsp.window.resize({ x = 100, y = 0, relative = true }))
hl.bind("SUPER + SHIFT + left", hl.dsp.window.resize({ x = -100, y = 0, relative = true }))
hl.bind("SUPER + SHIFT + down", hl.dsp.window.resize({ x = 0, y = -100, relative = true }))
hl.bind("SUPER + SHIFT + up", hl.dsp.window.resize({ x = 0, y = 100, relative = true }))

hl.bind("SUPER + D", hl.dsp.layout("swapsplit"))

-- Actions / Core binds
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd(ipc .. " launcher toggle"))
hl.bind("SUPER + N", hl.dsp.exec_cmd(ipc .. " notifications toggleHistory"))
hl.bind("SUPER + comma", hl.dsp.exec_cmd(ipc .. " settings toggle"))
hl.bind("SUPER + V", hl.dsp.exec_cmd(ipc .. " launcher clipboard"))
hl.bind("SUPER + semicolon", hl.dsp.exec_cmd(ipc .. " launcher emoji"))
hl.bind("SUPER + SHIFT + B", hl.dsp.exec_cmd(ipc .. " bar toggle"))
hl.bind("SUPER + CTRL + W", hl.dsp.exec_cmd(ipc .. " wallpaper toggle"))
hl.bind("SUPER + SHIFT + Q", hl.dsp.exec_cmd("~/.config/ml4w/scripts/wlogout.sh"))

-- System configuration
hl.bind("switch:on:Lid Switch", hl.dsp.exec_cmd("systemctl suspend"), { locked = true })

hl.bind("SUPER + CTRL + R", hl.dsp.exec_cmd("hyprctl reload"))
hl.bind("SUPER + SHIFT + A", hl.dsp.exec_cmd(HYPRSCRIPTS .. "/toggle-animations.sh"))
hl.bind("PRINT", hl.dsp.exec_cmd(HYPRSCRIPTS .. "/screenshot.sh"))
hl.bind("SUPER + SHIFT + S", hl.dsp.exec_cmd("grimblast --freeze copy area"))
hl.bind("SUPER + SHIFT + C", hl.dsp.exec_cmd("hyprpicker"))
hl.bind("SUPER + SHIFT + R", hl.dsp.exec_cmd(HYPRSCRIPTS .. "/loadconfig.sh"))
hl.bind("SUPER + SHIFT + H", hl.dsp.exec_cmd("hyprshade toggle blue-light-filter"), { locked = true })
hl.bind("SUPER + SHIFT + G", hl.dsp.exec_cmd(HYPRSCRIPTS .. "/gamemode.sh"))
hl.bind("SUPER + L", hl.dsp.exec_cmd("~/.local/share/quickshell-lockscreen/lock.sh"))

hl.bind("ALT + space", hl.dsp.exec_cmd("fcitx5-remote -t"))

-- Workspaces
for i = 1, 10 do
	local key = i % 10
	hl.bind("SUPER + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind("SUPER + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
	hl.bind("SUPER + CTRL + " .. key, hl.dsp.exec_cmd(HYPRSCRIPTS .. "/moveTo.sh " .. i))
	end

	hl.bind("SUPER + Tab", hl.dsp.focus({ workspace = "m+1" }))
	hl.bind("SUPER + SHIFT + Tab", hl.dsp.focus({ workspace = "m-1" }))

	-- Move window pixel
	hl.bind("SUPER + CTRL + left", hl.dsp.window.move({ x = -100, y = 0, relative = true }))
	hl.bind("SUPER + CTRL + right", hl.dsp.window.move({ x = 100, y = 0, relative = true }))
	hl.bind("SUPER + CTRL + down", hl.dsp.window.move({ x = 0, y = 100, relative = true }))
	hl.bind("SUPER + CTRL + up", hl.dsp.window.move({ x = 0, y = -100, relative = true }))

	hl.bind("SUPER + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
	hl.bind("SUPER + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

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
