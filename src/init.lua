local options = require('src.options')
local version = 22.2

if arg[1] == '-o' or arg[1] == '-open' then
	options.open()
end

if arg[1] == '-d' or arg[1] == '-default' then
	options.default()
end

if arg[1] == '-r' or arg[1] == '-react' then
	options.react()
end

if arg[1] == '-remove' then
	options.remove()
end

if arg[1] == '-q' or arg[1] == '-quit' then
	options.quit()
end

if arg[1] == '-v' or arg[1] == '-version' then
	print(version)
end

if not arg[1] or arg[1] == '-h' or arg[1] == '-help' then
	print()
	print('Use the arguments')
	print()
	print('\'lua workflow -[first_arg] --[secound_arg]\'')
	print()
	print('     first_arg: ')
	print('          -d : to create default workflow')
	print('          -r : to create react workflow')
	print()
	print('          -remove : to remove workflow')
	print('          -v -V : to show the version')
	print('          -q : to stop workflow')
	print()
	print('     secound_arg')
	print('          --jest : to create workflow with jest pane')
	print('          --cypress : to create workflow with cypress pane')
end
