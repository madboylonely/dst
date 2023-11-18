
--LoadPOFile("vietnamese.po", "vi")
--modimport("scripts/main.lua")

mainPOfilename   = "vietnamese.po"
selectedLanguage = "vi"

LoadPOFile(mainPOfilename, selectedLanguage)

io      = GLOBAL.io
assert  = GLOBAL.assert
rawget  = GLOBAL.rawget



-- In order to load a custom language, you must make a .po file for that language and load it here.

--LoadPOFile("ukrainian.po", "ua")

-- More information on this process can be found here: http://forums.kleientertainment.com/index.php?/topic/10292-creating-a-translation-using-the-po-format/
_G = GLOBAL

mods = _G.rawget(_G, "mods")
if not mods then
	mods = {}
	_G.rawset(_G, "mods", mods)
end
_G.mods = mods

mods.UkrainianLang = {
	modinfo = modinfo,
	StorePath = MODROOT,

	MainPoFile = "vietnamese.po",
	SelectedLanguage = "vi"
}

local SelectedLanguage = "vi"

io = _G.io
STRINGS = _G.STRINGS
tonumber = _G.tonumber
tostring = _G.tostring
assert = _G.assert
rawget = _G.rawget
require = _G.require
dumptable = _G.dumptable
deepcopy = _G.deepcopy
TheSim = _G.TheSim
TheNet = _G.TheNet
package = _G.package
rawget = _G.rawget
rawset = _G.rawset

--disabling mode notificaion
_G.getmetatable(TheSim).__index.ShouldWarnModsLoaded = function() 
	return false 
end

_G.ModManager.RegisterPrefabs=NewRegisterPrefabs

modimport("scripts/main.lua")


-------------------------------------------------------------------------------
------------------------------------ UTILS: -----------------------------------
-------------------------------------------------------------------------------

-- split string using given separator
function split(str, sep)
  	local fields, first = {}, 1
	str = str..sep
	for i=1,#str do
		if str:sub(i,i)==sep then
		fields[#fields+1] = str:sub(first,i-1)
			first=i+1
		end
	end
	return fields
end