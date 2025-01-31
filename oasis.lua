
-- bootleg require
local rawgit = 'https://raw.githubusercontent.com'
local repo   = 'kagehana/oasis'
local branch = 'refs/heads/main'

local function get(fname)
    return loadstring(game:HttpGet('%s/%s/%s/%s.lua'):format(rawgit, repo, branch, fname))
end

-- tools
local class = get('class')

-- classes
local window  = class('window')
local tab     = class('tab')
local group   = class('group')
local toggle  = class('toggle')
local slider  = class('slider')
local query   = class('query')
local text    = class('text')
local options = class('options')
local palette = class('palette')

-- to be continued
