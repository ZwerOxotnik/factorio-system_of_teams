if script.level.campaign_name then return end -- Don't init if it's a campaign

local event_handler = require("__zk-lib__/static-libs/lualibs/event_handler_vZO.lua")


---@type table<string, module>
local modules = {}
modules.better_commands = require("models/BetterCommands/control")
modules.system_of_teams = require("models/system_of_teams")


modules.better_commands:handle_custom_commands(modules.system_of_teams) -- adds commands

event_handler.add_libraries(modules)


