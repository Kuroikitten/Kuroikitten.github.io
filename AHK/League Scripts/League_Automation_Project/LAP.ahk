#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
Gui, Add, Tab, x2 y-1 w1250 h810 , General|Autologin|MatchAccept
Gui, Font, S12 CDefault Bold, Verdana
Gui, Font, S12 C#004154 Bold, Verdana
Gui, Font, S12 C004154 Bold, Verdana
Gui, Add, Text, x12 y29 w260 h20 , League Automations Project
Gui, Font, S8 C0a617a Bold, Verdana
Gui, Add, Text, x272 y29 w170 h20 , v1.0
Gui, Font, S8 CBlack Bold, Verdana
Gui, Add, Text, x12 y149 w540 h20 +Left, Settings:
Gui, Add, CheckBox, x12 y179 w150 h30 , Start with Windows
Gui, Add, Text, x12 y59 w430 h20 , Author: Ergon Sahar
Gui, Add, Text, x12 y89 w430 h20 , Latest Release: xyz
Gui, Add, Text, x12 y119 w60 h20 , Discord:
Gui, Font, , 
Gui, Font, CBlue Underline, 
Gui, Add, Text, x82 y119 w360 h20 , Text
Gui, Font, , 
Gui, Add, Text, x162 y186 w470 h20 , L.A.P. will launch with your system. It will be hidden by default`, to unhide it press F1
Gui, Font, S8 CBlack Bold, Verdana
Gui, Add, CheckBox, x12 y219 w60 h30 , DarkUI
Gui, Font, , 
Gui, Add, Text, x82 y226 w200 h20 , For those`, who don't fear the darkness...
Gui, Add, Button, x12 y619 w90 h20 , Exit
Gui, Add, Button, x112 y619 w100 h20 , Default
Gui, Add, Button, x452 y619 w100 h20 , Save Settings
Gui, Tab, General
Gui, Add, Text, x222 y622 w220 h20 +Right, This only applies to General Tab
; Generated using SmartGUI Creator 4.0
Gui, Show, x504 y176 h652 w567, New GUI Window
Return

GuiClose:
ExitApp