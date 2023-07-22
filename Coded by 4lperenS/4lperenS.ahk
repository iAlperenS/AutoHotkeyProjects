#singleinstance,force

Traytip, Succesfully Open! F6 : Start Script Be Sure Edit Settings!, By 4lperenS, 3000 , 1
Gui, Font, s8, Calisto MT
Gui, Add, Tab, x0 y0 w250 h25, Menu
Gui, Add, Button, x3 gbut, Cordinat
Gui, Add, Button, x230 y32 gstart, Start!
Gui, Add, Button, x170 y120 gdc, Discord
Gui, Add, Button, x223 y120 ggit, Github
Gui, Add, Text, x5 y60 vtext, X Cord:
Gui, Add, Text, x5 y80 vtext2, Y Cord:
Gui, Add, Text, x5 y100 vtext3, Web name:
Gui, Add, Text, x5 y120 vtext4, Acc Türü:
Gui, Add, Text, x170 y100 vtext5, Coded By 4lperenS
Gui, Add, Statusbar, cRed, git : github.com/iAlperenS / discord : 4lperens
Gui, Add, Edit, x60 y60 w100 h17 vedit1, X Cord
Gui, Add, Edit, x60 y80 w100 h17 vedit2, Y Cord
Gui, Add, Edit, x60 y100 w100 h17 vedit3, ex: chrome.exe
Gui, Add, Button, x170 y60 w100 h30 greadtheini, Update
Gui, Add, DropDownList, x60 y120 w100 h130 vtur, Çoklu|Tek
Gui, Add, DropDownList,x60 y32 w160 +BackgroundTrans viniinfo gModel,chrome|opera|X - Y|CrafRise|%iniinfo% 
Gui, Show,,4lperenS

myinipath = config.ini

Menu, Tray, NoStandard
Menu, Tray, Add,
Menu, Tray, Add, Exit, Exit
Menu, Tray, Add, Help, HelpM
Menu, Tray, Add, Updates, Updatess
Menu, Tray, Add, Reload, rel
Menu, Tray, Icon, 1static.ico
Menu, Tray, Add,
return

readtheini:
IniRead, edit1, %myinipath%, XCord, info1
IniRead, edit2, %myinipath%, YCord, info2
IniRead, edit3, %myinipath%, site, info3
IniRead, tur, %myinipath%, hesap, acc
GuiControl,, edit1, %edit1%
GuiControl,, edit2, %edit2%
GuiControl,, edit3, %edit3%
GuiControl,, tur, %tur%
Return

Model:
Gui, Submit, NoHide
If iniinfo = Chrome
     {
     GuiControl, , edit3, chrome.exe
     }
If iniinfo = opera
     {
     GuiControl, , edit3, opera.exe
     }
If iniinfo = X - Y
     {
     GuiControl, , edit1, %info1%
     GuiControl, , edit2, %info2%
     }
If iniinfo = %info1%
     {
     GuiControl, , Edit, %Edit%
     }
return

Exit:
{
   ExitApp
   return
}

HelpM:
msgbox, AlperenS `n Start with F6
return

rel:
reload
return

Updatess:
msgbox, No Updates Found version: 1.1
return

GuiClose:
{
ExitApp
return
}

dc:
Run, https://discord.gg/fx9jBrYzm6
return

git:
Run, https://github.com/iAlperenS
return

but:
Tooltip, Learn the cordinates! (click)
KeyWait, LButton, D
MouseGetPos, x, y, Title, WhichControl
ToolTip, X : %x% `nY : %y%
sleep, 5000
Tooltip
return

start:
Loop 
{
    Gui, Submit, NoHide
    ControlClick, x%edit1% y%edit2%, ahk_exe %edit3%, , Left , D NA
    Sleep, 120000
}
return

F6::
Loop 
{
    Gui, Submit, NoHide
    ControlClick, x%edit1% y%edit2%, %edit3%, , Left , D NA
    Sleep, 1000
}
return

RemoveToolTip:
ToolTip
return

f7::
reload
return


 