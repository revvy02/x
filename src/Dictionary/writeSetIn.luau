local isEmpty = require(script.Parent.Parent.Util.isEmpty)
local set = require(script.Parent.set)

local function writeSetIn(tbl, keys, value, preserveEmptyNode)
	local function _update(t, i)
		local key = keys[i]
		local isLast = i == #keys

		if isLast then
			local finalNodeValue = set(t, key, value)

			if not preserveEmptyNode and isEmpty(finalNodeValue) then
				return nil
			end

			return finalNodeValue
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

return writeSetIn
