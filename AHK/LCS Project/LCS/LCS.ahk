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


WinWaitActive, League of Legends
FileRead, Contents,%A_WORKINGDIR%\version.txt 
msgbox ,,League Custom Sounds,%Contents%,10
Run, C:\LCS\Scripts\LauncherSounds.ahk
WinWaitActive, League of Legends (TM) Client
Sleep, 333

Return
