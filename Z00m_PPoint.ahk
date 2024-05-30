#Requires AutoHotkey v2.0
#SingleInstance Force
;#^z::  ; Ctrl+Alt+Z
;NumpadIns:: ;keypad 0
;F2::
Numpad9::
{
    ;WinActivate("ahk_exe zoom.exe")
    ;WinActivate("ahk_class ConfMultiTabContentWndClass")
    ;send "{Ctrl}{Alt}{Shift}"

    if WinActive("ahk_exe zoom.exe") {
    ;    MsgBox("already there")
    }else{
        hwndtmp:="ahk_id " WinExist("a")
        ControlSend("!s" , , "ahk_class ZPToolBarParentWndClass")        
        ;//wait for remembered window to NOT be active...means "something" else is active...
        ;//increase/decrease timeout as needed for this situation...8 means 8 seconds...
        WinWaitNotActive( hwndtmp, , 8)
    }
    if WinActive("ahk_exe zoom.exe") {
        WinActivate
        send "{Ctrl}"
 ;       Sleep(1000)
        Send("!s")
        send "{Ctrl}"
        send "{Right}"
        Send "{Enter}"
    }
;    ControlSend("{Ctrl}" , , "ahk_class ZPToolBarParentWndClass")
    ;    ControlSend("{Ctrl}" , , "ahk_class ZPToolBarParentWndClass")
    ;    ControlSend("{Right}" , , "ahk_class ZPToolBarParentWndClass")
    ;    ControlSend("{Enter}" , , "ahk_class ZPToolBarParentWndClass")
    ;    ControlSend("{Ctrl}" , , "ahk_class ZPShareEntranceClass")
    ;ControlSend("{Right}" , , "ahk_class ZPShareEntranceClass")
    ;ControlSend("{Enter}" , , "ahk_class ZPShareEntranceClass")

    ; } else {
    ;     WinActivate
    ;     Send("!s")
    ;     send "{Ctrl}"
    ;     Sleep(1000)
    ;     send "{Ctrl}"
    ;     send "{Right}"
    ;     Send "{Enter}"
    ; }
}
;F1::
Numpad8::
{
    if WinActive("ahk_exe zoom.exe") {
        WinActivate
        Send("{LAlt down}{LShift down}s{LAlt up}{LShift up}")
        Sleep(500)
        Send "{Esc}"


    } else {
        ControlSend("{LAlt down}{LShift down}s{LAlt up}{LShift up}", , "ahk_class ZPToolBarParentWndClass")
        Sleep(500)
        ControlSend("{Esc}", , "ahk_class ZPToolBarParentWndClass")
    }
    if WinActive("ahk_exe zoom.exe") {
        Send "{Esc}"


    } else {
        ControlSend("{LAlt down}{LShift down}s{LAlt up}{LShift up}", , "ahk_class ZPToolBarParentWndClass")
        Sleep(500)
        ControlSend("{Esc}", , "ahk_class ZPToolBarParentWndClass")
    }
}
;F3::
Numpad6::
{   
    SetTitleMatchMode(2) 
    if WinExist("Presenter View")
    {
        WinActivate
    }
    else
    {
        if WinExist("ahk_exe POWERPNT.EXE") {
             WinActivate
        }        
    }
}
;F4::
Numpad3::
{
    SetTitleMatchMode(2) 
    if WinExist("YouTube")
    {
        WinActivate
    }
    else
    {
        if WinExist("ahk_exe POWERPNT.EXE") {
             WinActivate
        }        
    }
}
