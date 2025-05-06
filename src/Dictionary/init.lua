--!strict
--[=[
	@class Dictionary

	Dictionaries are a type of data structure that can be used to store key-value pairs.

	```lua
	local dictionary = {
		cats = 2,
		dogs = 1
	}

	print(dictionary.cats) -- 2
	```
]=]
local Dictionary = {
	copy = require(script.copy),
	copy_deep = require(script.copyDeep),
	count = require(script.count),
	entries = require(script.entries),
	eq = require(script.equals),
	eq_deep = require(script.equalsDeep),
	every = require(script.every),
	filter = require(script.filter),
	flatten = require(script.flatten),
	flip = require(script.flip),
	freeze = require(script.freeze),
	freeze_deep = require(script.freezeDeep),
	from_arrs = require(script.fromArrays),
	from_entries = require(script.fromEntries),
	has = require(script.has),
	includes = require(script.includes),
	keys = require(script.keys),
	map = require(script.map),
	merge = require(script.merge),
	merge_deep = require(script.mergeDeep),
	remove_key = require(script.removeKey),
	remove_keys = require(script.removeKeys),
	remove_value = require(script.removeValue),
	remove_values = require(script.removeValues),
	set = require(script.set),
	some = require(script.some),
	update = require(script.update),
	values = require(script.values),
	with_keys = require(script.withKeys),
}

Dictionary.join = Dictionary.merge
Dictionary.join_deep = Dictionary.merge_deep

return Dictionary
