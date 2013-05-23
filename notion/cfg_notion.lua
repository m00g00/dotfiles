--
-- Notion main configuration file
--
-- This file only includes some settings that are rather frequently altered.
-- The rest of the settings are in cfg_notioncore.lua and individual modules'
-- configuration files (cfg_modulename.lua). 
--
-- When any binding and other customisations that you want are minor, it is 
-- recommended that you include them in a copy of this file in ~/.notion/.
-- Simply create or copy the relevant settings at the end of this file (from
-- the other files), recalling that a key can be unbound by passing 'nil' 
-- (without the quotes) as the callback. For more information, please see 
-- the Notion configuration manual available from the Notion Web page.
--

-- Set default modifiers. Alt should usually be mapped to Mod1 on
-- XFree86-based systems. The flying window keys are probably Mod3
-- or Mod4; see the output of 'xmodmap'.
--META="Mod1+"
--ALTMETA=""

-- Terminal emulator
XTERM="urxvt"

-- Some basic settings
ioncore.set{
    -- Maximum delay between clicks in milliseconds to be considered a
    -- double click.
    --dblclick_delay=250,

    -- For keyboard resize, time (in milliseconds) to wait after latest
    -- key press before automatically leaving resize mode (and doing
    -- the resize in case of non-opaque move).
    --kbresize_delay=1500,

    -- Opaque resize?
    opaque_resize=true,

    -- Movement commands warp the pointer to frames instead of just
    -- changing focus. Enabled by default.
    --warp=true,
    
    -- Switch frames to display newly mapped windows
    --switchto=true,
    
    -- Default index for windows in frames: one of 'last', 'next' (for
    -- after current), or 'next-act' (for after current and anything with
    -- activity right after it).
    --frame_default_index='next',
    
    -- Auto-unsqueeze transients/menus/queries.
    --unsqueeze=true,
    
    -- Display notification tooltips for activity on hidden workspace.
    --screen_notify=true,
    
    -- Automatically save layout on restart and exit.
    --autosave_layout=true,
    
    -- Mouse focus mode; set to "sloppy" if you want the focus to follow the 
    -- mouse, and to "disabled" otherwise.
    --mousefocus="sloppy",

    -- Controls Notion's reaction to stacking requests sent by clients. Set to
    -- "ignore" to ignore these requests, and to "activate" to set the activity
    -- flag on a window that requests to be stacked "Above".
    --window_stacking_request="ignore",
}


-- Load default settings. The file cfg_defaults loads all the files
-- commented out below, except mod_dock. If you do not want to load
-- something, comment out this line, and uncomment the lines corresponding
-- the the modules or configuration files that you want, below.
-- The modules' configuration files correspond to the names of the 
-- modules with 'mod' replaced by 'cfg'.
--dopath("cfg_defaults")

-- Load configuration of the Notion 'core'. Most bindings are here.
dopath("cfg_notioncore")

-- Load some kludges to make apps behave better.
dopath("cfg_kludges")

-- Define some layouts. 
dopath("cfg_layouts")

-- Load some modules. Bindings and other configuration specific to modules
-- are in the files cfg_modulename.lua.
dopath("mod_query")
dopath("mod_menu")
dopath("mod_tiling")
--dopath("mod_statusbar")
--dopath("statusbar_wsname")
dopath("mod_dock")
dopath("mod_sp")
--dopath("mod_notionflux")
dopath("mod_xinerama")
dopath("mod_xrandr")
--dopath("move_current")
dopath("switch_bindings")

dopath("min_tabs")

dopath("exec_show")

--dopath("look_simpleblue")
dopath("look_tiny")


--
-- Common customisations
--

-- Uncommenting the following lines should get you plain-old-menus instead
-- of query-menus.

--defbindings("WScreen", {
--    kpress(ALTMETA.."F12", "mod_menu.menu(_, _sub, 'mainmenu', {big=true})"),
--})
--
--defbindings("WMPlex.toplevel", {
--    kpress(META.."M", "mod_menu.menu(_, _sub, 'ctxmenu')"),
--})

--defbindings("WFrame", {
--    bdoc("Close the object indicated by the tab."),
--    mclick("Button2@tab", "WRegion.rqclose_propagate(_, _sub)"),
--})

defbindings("WScreen", {

    -- Switching workspaces can be done from anywhere using Mod1 and
    -- the wheel, or without the keyboard by using the wheel over
    -- the left, right or bottom edges of the screen, or over a border
    -- or an empty frame.
    --
    -- (Although a couple of the looks don't have any space at edges
    --  of the screen, most of them do.)
    --mpress("Button4", "WScreen.switch_prev(_)"),
    --mpress("Button5", "WScreen.switch_next(_)"),
  
    -- When a WClientWin is set to fullscreen mode, the mouse
    -- can do little about it unless there happen to be gaps
    -- where the "screen" area shines through.  Since this is
    -- often the case esp. with fullscreen terminal emulators, I've
    -- included button2 to exit fullscreen mode, and button3
    -- brings up the main menu by default in cfg_bindings.
    --mpress("Button2", "WClientWin.set_fullscreen(_sub, 'toggle')"),
})

defbindings("WFrame", {
    -- Use the wheel over the tab bar to scroll through windows in a frame.
    -- Oddly enough, it still works if you've hidden the tab bar.
    -- Just use the wheel over the top edge of the screen.
    -- Or use Mod4 and the wheel to avoid having to aim at anything.
    mpress("Button5@tab", "WScreen.switch_next(_)"),
    mpress("Button4@tab", "WScreen.switch_prev(_)"),

    --mpress(META.."Button4", "WScreen.switch_prev(_)"),
    --mpress(META.."Button5", "WScreen.switch_next(_)"),

    mpress("Button5", "_:parent():switch_next()"),
    mpress("Button4", "_:parent():switch_prev()"),

    --mpress(META.."Shift+Button4", "WScreen.switch_next(_)"),
    --mpress(META.."Shift+Button5", "WScreen.switch_prev(_)"),

    kpress(META.."Shift+F9", "_:attach_new({type=\"WGroupWS\", switchto=true}):attach_new({type=\"WTiling\", sizepolicy=\"full\", bottom=true})"),
    kpress(META.."Control+Shift+F9", "_:attach_new({type=\"WGroupWS\", switchto=true})"),
})

