local example
local float

_G.import({'example',example}, {'float',float}) --[[ Imports your desired packages. You must have a variable to set it as, or it will not work.
	Note: If you want more packages at the same time, every package must be in curly brackets ( {} ) or else it WILL NOT work.
]]--

example.print(float.toFloat(7))