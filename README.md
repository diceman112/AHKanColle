
AHKanColle (Click script for KanColle expeditions)
--

by Ryuuhou

README 4/21/15

>scripting

>kuso ttk

## Requirements: 

* AHK_L
* Gdip_All library by tic

## Features:

* Background scripting (cannot be minimized)
* Dynamic pixel checking to prevent user error
* Easy to use GUI with changeable settings
* Error Cat detection (script will be paused)

## HOW TO USE:
Set which expedition each fleet will run, press ENTER to submit.  
Use expedition 0 to disable resending that fleet.

Enter a remaining time if it is currently already on an expedition. The syntax is 2h2m2s for fleet returning in 2 hours 2 minutes and 2 seconds (02:02:02).

If it is not on an expedition, use 0 to resupply and send after pushing the button "Send Expeditions."

Use a remaining time of -1 to disable scripting for that fleet.

Enter a MinWait and MaxWait in MILLISECONDS. The script will wait a random amount of time between these two numbers after an expedition comes back.

If you are not playing with KanColleViewer, add/create an entry in the config.ini file in the script directory.

[Variables]
WINID = NameOfWindow

If using a browser, the name of window will usually be in the titlebar.

## WARNINGS:
Although this script was designed to work in background, certain applications may lose focus while scripting.

Do NOT minimize browser/KCV, mouse clicks do not work while minimized. It can be behind other windows.

If you have not unlocked all expeditions, your expeditions may be out of place and cause problems.  It is up to you to change the constants within the script if you wish to use it.

Playing while scripting may lead to bugging the script, avoid playing if you decide to script. Unless you know how the script works :^)
