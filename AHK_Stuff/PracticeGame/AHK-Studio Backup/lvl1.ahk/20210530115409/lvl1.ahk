Gui, Add, Picture, x2 y-1 w110 h100 , %A_WorkingDir%\Resources\Images\CharacterIcon.png
Gui, Add, Text, x112 y-1 w250 h100 , Text
Gui, Add, Text, x2 y99 w360 h20 , Text
Gui, Add, Picture, x542 y-1 w130 h120 , %A_WorkingDir%\Resources\Images\CharacterIcon.png
Gui, Add, Text, x362 y-1 w180 h120 +Right, Text
Gui, Add, Text, x2 y119 w150 h200 , Text
Gui, Add, Text, x502 y119 w170 h200 , Text
Gui, Add, Button, x2 y329 w150 h40 , TEST
Gui, Add, Button, x342 y329 w150 h40 , Button
Gui, Add, Button, x492 y329 w170 h40 , Button
Gui, Add, Text,vTEST x162 y129 w330 h190 , Place
Gui, Add, Button, x152 y329 w150 h40 , Button
Gui, Show, x126 y87 h384 w669, DD - Dumb Dungeon
Return

GuiClose:
MsgBox,4,DD - Dumb Dungeon,Are you sure you want to quit?
IfMsgBox Yes
	ExitApp
IfMsgBox No
	Return

TEST:
FileReadLine, line, %A_WorkingDir%\Levels\lvl1\variables\Stages.txt, 3
GuiControl, Text, TEST ,% "Input Slot "