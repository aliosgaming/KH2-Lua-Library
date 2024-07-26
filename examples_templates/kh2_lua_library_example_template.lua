LUAGUI_NAME = ""
LUAGUI_AUTH = ""
LUAGUI_DESC = ""

local kh2lib = require("kh2lib")
RequireKH2LibraryVersion(1)
-- RequirePCGameVersion()

local CanExecute = kh2lib.CanExecute

function _OnInit()
    -- Log("My Script 1.0.5")
end

function _OnFrame()
    if not CanExecute then
        return
    end

    -- (your code here)
end
