Gui, Add, Tab, x2 y-1 w390 h370 , Tab1|Tab2
Gui, Add, Text, x12 y29 w360 h30 +Center, Dumb Dungeon v1.0
Gui, Add, Text, x12 y129 w360 h170 +Center, Text
Gui, Add, Button, x142 y309 w100 h30 , Start
Gui, Add, Button, x302 y309 w70 h30 , Discord
Gui, Add, Button, x12 y309 w70 h30 , Exit
Gui, Add, Picture, x152 y69 w80 h50 , C:\Users\%A_UserName%\Desktop\PracticeGame\Resources\Images\BaseIcon.png
Gui, Tab, Tab2
Gui, Add, CheckBox, x12 y29 w370 h30 , HardMode - For those who seek challenge
Gui, Add, CheckBox, x12 y69 w370 h30 , EasyMode - Just don't cry pls
Gui, Add, CheckBox, x12 y109 w370 h30 , Cheat: Max LVL
Gui, Add, CheckBox, x12 y149 w370 h30 , Cheat: Infinite HP
Gui, Tab, Tab2
Gui, Add, Slider, x12 y189 w110 h30 , 25
Gui, Add, Text, x132 y189 w250 h30 , XP Modifier (Max left Default)
Gui, Add, Edit, x12 y259 w370 h20 , Edit
Gui, Add, Text, x12 y229 w370 h20 , Name:
Gui, Tab, Tab2
Gui, Add, Text, x12 y289 w370 h60 , Text
Gui, Show, x520 y249 h366 w395, DD - Dumb Dungeon
Return

GuiClose:
ExitApp
