-- Authors: Unknown
-- License: Unknown
-- Last Changed: Unknown
--
-- look_tiny.lua: an ion3 style for small screens...like mine :(
-- based on look_minimalist.lua

if not gr.select_engine("de") then return end

de.reset()

de.defstyle("*", {
    bar_inside_border = false,
    background_colour = "#000000",
    foreground_colour = "#ffffff",
    padding_colour = "#000000",
    padding_pixels = 1,
    highlight_pixels = 0,
    shadow_pixels = 0,
    border_style = "inlaid",
    font = "-*-lucida-medium-r-normal-*-10-*-*-*-*-*-*-*",
    text_align = "left",
    transparent_background = true,
})

de.defstyle("frame", {
    based_on = "*",
    spacing = 2,
})

de.defstyle("frame-tiled", {
	
	de.substyle("active", {
		padding_colour = "#353577",
	})
})


de.defstyle("frame-floating", {
    based_on = "frame",
    highlight_colour = "#505050",
    shadow_colour = "#505050",
    de.substyle("active", {
	highlight_colour = "#353577",
	shadow_colour = "#353577",
    }),
    highlight_pixels = 1,
    shadow_pixels = 1,
    padding_pixels = 0,
    spacing = 0
})

de.defstyle("tabstyle", {
    based_on = "*",
    background_colour = "#222222",
    de.substyle("active-unselected", {
            padding_colour = "#353577",
            background_colour = "#000044",
    }),
    de.substyle("inactive-selected", {
            padding_colour = "#707070",
            background_colour = "#505050",
    }),
    de.substyle("active-selected", {
            padding_colour = "#5555cc",
            background_colour = "#223399",
    }),
})

de.defstyle("tab", {
    based_on = "tabstyle",
    spacing = 2,
    padding_pixels=1,
})

de.defstyle("tab-menuentry", {
    based_on = "tabstyle",
    font = "-*-lucida-medium-r-normal-*-12-*-*-*-*-*-*-*",
    text_align = "left",
})

de.defstyle("tab-menuentry-big", {
    based_on = "tab-menuentry",
    font = "-*-lucida-medium-r-normal-*-24-*-*-*-*-*-*-*",
})

de.defstyle("input", {
    based_on = "*",
    padding_pixels = 1,
    font = "-*-lucida-medium-r-normal-*-14-*-*-*-*-*-*-*",
    de.substyle("*-cursor", {
        background_colour = "#00ff00",
        foreground_colour = "#000000",
    }),
    de.substyle("*-selection", {
        foreground_colour = "#5555cc",
    }),
})

de.defstyle("stdisp", {
    based_on = "tab",
    background_colour = "#000000",
    padding_colour = "#000000",
    de.substyle("important", { foreground_colour = "#ffff00", }),
    de.substyle("critical", { foreground_colour = "#ff0000", }),
    de.substyle("gray", { foreground_colour = "#505050", }),
    de.substyle("red", { foreground_colour = "#ff0000", }),
    de.substyle("green", { foreground_colour = "#00ff00", }),
    de.substyle("blue", { foreground_colour = "#0000ff", }),
    de.substyle("cyan", { foreground_colour = "#00ffff", }),
    de.substyle("magenta", { foreground_colour = "#ff00ff", }),
    de.substyle("yellow", { foreground_colour = "#ffff00", }),
})

gr.refresh()
