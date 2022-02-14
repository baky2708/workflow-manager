local quit = {}

quit.confirmation = function()
	local handle = io.popen('tmux display-message -p \'#S\'')
	local project_name = handle:read("*a")

	print('----------')
	print('You really want QUIT this project?(y/n)')
	print('Project Name: '..project_name)

	local key_pressed = io.read()

	if key_pressed == 'y' then
		os.execute('tmuxinator stop '..project_name)
	else
		os.execute('exit')
		os.execute('clear')
	end
	handle:close()
end

return quit
