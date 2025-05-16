#!/usr/bin/env lua
local menu = {}

function menu:clean_string(str)
	str = string.gsub(str, "^%s+", "")
	str = string.gsub(str, "%s+$", "")
	return string.gsub(str, "[\n]+", " ")
end

function menu:bring_menu(prompt, options)
	local options_string = ""
	local length = 1
	for _, value in pairs(options) do
		options_string = options_string .. value .. "\n"
		length = length + 1
	end

	options_string = options_string:sub(1, -2)

	local command = "echo -e '" .. options_string .. "' | wofi -dmenu -i -p '" .. prompt .. "'"
	local f = assert(io.popen(command, "r"))
	local s = menu:clean_string(assert(f:read("*a")))
	f:close()
	return s
end

return menu
