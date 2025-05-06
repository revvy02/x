--!strict
--[=[
	@class Set

	Sets are a collection of values. They are used to store unique values.
	They are essentially a dictionary, but each value is stored as a boolean.
	This means that a value can only be in a set once.

	```lua
	local set = { hello = true }

	local newSet = Add(set, "world") -- { hello = true, world = true }
	```
]=]
local set = {
	add = require(script.add),
	copy = require(script.copy),
	count = require(script.count),
	delete = require(script.delete),
	diff = require(script.difference),
	diff_symm = require(script.differenceSymmetric),
	filter = require(script.filter),
	from_arr = require(script.fromArray),
	has = require(script.has),
	intersection = require(script.intersection),
	is_subset = require(script.isSubset),
	is_superset = require(script.isSuperset),
	map = require(script.map),
	merge = require(script.merge),
	to_arr = require(script.toArray),
}

set.from_list = set.from_arr
set.join = set.merge
set.subtract = set.delete
set.union = set.merge

return set
