local open = require('src.options.open')
local default = require('src.options.default')
local react = require('src.options.react')
local remove = require('src.options.remove')
local quit = require('src.options.quit')
local options = {}

options.open = open.render_open_project
options.default = default.create_default_project
options.react = react.create_react_project
options.remove = remove.render_remove_project
options.quit = quit.confirmation

return options
