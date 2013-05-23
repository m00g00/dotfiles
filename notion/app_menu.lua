defmenu("Applications", {
    submenu("Accessibility", "Accessibility"),
    submenu("Accessories", "Accessories"),
    submenu("Games", "Games"),
    submenu("Graphics", "Graphics"),
    submenu("Internet", "Internet"),
    submenu("Office", "Office"),
    submenu("Programming", "Programming"),
    submenu("Science & Math", "Science & Math"),
    submenu("Sound & Video", "Sound & Video"),
    submenu("System Tools", "System Tools"),
})
defmenu("Accessibility", {
     menuentry("Orca", "ioncore.exec_on(_, 'orca --replace')"),
 })
defmenu("Accessories", {
     menuentry("7-Zip FM", "ioncore.exec_on(_, '7zFM')"),
     menuentry("ADesk Bar", "ioncore.exec_on(_, 'adeskbar')"),
     menuentry("Application Finder", "ioncore.exec_on(_, 'xfce4-appfinder')"),
     menuentry("Archive Manager", "ioncore.exec_on(_, 'file-roller ')"),
     menuentry("Avant Window Navigator", "ioncore.exec_on(_, 'avant-window-navigator')"),
     menuentry("Calculator", "ioncore.exec_on(_, 'gnome-calculator')"),
     menuentry("Desktop Search", "ioncore.exec_on(_, 'tracker-needle')"),
     menuentry("Disks", "ioncore.exec_on(_, 'gnome-disks')"),
     menuentry("Elementary Test", "ioncore.exec_on(_, 'elementary_test')"),
     menuentry("File Manager PCManFM", "ioncore.exec_on(_, 'pcmanfm ')"),
     menuentry("Graphical Disk Map", "ioncore.exec_on(_, 'gdmap')"),
     menuentry("Image Viewer", "ioncore.exec_on(_, 'gpicview ')"),
     menuentry("LXTerminal", "ioncore.exec_on(_, 'lxterminal')"),
     menuentry("Orca", "ioncore.exec_on(_, 'orca --replace')"),
     menuentry("Passwords and Keys", "ioncore.exec_on(_, '/usr/bin/seahorse')"),
     menuentry("Screenshot", "ioncore.exec_on(_, 'gnome-screenshot --interactive')"),
     menuentry("Vi IMproved", "ioncore.exec_on(_, 'gvim -f ')"),
     menuentry("gedit", "ioncore.exec_on(_, 'gedit ')"),
 })
defmenu("Games", {
     menuentry("AisleRiot Solitaire", "ioncore.exec_on(_, 'sol')"),
     menuentry("FreeCell Solitaire", "ioncore.exec_on(_, 'sol --freecell')"),
     menuentry("XScorch", "ioncore.exec_on(_, 'xscorch')"),
     menuentry("vitetris", "ioncore.exec_on(_, 'xterm -e tetris -w 80')"),
 })
defmenu("Graphics", {
     menuentry("GV", "ioncore.exec_on(_, 'gv')"),
     menuentry("Image Viewer", "ioncore.exec_on(_, 'gpicview ')"),
     menuentry("feh", "ioncore.exec_on(_, 'feh ')"),
 })
defmenu("Internet", {
     menuentry("Avahi SSH Server Browser", "ioncore.exec_on(_, '/usr/bin/bssh')"),
     menuentry("Avahi VNC Server Browser", "ioncore.exec_on(_, '/usr/bin/bvnc')"),
     menuentry("Chromium Nightly", "ioncore.exec_on(_, 'chromium-nightly ')"),
     menuentry("ELinks", "ioncore.exec_on(_, 'xterm -e /usr/bin/elinks ')"),
     menuentry("Firefox", "ioncore.exec_on(_, '/usr/lib/firefox/firefox ')"),
     menuentry("Firefox Nightly", "ioncore.exec_on(_, 'firefox-nightly ')"),
     menuentry("Firefox Nightly - Safe Mode", "ioncore.exec_on(_, 'firefox-nightly -safe-mode ')"),
     menuentry("HexChat", "ioncore.exec_on(_, 'sh -c \"hexchat --existing --url  || exec hexchat\"')"),
     menuentry("Links", "ioncore.exec_on(_, 'xlinks -g')"),
     menuentry("Luakit", "ioncore.exec_on(_, 'luakit ')"),
     menuentry("dwb", "ioncore.exec_on(_, 'dwb ')"),
 })
defmenu("Office", {
     menuentry("Dictionary", "ioncore.exec_on(_, 'gnome-dictionary')"),
     menuentry("GV", "ioncore.exec_on(_, 'gv')"),
     menuentry("apvlv", "ioncore.exec_on(_, 'apvlv ')"),
 })
defmenu("Programming", {
     menuentry("Elementary Test", "ioncore.exec_on(_, 'elementary_test')"),
     menuentry("FLUID", "ioncore.exec_on(_, 'fluid ')"),
     menuentry("OpenJDK Policy Tool", "ioncore.exec_on(_, '/usr/bin/policytool')"),
     menuentry("Qt4 Assistant ", "ioncore.exec_on(_, 'assistant-qt4')"),
     menuentry("Qt4 Designer", "ioncore.exec_on(_, 'designer-qt4')"),
     menuentry("Qt4 Linguist ", "ioncore.exec_on(_, 'linguist-qt4')"),
     menuentry("Qt4 QDbusViewer ", "ioncore.exec_on(_, 'qdbusviewer-qt4')"),
 })
defmenu("Science & Math", {
     menuentry("ConvertAll", "ioncore.exec_on(_, 'convertall')"),
 })
defmenu("Sound & Video", {
     menuentry("Audio Mixer", "ioncore.exec_on(_, 'xfce4-mixer')"),
     menuentry("Music Player", "ioncore.exec_on(_, 'lxmusic')"),
 })
defmenu("System Tools", {
     menuentry("Avahi Zeroconf Browser", "ioncore.exec_on(_, '/usr/bin/avahi-discover')"),
     menuentry("Bulk Rename", "ioncore.exec_on(_, '/usr/lib/Thunar/ThunarBulkRename ')"),
     menuentry("Configuration Editor", "ioncore.exec_on(_, 'gconf-editor')"),
     menuentry("Disk Usage Analyzer", "ioncore.exec_on(_, 'baobab')"),
     menuentry("Htop", "ioncore.exec_on(_, 'xterm -e htop')"),
     menuentry("Network Tools", "ioncore.exec_on(_, 'gnome-nettool')"),
     menuentry("System Log", "ioncore.exec_on(_, 'gnome-system-log')"),
     menuentry("Task Manager", "ioncore.exec_on(_, 'lxtask')"),
     menuentry("Terminator", "ioncore.exec_on(_, 'terminator')"),
     menuentry("Terminology", "ioncore.exec_on(_, 'terminology')"),
     menuentry("Termite", "ioncore.exec_on(_, 'termite')"),
     menuentry("Thunar File Manager", "ioncore.exec_on(_, 'thunar ')"),
     menuentry("UXTerm", "ioncore.exec_on(_, 'uxterm')"),
     menuentry("XTerm", "ioncore.exec_on(_, 'xterm')"),
     menuentry("Xfce Terminal", "ioncore.exec_on(_, 'xfce4-terminal')"),
     menuentry("dconf Editor", "ioncore.exec_on(_, 'dconf-editor')"),
     menuentry("rxvt-unicode", "ioncore.exec_on(_, 'urxvt')"),
 })
