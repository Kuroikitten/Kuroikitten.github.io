#NoEnv
SetWorkingDir %A_ScriptDir%
CoordMode, Mouse, Window
SendMode Input
#SingleInstance Force
SetTitleMatchMode 2
#WinActivateForce
SetControlDelay 1
SetWinDelay 0
SetKeyDelay -1
SetMouseDelay -1
SetBatchLines -1

Loop
{
	CoordMode, Pixel, Window
	ImageSearch, FoundX, FoundY, 0, 0, 2000, 2000, C:\LCS\Resources\LobbyCreate.png
}
Until ErrorLevel = 0
If (ErrorLevel = 0)
{
	SoundPlay C:\LCS\Sounds\LobbyCreate.mp3, wait 3500
}
