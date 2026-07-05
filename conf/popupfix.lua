-- ---- GLOBAL FIX FOR EMPTY-TITLE POPUPS (dropdowns, toasts, tooltips) ----
-- Catches any app's transient unmanaged windows that flash and vanish,
-- not just Steam's.
hl.window_rule({
	name = "empty-title-popups-float",
	match = { title = "^$" },
	float = true,
	no_anim = true,
	no_focus = true,
})

-- ---- WINDOW RULES (launch apps on specific workspaces) ----
hl.window_rule({
	name = "windowrule-1",
	match = { class = "^(Vesktop)" },
	workspace = "3",
})
hl.window_rule({
	name = "windowrule-2",
	match = { class = "^(steam)" },
	workspace = "1",
	monitor = "HDMI-A-1", -- workspace 1 lives on HDMI-A-1 per your workspace_rule
})

-- ---- STEAM POPUP/DROPDOWN FIX ----
-- Steam's dropdown menus and friend-activity popups are unmanaged windows
-- with an empty title. Hyprland's default focus/animation handling causes
-- them to flash for one frame and immediately close. Pinning them to the
-- same monitor as the main Steam window (HDMI-A-1) stops them from
-- spawning misplaced on DP-1 or DP-2.
hl.window_rule({
	name = "steam-popups-float",
	match = { class = "^(steam)$", title = "^$" },
	float = true,
	no_anim = true,
	no_focus = true,
	monitor = "HDMI-A-1",
})

hl.window_rule({
	name = "steam-main-noanim",
	match = { class = "^(steam)$" },
	no_shadow = true,
})
