local options = require('src.options')
local version = 22.2

if arg[1] == '-o' then
	options.open()
end

if arg[1] == '-d' then
	options.default()
end

if arg[1] == '-r' then
	options.react()
end

if arg[1] == '-v' or arg[1] == '-V' then
	print(version)
end

if not arg[1] or arg[1] == '-h' then
	os.execute('clear')
	print()
	print('Use the arguments')
	print()
	print('\'lua workflow -[first_arg] --[secound_arg]\'')
	print()
	print('     first_arg: ')
	print('          -d : to create default workflow')
	print('          -r : to create react workflow')
	print()
	print('     secound_arg')
	print('          --jest : to create workflow with jest pane')
	print('          --cypress : to create workflow with cypress pane')
end
