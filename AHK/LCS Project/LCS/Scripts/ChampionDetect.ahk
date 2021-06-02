Loop
{
	CoordMode, Pixel, Window
	ImageSearch, FoundX, FoundY, 0, 0, 2000, 2000, C:\LCS\Resources\MordeTrigger.png
}
Until ErrorLevel = 0
If (ErrorLevel = 0)
{
	MsgBox 0, 0 a
}
Loop
	