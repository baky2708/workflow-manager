local options = require('src.options')

if arg[1] == '-o' then
	options.open()
end

if arg[1] == '-d' then
	options.default()
end

if arg[1] == '-r' then
	options.react()
end
