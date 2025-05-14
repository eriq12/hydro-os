#!/usr/bin/env lua
local menu = require("menu")
local executable = {
	["Shutdown"] = "/usr/share/hypr-hydro-os/scripts/hypr_power/hypr_shutdown",
	["Reboot"] = "/usr/share/hypr-hydro-os/scripts/hypr_power/hypr_reboot",
	["Log out"] = "/usr/share/hypr-hydro-os/scripts/hypr_power/hypr_logout",
	["Cancel"] = "",
}

local options = { "Shutdown", "Reboot", "Log out", "Cancel" }

local s = menu:bring_menu("Power menu", options)

os.execute(executable[s])
