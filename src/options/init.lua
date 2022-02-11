local open = require('src.options.open')
local default = require('src.options.default')
local react = require('src.options.react')
local options = {}
-- jest
-- cypress


options.open = open.render_open_project
options.default = default.create_default_project
options.react = react.create_react_project

return options
