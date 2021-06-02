#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
Accept:
Loop
    {
        CoordMode, Pixel, Window
        ImageSearch, FoundX, FoundY, 0, 0, 1680, 1050, %A_WorkingDir%\MatchAccept.png
    }
    Until ErrorLevel = 0
    If (ErrorLevel = 0)
    Click, %FoundX%, %FoundY%
Goto, Accept