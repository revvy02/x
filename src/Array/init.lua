--!strict
--[=[
	@class Array

	An array is a table consisting of index-value pairs. You don't need to
	manually specify the indices when you create an array.

	```lua
	local array = {
		"hello",
		"world",
	}
	```

	<br><br>

	#### Aliases

	`List`
]=]
local Array = {
	at = require(script.at),
	concat = require(script.concat),
	concat_deep = require(script.concatDeep),
	copy = require(script.copy),
	copy_deep = require(script.copyDeep),
	count = require(script.count),
	create = require(script.create),
	dedupe = require(script.dedupe),
	diff = require(script.difference),
	diff_symm = require(script.differenceSymmetric),
	eq = require(script.equals),
	eq_deep = require(script.equalsDeep),
	every = require(script.every),
	filter = require(script.filter),
	find = require(script.find),
	find_last = require(script.findLast),
	find_where = require(script.findWhere),
	find_where_last = require(script.findWhereLast),
	first = require(script.first),
	flatten = require(script.flatten),
	freeze = require(script.freeze),
	freeze_deep = require(script.freezeDeep),
	includes = require(script.includes),
	insert = require(script.insert),
	is = require(script.is),
	last = require(script.last),
	map = require(script.map),
	pop = require(script.pop),
	push = require(script.push),
	reduce = require(script.reduce),
	reduce_right = require(script.reduceRight),
	remove_index = require(script.removeIndex),
	remove_indices = require(script.removeIndices),
	remove_val = require(script.removeValue),
	remove_vals = require(script.removeValues),
	reverse = require(script.reverse),
	set = require(script.set),
	shift = require(script.shift),
	shuffle = require(script.shuffle),
	slice = require(script.slice),
	some = require(script.some),
	sort = require(script.sort),
	splice = require(script.splice),
	to_set = require(script.toSet),
	unshift = require(script.unshift),
	update = require(script.update),
	zip = require(script.zip),
	zip_all = require(script.zipAll),
}

Array.join = Array.concat
Array.merge = Array.concat
Array.join_deep = Array.concat_deep
Array.merge_deep = Array.concat_deep
Array.append = Array.push
Array.prepend = Array.unshift
Array.index_of = Array.find
Array.has = Array.includes
Array.contains = Array.includes
Array.is_arr = Array.is

return Array
