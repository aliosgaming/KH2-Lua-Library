LUAGUI_NAME = "KH2 Lua Library Example Commented"
LUAGUI_AUTH = "Alios"
LUAGUI_DESC = "An example Lua script for learning how to use the KH2 Lua Library"

local kh2lib = require("kh2lib") -- Imports the KH2 Lua Library, detects game version, and populates the `kh2lib` table
RequireKH2LibraryVersion(1) -- Declares the minimum version of the library required by this script
RequirePCGameVersion() -- Declares that this script was only written for the PC ports of KH2 (optional)

-- Local slots for things we want to use frequently (i.e. on every frame). This reduces lookup time.
local CanExecute = kh2lib.CanExecute
local Now = kh2lib.Now
local Save = kh2lib.Save

function _OnInit() -- Runs during game initialization, only once
    Log("Example script 1.0.0") -- Using Log() will use an appropriate console print call per platform
end

function _OnFrame() -- Runs once per frame, game will wait for code to finish before proceeding to next frame
    -- Only allows code to run if required conditions were met
    if not CanExecute then
        return
    end

    -- (Space Paranoids Post-Story Save code pulled from GoA Lua):
	local PrevPlace = ReadShort(Now + 0x30)
	if ReadByte(Save + 0x1EBE) > 0 then
		if PrevPlace == 0x0011 then
			WriteByte(Save + 0x1EBE, 1)
		elseif PrevPlace == 0x0511 then
			WriteByte(Save + 0x1EBE, 2)
		elseif PrevPlace == 0x0811 then
			WriteByte(Save + 0x1EBE, 3)
		end
	end
end
