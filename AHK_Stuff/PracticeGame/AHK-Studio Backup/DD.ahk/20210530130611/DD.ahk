﻿IniRead, Color, %A_WorkingDir%\Configs\DarkMode.ini, DarkMode, Value
GuiControl,, Color ,%Color%
Gui, Color, 6b6b6b
Gui, Add, Tab, x2 y-1 w390 h370 , Tab1|Tab2
Gui, Add, Text, x12 y29 w360 h30 +Center, Dumb Dungeon v1.0
Gui, Add, Text, x12 y129 w360 h170 +Center, Text
Gui, Add, Button, x142 y309 w100 h30 , Start
Gui, Add, Button, x302 y309 w70 h30 , Discord
Gui, Add, Button, x12 y309 w70 h30 , Exit
Gui, Add, Picture, x152 y69 w80 h50 , %A_WorkingDir%\Resources\Images\BaseIcon.png
Gui, Tab, Tab2
Gui, Add, CheckBox, x12 y29 w370 h30 , HardMode - For those who seek challenge
Gui, Add, CheckBox, x12 y69 w370 h30 , DarkUI - Darkness...
Gui, Add, CheckBox, x12 y109 w370 h30 , Cheat - Max LVL
Gui, Add, CheckBox, x12 y149 w370 h30 , Cheat - Infinite HP
Gui, Tab, Tab2
Gui, Add, Slider, x12 y189 w110 h30 , 25
Gui, Add, Text, x132 y189 w250 h30 , XP Modifier (Max left Default)
Gui, Add, Edit, x12 y259 w370 h20 vName, %Name%
Gui, Add, Text, x12 y229 w370 h20 , Name:
Gui, Tab, Tab2
Gui, Add, Button, x12 y289 w90 h30 gButtonChange, Change
Gui, Show, x520 y249 h366 w395, DD - Dumb Dungeon

WinWaitActive DD - Dumb Dungeon
IniRead, Name, %A_WorkingDir%\Configs\User.ini, Info, Username
GuiControl,, Name ,%Name%
return

; MAIN MENU

GuiClose:
MsgBox,4,DD - Dumb Dungeon,Are you sure you want to quit?
IfMsgBox Yes
	ExitApp
IfMsgBox No
	Return

ButtonExit:
MsgBox,4,DD - Dumb Dungeon,Are you sure you want to quit?
IfMsgBox Yes
	ExitApp
IfMsgBox No
	Return

ButtonDiscord:
Run, opera.exe "Yourinvitehere" " --new-window "

ButtonStart:
Run, %A_WorkingDir%\lvl1.ahk
ExitApp

; SETTINGS

ButtonChange:
gui, submit, nohide
IniWrite, %Name%, %A_WorkingDir%\Configs\User.ini, Info, Username