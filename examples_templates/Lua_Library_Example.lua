--Some "KH2 Steam Global" Variables
vars = {
	Now = 0x0717008, --Current Location
	Sve = 0x2A0C4C0,  --Saved Location
	Save = 0x09A9830, --Save File
	Obj0Pointer = 0x2A24FB0, --00objentry.bin Pointer Address
	Sys3Pointer = 0x2AE5DD0, --03system.bin Pointer Address
	Btl0Pointer = 0x2AE5DD8, --00battle.bin Pointer Address
	ARDPointer = 0x2A0F7A8, --ARD Pointer Address
	Music = 0x0ABACC4,      --Background Music
	Pause = 0x0ABB7F8,      --Ability to Pause
	React = 0x2A110E2,      --Reaction Command
	Cntrl = 0x2A17168,      --Sora Controllable
	Timer = 0x0ABB7D0,
	Songs = 0x0B65CF4,    --Atlantica Stuff
	GScre = 0x072B130,    --Gummi Score
	GMdal = 0x072B2C4,    --Gummi Medal
	GKill = 0x0AF70C6,    --Gummi Kills
	CamTyp = 0x0718CA8,   --Camera Type
	GamSpd = 0x0717424,   --Game Speed
	CutNow = 0x0B64F18,   --Cutscene Timer
	CutLen = 0x0B64F34,   --Cutscene Length
	CutSkp = 0x0B64F1C,   --Cutscene Skip
	BtlTyp = 0x2A11384,   --Battle Status (Out-of-Battle, Regular, Forced)
	BtlEnd = 0x2A0FC60,   --End-of-Battle camera & signal
	TxtBox = 0x074DF20,   --Last Displayed Textbox
	DemCln = 0x2A0F834,   --Demyx Clone Status (might have to do with other mission status/signal?)
	Slot1 = 0x2A23518, --Unit Slot 1
	NextSlot = 0x278,
	Point1   = 0x2A0F9C8,
	NxtPoint = 0x50,
	Gauge1   = 0x2A0FAB8,
	NxtGauge = 0x48,
	Menu1    = 0x2A11090, --Menu 1 (main command menu)
	NextMenu = 0x8,
	Obj0 = ReadLong(Obj0Pointer),
	Sys3 = ReadLong(Sys3Pointer),
	Btl0 = ReadLong(Btl0Pointer),
	MSN = 0x0BF3340
}

return vars