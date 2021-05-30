Gui, Color, 6b6b6b
Gui, Add, Picture, x2 y-1 w110 h100 , %A_WorkingDir%\Resources\Images\CharacterIcon.png
Gui, Add, Text,vName x112 y-1 w250 h100 ,
Gui, Add, Text, x2 y99 w360 h20 , Text
Gui, Add, Picture, x542 y-1 w130 h120 , %A_WorkingDir%\Resources\Images\CharacterIcon.png
Gui, Add, Text, x362 y-1 w180 h120 +Right, Text
Gui, Add, Text, x2 y119 w150 h200 , Text
Gui, Add, Text, x502 y119 w170 h200 , Text
Gui, Add, Button, x2 y329 w150 h40 , Exit
Gui, Add, Button, x342 y329 w150 h40 , Defend
Gui, Add, Button, x492 y329 w170 h40 , Attack
Gui, Add, Text,vLocation x162 y129 w330 h190 ,
Gui, Add, Button, x152 y329 w150 h40 , Flee
Gui, Show, x126 y87 h384 w669, DD - Dumb Dungeon

WinWaitActive DD - Dumb Dungeon
FileReadLine, line, %A_WorkingDir%\Levels\lvl1\variables\Stages.txt, 1
GuiControl,, Location ,%line%

IniRead, Name, %A_WorkingDir%\Configs\User.ini, Info, Username
GuiControl,, Name ,%Name%
return

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

