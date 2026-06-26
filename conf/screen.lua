-- =======================================================================================
-- Monitor configuration
-- =======================================================================================

-- Small screen (HDMI-A-1)
hl.monitor({
	output = "HDMI-A-1",
	mode = "1920x1080@60",
	position = "0x730",
	scale = 1,
})

-- Main screen 2560x1440 240Hz with HDR (DP-1)
hl.monitor({
	output = "DP-1",
	mode = "2560x1440@240",
	position = "1920x560",
	scale = 1,
	bitdepth = 10,
	cm = "hdr", -- "hdr" or "srgb"
	icc = "/usr/share/color/icc/XG27AQDMG_custom.icc",
	sdrbrightness = 3,
	sdrsaturation = 1.4,
})

-- Vertical screen (DP-2), rotated 270° (transform 3)
hl.monitor({
	output = "DP-2",
	mode = "2560x1440@160",
	position = "4480x0",
	scale = 1,
	transform = 3, -- 3 = 270° (WL_OUTPUT_TRANSFORM_270)
})

-- Enable variable refresh rate: 0 = off, 1 = always, 2 = fullscreen only
hl.config({
	misc = {
		vrr = 0,
	},
})
