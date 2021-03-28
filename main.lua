function __imDir()
	local dir = lfs.currentdir();
	local dirs = {};
	local c = 0;
	local s = "";
	for a in string.gmatch(dir, ".") do
		if a ~= "/" then
			s = s .. a;
			dirs[c] = s;
		else
			s = "";
			c = c + 1;
		end
	end
	return print(__choices["lightgreen"] .. dirs[#dirs])
end
__lookup["imdir"] = function()
	max_args = 1; min_args = 1; system.checkArgs();
	
	__imDir()
	xpcall(__main, __error)
end
