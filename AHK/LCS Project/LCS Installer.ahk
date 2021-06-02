MsgBox, 4, LCS Installer, 
(LTrim
Do you want to install League Custom Sounds?
The installer will work only if you place LCS.zip into C:\ directory, Desktop or in the Downloads folder, because of my bad coding skills XD
)
IfMsgBox, Yes
{
    Filecheck:
    IfNotExist, C:\LCS.zip
    {
		IfNotExist, C:\Users\%A_UserName%\Desktop\LCS.zip
		{
			IfNotExist, C:\Users\%A_UserName%\Downloads\LCS.zip
			{
				MsgBox, 5, LCS Installer, You have to place LCS.zip into disk C, downloads or on your desktop (without putting it into any folders)
				IfMsgBox, Retry
					Goto, Filecheck
			}
        }
    }
    IfExist, C:/LCS.zip
    {
        Unzip("C:\LCS.zip`n", "C:\")
        Sleep, 5000
        IfExist, C:\LCS\Autostart\LCS_Autostart.exe
        {
		    MsgBox, 4, LCS Installer, Do you want to run League Custom Sounds with windows?
			IfMsgBox, Yes
			{
				FileCopy, C:\LCS\Autostart\LCS_Autostart.exe, C:\Users\%A_UserName%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
				MsgBox, 4, LCS Installer, Do you want to create a desktop shortcut for League Custom Sounds?
				IfMsgBox, Yes
				{
					FileCopy, C:\LCS\Autostart\LCS.exe, C:\Users\%A_UserName%\Desktop
					MsgBox, 0, LCS Installer, Installation Complete!
				}
			}
			IfMsgBox, No
			{
				MsgBox, 4, LCS Installer, Do you want to create a desktop shortcut for League Custom Sounds?
				IfMsgBox, Yes
				{
					FileCopy, C:\LCS\Autostart\LCS.exe, C:\Users\%A_UserName%\Desktop
					MsgBox, 0, LCS Installer, Installation Complete!
				}
				IfMsgBox, No
				{
					MsgBox, 0, LCS Installer, Installation Complete!
				}
			}
        }
    }
	IfExist, C:\Users\%A_UserName%\Desktop\LCS.zip
    {
        Unzip("C:\Users\%A_UserName%\Desktop\LCS.zip`n", "C:\")
        Sleep, 5000
        IfExist, C:\LCS\Autostart\LCS_Autostart.exe
        {
		    MsgBox, 4, LCS Installer, Do you want to run League Custom Sounds with windows?
			IfMsgBox, Yes
			{
				FileCopy, C:\LCS\Autostart\LCS_Autostart.exe, C:\Users\%A_UserName%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
				MsgBox, 4, LCS Installer, Do you want to create a desktop shortcut for League Custom Sounds?
				IfMsgBox, Yes
				{
					FileCopy, C:\LCS\Autostart\LCS.exe, C:\Users\%A_UserName%\Desktop
					MsgBox, 0, LCS Installer, Installation Complete!
				}
			}
			IfMsgBox, No
			{
				MsgBox, 4, LCS Installer, Do you want to create a desktop shortcut for League Custom Sounds?
				IfMsgBox, Yes
				{
					FileCopy, C:\LCS\Autostart\LCS.exe, C:\Users\%A_UserName%\Desktop
					MsgBox, 0, LCS Installer, Installation Complete!
				}
				IfMsgBox, No
				{
					MsgBox, 0, LCS Installer, Installation Complete!
				}
			}
        }
    }
	IfExist, C:\Users\%A_UserName%\Downloads\LCS.zip
    {
        Unzip("C:\Users\%A_UserName%\Downloads\LCS.zip`n", "C:\")
        Sleep, 5000
        IfExist, C:\LCS\Autostart\LCS_Autostart.exe
        {
		    MsgBox, 4, LCS Installer, Do you want to run League Custom Sounds with windows?
			IfMsgBox, Yes
			{
				FileCopy, C:\LCS\Autostart\LCS_Autostart.exe, C:\Users\%A_UserName%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
				MsgBox, 4, LCS Installer, Do you want to create a desktop shortcut for League Custom Sounds?
				IfMsgBox, Yes
				{
					FileCopy, C:\LCS\Autostart\LCS.exe, C:\Users\%A_UserName%\Desktop
					MsgBox, 0, LCS Installer, Installation Complete!
				}
			}
			IfMsgBox, No
			{
				MsgBox, 4, LCS Installer, Do you want to create a desktop shortcut for League Custom Sounds?
				IfMsgBox, Yes
				{
					FileCopy, C:\LCS\Autostart\LCS.exe, C:\Users\%A_UserName%\Desktop
					MsgBox, 0, LCS Installer, Installation Complete!
				}
				IfMsgBox, No
				{
					MsgBox, 0, LCS Installer, Installation Complete!
				}
			}
        }
    }
}
IfMsgBox, No
    MsgBox, 32, LCS Installer, So why did you run this? XD
{
}

Unzip(Sources, OutDir, SeparateFolders := false)
{
	Static vOptions := 16|256

	Sources := StrReplace(Sources, "`n", ";")
	Sources := StrReplace(Sources, ",", ";")
	Sources := Trim(Sources, ";")
	OutDir := RTrim(OutDir, "\")

	objShell := ComObjCreate("Shell.Application")
	Loop, Parse, Sources, `;, %A_Space%%A_Tab%
	{
		objSource := objShell.NameSpace(A_LoopField).Items()
		TargetDir := OutDir
		If (SeparateFolders)
		{
			SplitPath, A_LoopField,,,, FileNameNoExt
			TargetDir .= "\" FileNameNoExt
			If (!InStr(FileExist(TargetDir), "D"))
				FileCreateDir, %TargetDir%
		}
		objTarget := objShell.NameSpace(TargetDir)
		objTarget.CopyHere(objSource, vOptions)
	}
	ObjRelease(objShell)
}

Zip(FilesToZip, OutFile, SeparateFiles := false)
{
	Static vOptions := 4|16

	FilesToZip := StrReplace(FilesToZip, "`n", ";")
	FilesToZip := StrReplace(FilesToZip, ",", ";")
	FilesToZip := Trim(FilesToZip, ";")

	objShell := ComObjCreate("Shell.Application")
	If (SeparateFiles)
		SplitPath, OutFile,, OutDir
	Else
	{
		If (!FileExist(OutFile))
			CreateZipFile(OutFile)
		objTarget := objShell.Namespace(OutFile)
	}
	zipped := objTarget.items().Count
	Loop, Parse, FilesToZip, `;, %A_Space%%A_Tab%
	{
		LoopField := RTrim(A_LoopField, "\")
		Loop, Files, %LoopField%, FD
		{
			zipped++
			If (SeparateFiles)
			{
				OutFile := OutDir "\" RegExReplace(A_LoopFileName, "\.(?!.*\.).*") ".zip"
				If (!FileExist(OutFile))
					CreateZipFile(OutFile)
				objTarget := objShell.Namespace(OutFile)
				zipped := 1
			}
			For item in objTarget.Items
			{
				If (item.Name = A_LoopFileDir)
				{
					item.InvokeVerb("Delete")
					zipped--
					break
				}
				If (item.Name = A_LoopFileName)
				{
					FileRemoveDir, % A_Temp "\" item.Name, 1
					FileDelete, % A_Temp "\" item.Name
					objShell.Namespace(A_Temp).MoveHere(item)
					FileRemoveDir, % A_Temp "\" item.Name, 1
					FileDelete, % A_Temp "\" item.Name
					zipped--
					break
				}
			}
			If (A_LoopFileFullPath = OutFile)
			{
				zipped--
				continue
			}
			objTarget.CopyHere(A_LoopFileFullPath, vOptions)
			While (objTarget.items().Count != zipped)
				Sleep, 10
		}
	}
	ObjRelease(objShell)
}

CreateZipFile(sZip)
{
	CurrentEncoding := A_FileEncoding
	FileEncoding, CP1252
	Header1 := "PK" . Chr(5) . Chr(6)
	VarSetCapacity(Header2, 18, 0)
	file := FileOpen(sZip,"w")
	file.Write(Header1)
	file.RawWrite(Header2,18)
	file.close()
	FileEncoding, %CurrentEncoding%
}
