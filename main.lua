require 'lfs'
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
	return dirs[#dirs];
end
