#!/usr/bin/env lua

local lfs = require('lfs')

Pwd = lfs.currentdir()

local script_dir_path = debug.getinfo(1).short_src
local workflow_path = string.match(script_dir_path, '.*manager/.-')
--
if workflow_path then
	lfs.chdir(workflow_path)
end

require('src')
