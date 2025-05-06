local set = require(script.Parent.set)

local function updateIn(tbl, keys, updater)
	local function _update(t, i)
		local key = keys[i]
		local isLast = i == #keys

		if isLast then
			return set(t, key, updater(t[key]))
		else
			return set(t, key, _update(t[key], i + 1))
		end
	end

	return _update(tbl, 1)
end

return updateIn
