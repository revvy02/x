local set = require(script.Parent.set)

local function writeUpdateIn(tbl, keys, updater)
	local function _update(t, i)
		local key = keys[i]
		local isLast = i == #keys

		if isLast then
			return set(t, key, updater(t[key]))
		else
			-- create a table if there wasn’t one
			local child = t[key]
			if type(child) ~= "table" then
				child = {}
			end

			local newChild = _update(child, i + 1)
			return set(t, key, newChild)
		end
	end

	return _update(tbl, 1)
end

return writeUpdateIn
