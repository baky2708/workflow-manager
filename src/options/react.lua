local react = {}

local file_content = require('src.file-content')
local HOME = os.getenv('HOME')
local EDITOR = os.getenv('EDITOR')
local tmuxinator_path = (HOME..'/.config/tmuxinator/')

react.render_default = function()
	os.execute('clear')
	print('----------')
	print('Create React Project')
	print('----------')
end

react.get_name_project = function()
	print('Write name of project: ')
	return io.read()
end

react.get_root_project = function()
	print('Write path of root project: ')
	print('(enter with \".\" to reference the current file')
	local root_path = io.read()
	if root_path == '.' then
		return Pwd
	else
		return root_path
	end
end

react.create_file_project = function(name, root)
	local file = io.open(tmuxinator_path..name..'.yml','w')
	file_content.react(file, name, root, EDITOR)
	file:close()
end

react.finished = function(name, root)
	os.execute('clear')
	print('Create new project!\n')
	print('Project name: '.. name)
	print('Project root path : '.. root..'\n')
	print()
	io.write('(press ENTER to exit)')
	io.read()
end

react.create_react_project = function()
	react.render_default()
	local name_project = react.get_name_project()
	print('----------')
	local root_project = react.get_root_project()
	react.create_file_project(name_project, root_project)
	react.finished(name_project, root_project)
end
return react
