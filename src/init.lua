local options = require('src.options')

print(arg[1])

if arg[1] == '-o' then
	options.open()
end
