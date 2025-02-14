-- metadata for classes
local meta = {}

function meta:__call(...)
    return (setmetatable({}, self)):__init(...)
end

function meta:__tostring()
    return ('class: ' .. self.__name)
end

-- class system implementation
local function class(name, init, ...)
    local new   = setmetatable({}, meta)
    local bases = {...}

    for _, base in ipairs(bases) do
        for k1, v1 in pairs(base) do
            if not k1:find('^__') then
                new[k1] = v1
            end
        end
    end

    new.__name  = name
    new.__bases = bases
    new.__index = new

    return new
end

-- here you go
return class
