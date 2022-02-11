local file_content = {}

local tests = {
	jest = 'npm test',
	cypress = 'npm run cy:open',
}

local testArg = ''

if arg[2] then
	testArg = arg[2]:gsub('-', '')
	for k, v in pairs(tests) do
		if testArg == k then
			testArg = v
		end
	end
end

file_content.default = function(file, name, root, editor)
	if editor == 'nvim' then
		file:write(
			'name: '..name..'\n',
			'root: '..root..'\n',
			'windows: \n',
			'  - editor: \n',
			'      layout: even-horizontal \n',
			'      panes: \n',
			'        - nvim -c \':q\' ; nvim \n',
			'        -  \n',
			'  - notes: \n',
			'  - test: '..testArg..' \n'
			)
	else
		file:write(
			'name: '..name..'\n',
			'root: '..root..'\n',
			'windows: \n',
			'  - editor: \n',
			'      layout: even-horizontal \n',
			'      panes: \n',
			'        - '..editor..'\n',
			'        -  \n',
			'  - notes: \n',
			'  - test: '..testArg..' \n'
			)

	end
end

file_content.react = function(file, name, root, editor)
	if editor == 'nvim' then
		file:write(
			'name: '..name..'\n',
			'root: '..root..'\n',
			'windows: \n',
			'  - editor: \n',
			'      layout: even-horizontal \n',
			'      panes: \n',
			'        - nvim -c \':q\' ; nvim src\n',
			'        -  \n',
			'  - notes: \n',
			'  - server: npm start\n',
			'  - test: '..testArg..' \n'
			)
	else
		file:write(
			'name: '..name..'\n',
			'root: '..root..'\n',
			'windows: \n',
			'  - editor: \n',
			'      layout: even-horizontal \n',
			'      panes: \n',
			'        - '..editor..'\n',
			'        -  \n',
			'  - notes: \n',
			'  - server: npm start\n',
			'  - test: '..testArg..' \n'
			)

	end
end

return file_content
