#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
Search:
Loop
{
    CoordMode, Pixel, Window
    ImageSearch, CX, CY, 0, 0, 1680, 1050, %A_WorkingDir%\LoginScreenRecon.png
}
Until ErrorLevel = 0
If (ErrorLevel = 0)
{
    Gui, Add, Button, x12 y9 w100 h30 gLive, Live
    Gui, Add, Button, x122 y9 w100 h30 gPBE, PBE
    Gui, Show, x622 y333 h51 w237, Autologin
    Return

    GuiClose:
    ExitApp

    Live:
    WinActivate, Riot Client ahk_class RCLIENT
    Loop
    {
        CoordMode, Pixel, Window
        ImageSearch, FoundX, FoundY, 0, 0, 1680, 1050, %A_WorkingDir%\Settings.png
    }
    Until ErrorLevel = 0
    If (ErrorLevel = 0)
    Click, %FoundX%, %FoundY%
    Loop
    {
        CoordMode, Pixel, Window
        ImageSearch, FoundX, FoundY, 0, 0, 1680, 1050, %A_WorkingDir%\SrvSelect.png
    }
    Until ErrorLevel = 0
    If (ErrorLevel = 0)
    Click, %FoundX%, %FoundY%
    Sleep, 20
    MouseMove, 0, 50, 0, R
    Sleep, 20
    MouseGetPos, fx, fy
    Click, %fx%, %fy%
    Loop
    {
        CoordMode, Pixel, Window
        ImageSearch, FoundX, FoundY, 0, 0, 1680, 1050, %A_WorkingDir%\SettingsClose.png
    }
    Until ErrorLevel = 0
    If (ErrorLevel = 0)
    Click, %FoundX%, %FoundY%
    MouseMove, %CX%, %CY%
    MouseMove, 0, 80, 0, R
    MouseGetPos, fx, fy
    Click, %fx%, %fy%
    Send, {ShiftDown}
    Send, {K}
    Send, {ShiftUp}
    Sleep, 20
    Send, {u}
    Sleep, 20
    Send, {r}
    Sleep, 20
    Send, {o}
    Sleep, 20
    Send, {i}
    Sleep, 20
    Send, {k}
    Sleep, 20
    Send, {i}
    Sleep, 20
    Send, {t}
    Sleep, 20
    Send, {t}
    Sleep, 20
    Send, {e}
    Sleep, 20
    Send, {n}
    Sleep, 100
    MouseMove, 0, 70, 0, R
    MouseGetPos, fx, fy
    Click, %fx%, %fy%
    Sleep, 10
    Send, {ShiftDown}
    Send, {P}
    Send, {ShiftUp}
    Sleep, 30
    Send, {a}
    Sleep, 30
    Send, {n}
    Sleep, 30
    Send, {d}
    Sleep, 30
    Send, {a}
    Sleep, 30
    Send, {Numpad9}
    Sleep, 30
    Send, {Numpad9}
    Sleep, 30
    Send, {Numpad6}
    Sleep, 30
    Send, {Numpad6}
    Sleep, 30
    Send, {Numpad0}
    Sleep, 30
    Send, {Numpad2}
    Sleep, 30
    Send, {Numpad2}
    Sleep, 30
    Send, {Numpad9}
    Sleep, 100
    Send, {Enter}
    WinClose, Autologin
    Return

    PBE:
    Return
}