local Places = {
	[4704006941] = 	{"https://raw.githubusercontent.com/Blue-v3rm/Telos/master/4704006941.lua"},
}

setmetatable(Places,{__index = function(t, k)
	for i, v in pairs(t) do
		if typeof(v) == 'table' then
			for ii, vv in pairs(v) do
				if vv == k then
					return v
				end
			end
		end
	end
	return rawget(t,k)
end})

return {Places,function(PlaceId)
	return Places[PlaceId]
end}
