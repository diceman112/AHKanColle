﻿;Window v1.0

CheckWindow()
{
	global
	IfWinExist, ahk_id %hwnd%
	{
		WinActivateRestore()
		WinGetPos, , , TWinW, TWinH
		if (TWinW != WinW or TWinH != WinH)
		{
			GuiControl,, NB, Window size changed, reinitializing pixel map
			Sleep 1000
			RPixelSearch()
		}
	}
	else
	{
		GuiControl,, NB, Window not found, searching for window
		Sleep 1000
		SetWindow()
	}
	return
}
	
SetWindow()
{
	global
	local i := 1
	Sleep 300
	Loop
	{
		hwnd := 0
		hwnd := WinExist(WINID)
		if not hwnd = 0
		{
			WinActivateRestore()
			WinGetPos, , , WinW, WinH
			GuiControl,, NB, Window found
			Break
		}    
		else
		{
			GuiControl,, NB, Window not found. Retrying (%i%)
			Sleep 1000
			i += 1
			if i > 30
			{
				GuiControl,, NB, Could not find window, unpause script to try again
				i := 1
				Pause
			}
		}
	}
	RPixelSearch()
}

WinActivateRestore()
{
	global hwnd
	global Background
	WinGet, MMX, MinMax
	if MMX = -1
	{
		WinRestore
		Sleep 500
	}
	if (not WinActive) and (Background = 0)
	{
		WinActivate
		Sleep 500
	}
	return
}

SpecificWindows()
{
	global Background
	if A_OSVersion in WIN_XP
	{
		MsgBox Background scripting has been disabled due to an unsupported Windows version.
		Background := 0
		IniWrite,%Background%,config.ini,Variables,Background
	}
	return
}