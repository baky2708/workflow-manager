local default = {}

local file_content = require('src.file-content')
local HOME = os.getenv('HOME')
local EDITOR = os.getenv('EDITOR')
local tmuxinator_path = (HOME..'/.config/tmuxinator/')

default.render_default = function()
	os.execute('clear')
	print('----------')
	print('Create Default Project')
	print('----------')
end

default.get_name_project = function()
	print('Write name of project: ')
	return io.read()
end

default.get_root_project = function()
	print('Write path of root project: ')
	print('(enter with \".\" to reference the current file')
	local root_path = io.read()
	if root_path == '.' then
		return Pwd
	else
		return root_path
	end
end

default.create_file_project = function(name, root)
	local file = io.open(tmuxinator_path..name..'.yml','w')
	file_content.default(file, name, root, EDITOR)
	file:close()
end

default.finished = function(name, root)
	os.execute('clear')
	print('Create new project!\n')
	print('Project name: '.. name)
	print('Project root path : '.. root..'\n')
	print()
	io.write('(press ENTER to exit)')
	io.read()
end

default.create_default_project = function()
	default.render_default()
	local name_project = default.get_name_project()
	print('----------')
	local root_project = default.get_root_project()
	default.create_file_project(name_project, root_project)
	default.finished(name_project, root_project)
end
return default
