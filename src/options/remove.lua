local remove = {}
local lfs = require('lfs')
local home = os.getenv('HOME')
local tmuxinator_path = (home..'/.config/tmuxinator/')

remove.create_list = function()
	local list = {}
	for file in lfs.dir(tmuxinator_path) do
		if string.sub(file, 1, 1) ~= '.' then
			local file_without_extension = string.match(file, '(.+)%.')
			table.insert(list, file_without_extension)
		end
	end
	return list
end

remove.finished = function(name)
	os.execute('clear')
	print('Remove new project!\n')
	print('Project name: '.. name)
	print()
	io.write('(press ENTER to exit)')
	io.read()
end

remove.confirmation = function(name)
	print('----------')
	print('You really want REMOVE this project?(y/n)')
	print('Project Name: '..name)
	local key_pressed = io.read()
	if key_pressed == 'y' then
		os.execute('rm '..tmuxinator_path..name..'.yml')
		remove.finished(name)
	else
		os.execute('exit')
		os.execute('clear')
	end
end

remove.render_remove_project = function()
	os.execute('clear')
	print('----------')
	print('Remove Project')
	print('Choose a project to Remove:')
	print('----------')

	local project_list = remove.create_list()

	for k, v in pairs(project_list) do
		print(k, v)
	end

	print('\n')
	print('press \'q\' to quit')
	local key_pressed = io.read()

	if key_pressed == 'q' then
		os.execute('exit')
		os.execute('clear')
	else
		local file_selected = project_list[tonumber(key_pressed)]
		remove.confirmation(file_selected)
	end

end

return remove
