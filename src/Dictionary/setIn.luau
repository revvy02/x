local set = require(script.Parent.set)

local function setIn(tbl, keys, v)
	local function _update(t, i)
		local key = keys[i]
		local isLast = i == #keys

		if isLast then
			return set(t, key, v)
		else
			return set(t, key, _update(t[key], i + 1))
		end
	end

	return _update(tbl, 1)
end

return setIn
