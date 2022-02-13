#!/usr/bin/env lua

local lfs = require('lfs')

local script_dir_path = debug.getinfo(1).short_src
local workflow_path = string.match(script_dir_path, '.*manager/.-')

lfs.chdir(workflow_path)

require('src')
