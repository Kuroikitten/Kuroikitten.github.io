#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
Gui, Add, Picture, x2 y-1 w120 h130 , %A_WorkingDir%\Data\7dtd_icon.ico
Gui, Font, S8 CDefault Bold, Verdana
Gui, Add, Text, x132 y9 w470 h20 , Zmieniacz nicku by Ergon Sahar
Gui, Font, , 
Gui, Add, Text, x132 y39 w470 h20 , Po prostu wpisz nick i daj zapisz, nie pierdol, nie pytaj...
Gui, Add, Edit, x132 y69 w470 h20 vNazwa,
Gui, Add, Button, x132 y99 w100 h20 , Exit
Gui, Add, Button, x502 y99 w100 h20 , Zapisz
Gui, Show, x470 y225 h134 w620, Zmien_Nick.exe

IniRead, Nazwa, %A_WorkingDir%\nick.ini, Base, Nickname
GuiControl,, Nazwa ,%Nazwa%

Return

GuiClose:
ExitApp

ButtonExit:
ExitApp

ButtonZapisz:
gui, submit, nohide
IniWrite, %Nazwa%, %A_WorkingDir%\nick.ini, Base, Nickname
FileDelete, %A_WorkingDir%\7DaysToDie_Data\Plugins\settings\account_name.txt
gui, submit, nohide
IniRead, Zmiana, %A_WorkingDir%\nick.ini, Base, Nickname
FileAppend, %Zmiana%, %A_WorkingDir%\7DaysToDie_Data\Plugins\settings\account_name.txt
MsgBox, 0, Zmien_nick.exe, Zmieniono nick! Jebac N1nje!
IfMsgBox, Ok
ExitApp