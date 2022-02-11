local open = require('src.options.open')
local default = require('src.options.default')
local options = {}
-- default
-- react
-- jest
-- cypress


options.open = open.render_open_project
options.default = default.create_default_project

return options
