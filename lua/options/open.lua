local lfs = require('lfs')
local home = os.getenv('HOME')
local tmuxinator_path = (home..'/.config/tmuxinator/')

local function create_list()
	local list = {}
	for file in lfs.dir(tmuxinator_path) do
		if string.sub(file, 1, 1) ~= '.' then
			local file_without_extension = string.match(file, '%w+')
			table.insert(list, file_without_extension)
		end
	end
	return list
end

local function render_open_project()
	os.execute('clear')
	print('----------')
	print('Open Project')
	print('Choose a project to open:')
	print('----------')

	local project_list = create_list()

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
		os.execute('tmuxinator '.. file_selected)
	end

end

render_open_project()
