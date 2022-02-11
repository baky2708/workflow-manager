local file_content = {}

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
			'  - terminal: npm start \n'
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
			'  - terminal: \n'
			)

	end
end

return file_content
