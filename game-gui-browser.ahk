buildverbrow = 2

MyIniRead(OutputVar, "setting_spravq.ini", "Section", "Key", "MyError")
MyIniRead(ByRef OutputVar, Filename, Section, Key, ByRef Default)
{
   loop
   {
      IniRead, Value, %Filename%, %Section%, %A_Index%|%Key%, %Default%
     If (Value = Default)
         break
      If A_Index = 1
         OutputVar := value 
      else
         OutputVar .= "`n" value
    }
}

ES_NOHIDESEL := 256  ; показывает выделение текста в Edit при неактивном окне
EM_SETSEL := 0x00B1  ; установка выделения
EM_SCROLLCARET := 0xB7  ; сделать видимым выделенный текст
EM_GETSEL := 0xB0  ; извлечь позицию каретки ввода
VarSetCapacity(start, 4), VarSetCapacity(end, 4)


Loop, 202
{
FileReadLine, Text%A_Index%, %A_WorkingDir%\app\gui\pravilap.ini, %A_Index%
}

Loop, 28
{
FileReadLine, AText%A_Index%, %A_WorkingDir%\app\gui\pravilas.ini, %A_Index%
}

Loop, 261
{
FileReadLine, BText%A_Index%, %A_WorkingDir%\app\gui\pravilagos.ini, %A_Index%
}

Loop, 250
{
FileReadLine, CText%A_Index%, %A_WorkingDir%\app\gui\pravilaband.ini, %A_Index%
}

Loop, 112
{
FileReadLine, DText%A_Index%, %A_WorkingDir%\app\gui\pravilamafiy.ini, %A_Index%
}

Gui, g: +HWNDhGUIMain  +AlwaysOnTop
SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit1%
SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit2%
SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit3%
SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit4%
SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit5%
Gosub, Sebi

Gui, g: Add, Tab3, x0 y0 w620 h430, Правила проекта| Сервера| Гос| Банд| Мафий|Карта особ| TP особы|Для справок

Gui, g: Tab, 1
Gui, g: Add, Button, x310 y407 w50 h20 gFin1, Поиск
Gui, g: Add, Edit, x3 y24 w614 h383 +Multi +ReadOnly vMainEdit1 hwndhMainEdit1 %ES_NOHIDESEL%, %Text%

Gui, g: Tab, 2 
Gui, g: Add, Button, x310 y407 w50 h20 gFin2, Поиск
Gui, g: Add, Edit, x3 y24 w614 h383 +Multi +ReadOnly vMainEdit2 hwndhMainEdit2 %ES_NOHIDESEL%, %AText%

Gui, g: Tab, 3 
Gui, g: Add, Button, x310 y407 w50 h20 gFin3, Поиск
Gui, g: Add, Edit, x3 y24 w614 h383 +Multi +ReadOnly vMainEdit3 hwndhMainEdit3 %ES_NOHIDESEL%, %BText%

Gui, g: Tab, 4
Gui, g: Add, Button, x310 y407 w50 h20 gFin4, Поиск
Gui, g: Add, Edit, x3 y24 w614 h383 +Multi +ReadOnly vMainEdit4 hwndhMainEdit4 %ES_NOHIDESEL%, %CText%

Gui, g: Tab, 5
Gui, g: Add, Button, x310 y407 w50 h20 gFin5, Поиск
Gui, g: Add, Edit, x3 y24 w614 h383 +Multi +ReadOnly vMainEdit5 hwndhMainEdit5 %ES_NOHIDESEL%, %DText%

Gui, g: Tab, 6 
Gui, g: Add, Picture, x0 y22 w620 h409, %A_WorkingDir%\app\gui\browser-osob-%buildverbrow%.png

Gui, g: Tab, 7
Gui, g: Add, GroupBox, x4 y23 w167 h38
Gui, g: Add, GroupBox, x4 y60 w167 h38
Gui, g: Add, GroupBox, x4 y96 w167 h38
Gui, g: Add, GroupBox, x4 y132 w167 h38
Gui, g: Add, GroupBox, x4 y168 w167 h38
Gui, g: Add, GroupBox, x4 y203 w167 h38
Gui, g: Add, GroupBox, x4 y238 w167 h38
Gui, g: Add, GroupBox, x4 y274 w167 h38
Gui, g: Add, GroupBox, x4 y311 w167 h38
Gui, g: Add, GroupBox, x5 y347 w167 h38
Gui, g: Add, GroupBox, x176 y23 w167 h38
Gui, g: Add, GroupBox, x174 y60 w167 h38
Gui, g: Add, GroupBox, x174 y96 w167 h38
Gui, g: Add, GroupBox, x174 y132 w167 h38
Gui, g: Add, GroupBox, x174 y168 w167 h38
Gui, g: Add, GroupBox, x174 y203 w167 h38
Gui, g: Add, GroupBox, x174 y238 w167 h38
Gui, g: Add, GroupBox, x174 y274 w167 h38
Gui, g: Add, GroupBox, x174 y311 w167 h38
Gui, g: Add, GroupBox, x174 y347 w167 h38
Gui, g: Add, GroupBox, x348 y23 w167 h38
Gui, g: Add, GroupBox, x346 y60 w167 h38
Gui, g: Add, GroupBox, x346 y96 w167 h38
Gui, g: Add, GroupBox, x346 y132 w167 h38
Gui, g: Add, GroupBox, x347 y168 w167 h38
Gui, g: Add, GroupBox, x346 y203 w167 h38
Gui, g: Add, GroupBox, x346 y238 w167 h38
Gui, g: Add, GroupBox, x346 y274 w167 h38
Gui, g: Add, GroupBox, x346 y311 w167 h38
Gui, g: Add, GroupBox, x346 y347 w167 h38
;-----------------------------------------------
Gui, g: Add, Text, x7 y33 w56 h23 +0x200, Особа №1
Gui, g: Add, Text, x7 y69 w56 h23 +0x200, Особа №2
Gui, g: Add, Text, x7 y106 w56 h23 +0x200, Особа №3
Gui, g: Add, Text, x7 y142 w56 h23 +0x200, Особа №4
Gui, g: Add, Text, x7 y178 w56 h23 +0x200, Особа №5
Gui, g: Add, Text, x7 y213 w56 h23 +0x200, Особа №6
Gui, g: Add, Text, x8 y248 w56 h23 +0x200, Особа №7
Gui, g: Add, Text, x7 y283 w56 h23 +0x200, Особа №8
Gui, g: Add, Text, x7 y320 w56 h23 +0x200, Особа №9
Gui, g: Add, Text, x8 y357 w61 h23 +0x200, Особа №10
Gui, g: Add, Text, x179 y33 w66 h23 +0x200, Особа №11
Gui, g: Add, Text, x179 y69 w61 h23 +0x200, Особа №12
Gui, g: Add, Text, x179 y106 w69 h23 +0x200, Особа №13
Gui, g: Add, Text, x179 y142 w63 h23 +0x200, Особа №14
Gui, g: Add, Text, x179 y178 w62 h23 +0x200, Особа №15
Gui, g: Add, Text, x179 y213 w63 h23 +0x200, Особа №16
Gui, g: Add, Text, x179 y248 w59 h23 +0x200, Особа №17
Gui, g: Add, Text, x179 y284 w62 h23 +0x200, Особа №18
Gui, g: Add, Text, x179 y320 w59 h23 +0x200, Особа №19
Gui, g: Add, Text, x179 y357 w61 h23 +0x200, Особа №20
Gui, g: Add, Text, x353 y33 w60 h23 +0x200, Особа №21
Gui, g: Add, Text, x353 y69 w59 h23 +0x200, Особа №22
Gui, g: Add, Text, x353 y106 w58 h23 +0x200, Особа №23
Gui, g: Add, Text, x353 y142 w60 h23 +0x200, Особа №24
Gui, g: Add, Text, x353 y178 w62 h23 +0x200, Особа №25
Gui, g: Add, Text, x353 y213 w59 h23 +0x200, Особа №26
Gui, g: Add, Text, x353 y248 w61 h23 +0x200, Особа №27
Gui, g: Add, Text, x353 y283 w60 h23 +0x200, Особа №28
Gui, g: Add, Text, x353 y320 w59 h23 +0x200, Особа №29
Gui, g: Add, Text, x353 y357 w61 h23 +0x200, Особа №30

Gui, g: Add, Button, x68 y33 w48 h23 ggoto1, GOTO
Gui, g: Add, Button, x120 y33 w48 h23 gcopy1, MARK

Gui, g: Add, Button, x68 y70 w48 h23 ggoto2, GOTO
Gui, g: Add, Button, x118 y70 w48 h23 gcopy2, MARK

Gui, g: Add, Button, x68 y106 w48 h23 ggoto3, GOTO
Gui, g: Add, Button, x118 y106 w48 h23 gcopy3, MARK

Gui, g: Add, Button, x68 y142 w48 h23 ggoto4, GOTO
Gui, g: Add, Button, x118 y142 w48 h23 gcopy4, MARK

Gui, g: Add, Button, x68 y178 w48 h23 ggoto5, GOTO
Gui, g: Add, Button, x118 y178 w48 h23 gcopy5, MARK

Gui, g: Add, Button, x68 y213 w48 h23 ggoto6, GOTO
Gui, g: Add, Button, x118 y213 w48 h23 gcopy6, MARK

Gui, g: Add, Button, x68 y248 w48 h23 ggoto7, GOTO
Gui, g: Add, Button, x118 y248 w48 h23 gcopy7, MARK

Gui, g: Add, Button, x68 y283 w48 h23 ggoto8, GOTO
Gui, g: Add, Button, x118 y283 w48 h23 gcopy8, MARK

Gui, g: Add, Button, x68 y320 w48 h23 ggoto9, GOTO
Gui, g: Add, Button, x118 y320 w48 h23 gcopy9, MARK

Gui, g: Add, Button, x68 y357 w48 h23 ggoto10, GOTO
Gui, g: Add, Button, x118 y357 w48 h23 gcopy10, MARK
;-----------------------------------------------

Gui, g: Add, Button, x242 y33 w48 h23 ggoto11, GOTO
Gui, g: Add, Button, x292 y33 w48 h23 gcopy11, MARK

Gui, g: Add, Button, x242 y70 w48 h23 ggoto12, GOTO
Gui, g: Add, Button, x292 y70 w48 h23 gcopy12, MARK

Gui, g: Add, Button, x242 y106 w48 h23 ggoto13, GOTO
Gui, g: Add, Button, x292 y106 w48 h23 gcopy13, MARK

Gui, g: Add, Button, x242 y142 w48 h23 ggoto14, GOTO
Gui, g: Add, Button, x292 y142 w48 h23 gcopy14, MARK

Gui, g: Add, Button, x242 y178 w48 h23 ggoto15, GOTO
Gui, g: Add, Button, x292 y178 w48 h23 gcopy15, MARK

Gui, g: Add, Button, x242 y213 w48 h23 ggoto16, GOTO
Gui, g: Add, Button, x292 y213 w48 h23 gcopy16, MARK

Gui, g: Add, Button, x242 y248 w48 h23 ggoto17, GOTO
Gui, g: Add, Button, x292 y248 w48 h23 gcopy17, MARK

Gui, g: Add, Button, x242 y283 w48 h23 ggoto18, GOTO
Gui, g: Add, Button, x292 y283 w48 h23 gcopy18, MARK

Gui, g: Add, Button, x242 y320 w48 h23 ggoto19, GOTO
Gui, g: Add, Button, x292 y320 w48 h23 gcopy19, MARK

Gui, g: Add, Button, x242 y357 w48 h23 ggoto20, GOTO
Gui, g: Add, Button, x292 y357 w48 h23 gcopy20, MARK
;-----------------------------------------
Gui, g: Add, Button, x414 y33 w48 h23 ggoto21, GOTO
Gui, g: Add, Button, x463 y33 w48 h23 gcopy21, MARK

Gui, g: Add, Button, x414 y70 w48 h23 ggoto22, GOTO
Gui, g: Add, Button, x463 y70 w48 h23 gcopy22, MARK

Gui, g: Add, Button, x414 y106 w48 h23 ggoto23, GOTO
Gui, g: Add, Button, x463 y106 w48 h23 gcopy23, MARK

Gui, g: Add, Button, x414 y142 w48 h23 ggoto24, GOTO
Gui, g: Add, Button, x463 y142 w48 h23 gcopy24, MARK

Gui, g: Add, Button, x414 y178 w48 h23 ggoto25, GOTO
Gui, g: Add, Button, x463 y178 w48 h23 gcopy25, MARK

Gui, g: Add, Button, x414 y213 w48 h23 ggoto26, GOTO
Gui, g: Add, Button, x463 y213 w48 h23 gcopy26, MARK

Gui, g: Add, Button, x414 y248 w48 h23 ggoto27, GOTO
Gui, g: Add, Button, x463 y248 w48 h23 gcopy27, MARK

Gui, g: Add, Button, x414 y283 w48 h23 ggoto28, GOTO
Gui, g: Add, Button, x463 y283 w48 h23 gcopy28, MARK

Gui, g: Add, Button, x414 y320 w48 h23 ggoto29, GOTO
Gui, g: Add, Button, x463 y320 w48 h23 gcopy29, MARK

Gui, g: Add, Button, x414 y357 w48 h23 ggoto30, GOTO
Gui, g: Add, Button, x463 y357 w48 h23 gcopy30, MARK

Gui, g: Add, Text, x48 y387 w480 h24 +0x200, MARK - Вставляет форму для передачи метки, нужно указать ID вместо "i" (set_gps id coord)
Gui, g: Add, Text, x48 y405 w338 h24 +0x200, GOTO - Телепортирует по координатам (tpc coord)

Gui, g: Tab, 8
Gui, g: Add, Button, x310 y407 w60 h20 gSaveSprab, Сохранить
Gui, g: Add, Edit, x3 y24 w614 h383 +Multi vOutputVar, %OutputVar%

Gui, g: Show, w620 h430, Браузер Admin-Tools by Notoriuz
return
gGuiEscape:
gGuiClose:
    Gui, g: Destroy
return

;-----------------------------------------------------------------------------------

Fin1:
Gui, 2bg: -MaximizeBox -MinimizeBox -DPIScale +HWNDhGUIFind +AlwaysOnTop
Gui, 2bg: Add, Text, ym+5, Что:
Gui, 2bg: Add, Edit, x+25 yp-5 w284 vFind hwndhFind
Gui, 2bg: Add, Button, x+10 yp gGoSearch1, Найти далее
Gui, 2bg: Add, Button, xp y+5 wp gCancel1, Отмена
Gui, 2bg: Add, Checkbox, vLoop y+0 xm Checked, Зациклить поиск
Gui, 2bg: Add, Checkbox, vSens y+10 xp, С учетом регистра
Gui, 2bg: Add, GroupBox, x+10 yp-35 h55, Направление
Gui, 2bg: Add, Radio, xp+10 yp+25 vDirectUp, Вверх
Gui, 2bg: Add, Radio, x+15 Checked, Вниз 
Gui, 2bg: Show, , Найти в Правилах Проекта
WinMove, Найти в Правилах Проекта, , 1021, 377
return
2bgGuiEscape:
2bgGuiClose:
	Gui, 2bg: Destroy
return

SearchEdit1: 
Gosub, GoSearch1
    Gui, 2bg: Show, , Найти 
    Return
    
Cancel1:
    Gui, 2bg: Hide
    Return

GoSearch1:
    GuiControlGet, DirectUp, 2:
    GuiControlGet, Sens, 2:
    GuiControlGet, Loop, 2:
    ControlGetText, MainEdit1,, ahk_id %hMainEdit1%
    ControlGetText, Find,, ahk_id %hFind%
    SendMessage, EM_GETSEL, &start, &end, , ahk_id %hMainEdit1%
    If DirectUp
        f := (f := InStr(SubStr(MainEdit1, 1, NumGet(start)), Find, Sens, 0)) ? f : (Loop ? InStr(MainEdit1, Find, Sens, 0) : 0)
    Else
        f := (f := InStr(MainEdit1, Find, Sens, NumGet(end)+1)) ? f : (Loop ? InStr(MainEdit1, Find, Sens, 1) : 0)
    If !f
    {
Gui, 2bg: Destroy
SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit1%
Gosub, Fin1
    }
    SendMessage, EM_SETSEL, f-1, f+StrLen(Find)-1, , ahk_id %hMainEdit1%
    SendMessage, EM_SCROLLCARET,,,, ahk_id %hMainEdit1%
    Return
;-----------------------------------------------------------------------------------

Fin2:
Gui, 3bg: -MaximizeBox -MinimizeBox -DPIScale +HWNDhGUIFind +AlwaysOnTop
Gui, 3bg: Add, Text, ym+5, Что:
Gui, 3bg: Add, Edit, x+25 yp-5 w284 vFind11 hwndhFind11
Gui, 3bg: Add, Button, x+10 yp gGoSearch2, Найти далее
Gui, 3bg: Add, Button, xp y+5 wp gCancel2, Отмена
Gui, 3bg: Add, Checkbox, vLoop11 y+0 xm Checked, Зациклить поиск
Gui, 3bg: Add, Checkbox, vSens11 y+10 xp, С учетом регистра
Gui, 3bg: Add, GroupBox, x+10 yp-35 h55, Направление
Gui, 3bg: Add, Radio, xp+10 yp+25 vDirectUp11, Вверх
Gui, 3bg: Add, Radio, x+15 Checked, Вниз 
Gui, 3bg: Show, , Найти в Правилах Сервера
WinMove, Найти в Правилах Сервера, , 1021, 377
return
3bgGuiEscape:
3bgGuiClose:
    Gui, 3bg: Destroy
return

SearchEdit2: 
Gosub, GoSearch2
    Gui, 3bg: Show, , Найти 
    Return
    
Cancel2:
    Gui, 3bg: Hide
    Return

GoSearch2:
     GuiControlGet, DirectUp11, 3:
    GuiControlGet, Sens11, 3:
    GuiControlGet, Loop11, 3:
    ControlGetText, MainEdit2,, ahk_id %hMainEdit2%
    ControlGetText, Find11,, ahk_id %hFind11%
    SendMessage, EM_GETSEL, &start, &end, , ahk_id %hMainEdit2%
    If DirectUp11
        f := (f := InStr(SubStr(MainEdit2, 1, NumGet(start)), Find11, Sens11, 0)) ? f : (Loop11 ? InStr(MainEdit2, Find11, Sens11, 0) : 0)
    Else
        f := (f := InStr(MainEdit2, Find11, Sens11, NumGet(end)+1)) ? f : (Loop11 ? InStr(MainEdit2, Find11, Sens11, 1) : 0)
    If !f
    {
Gui, 3bg: Destroy
SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit2%
Gosub, Fin2
    }
    SendMessage, EM_SETSEL, f-1, f+StrLen(Find11)-1, , ahk_id %hMainEdit2%
    SendMessage, EM_SCROLLCARET,,,, ahk_id %hMainEdit2%
    Return

;-----------------------------------------------------------------------------------

Fin3:
Gui, 4bg: -MaximizeBox -MinimizeBox -DPIScale +HWNDhGUIFind +AlwaysOnTop
Gui, 4bg: Add, Text, ym+5, Что:
Gui, 4bg: Add, Edit, x+25 yp-5 w284 vbFind hwndhbFind
Gui, 4bg: Add, Button, x+10 yp gGoSearch3, Найти далее
Gui, 4bg: Add, Button, xp y+5 wp gCancel3, Отмена
Gui, 4bg: Add, Checkbox, vbLoop y+0 xm Checked, Зациклить поиск
Gui, 4bg: Add, Checkbox, vbSens y+10 xp, С учетом регистра
Gui, 4bg: Add, GroupBox, x+10 yp-35 h55, Направление
Gui, 4bg: Add, Radio, xp+10 yp+25 vbDirectUp, Вверх
Gui, 4bg: Add, Radio, x+15 Checked, Вниз 
Gui, 4bg: Show, , Найти в Правилах Гос
WinMove, Найти в Правилах Гос, , 1021, 377
return
4bgGuiEscape:
4bgGuiClose:
    Gui, 4bg: Destroy
return

SearchEdit3: 
Gosub, GoSearch3
    Gui, 4bg: Show, , Найти 
    Return
    
Cancel3:
    Gui, 4bg: Hide
    Return

GoSearch3:
     GuiControlGet, bDirectUp, 2:
    GuiControlGet, bSens, 2:
    GuiControlGet, bLoop, 2:
    ControlGetText, MainEdit3,, ahk_id %hMainEdit3%
    ControlGetText, bFind,, ahk_id %hbFind%
    SendMessage, EM_GETSEL, &start, &end, , ahk_id %hMainEdit3%
    If DirectUp11
        f := (f := InStr(SubStr(MainEdit3, 1, NumGet(start)), bFind, bSens, 0)) ? f : (bLoop ? InStr(MainEdit3, bFind, bSens, 0) : 0)
    Else
        f := (f := InStr(MainEdit3, bFind, bSens, NumGet(end)+1)) ? f : (bLoop ? InStr(MainEdit3, bFind, bSens, 1) : 0)
    If !f
    {
Gui, 4bg: Destroy
SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit3%
Gosub, Fin3
    }
    SendMessage, EM_SETSEL, f-1, f+StrLen(bFind)-1, , ahk_id %hMainEdit3%
    SendMessage, EM_SCROLLCARET,,,, ahk_id %hMainEdit3%
    Return


;----------------------------------------------------------------------------------------------------------

Fin4:
Gui, 5bg: -MaximizeBox -MinimizeBox -DPIScale +HWNDhGUIFind +AlwaysOnTop
Gui, 5bg: Add, Text, ym+5, Что:
Gui, 5bg: Add, Edit, x+25 yp-5 w284 veFind hwndheFind
Gui, 5bg: Add, Button, x+10 yp gGoSearch4, Найти далее
Gui, 5bg: Add, Button, xp y+5 wp gCancel4, Отмена
Gui, 5bg: Add, Checkbox, veLoop y+0 xm Checked, Зациклить поиск
Gui, 5bg: Add, Checkbox, veSens y+10 xp, С учетом регистра
Gui, 5bg: Add, GroupBox, x+10 yp-35 h55, Направление
Gui, 5bg: Add, Radio, xp+10 yp+25 veDirectUp, Вверх
Gui, 5bg: Add, Radio, x+15 Checked, Вниз 
Gui, 5bg: Show, , Найти в Правилах Банд
WinMove, Найти в Правилах Банд, , 1021, 377
return
5bgGuiEscape:
5bgGuiClose:
    Gui, 5bg: Destroy
return

SearchEdit4: 
Gosub, GoSearch4
    Gui, 5bg: Show, , Найти 
    Return
    
GoSearch4:
      GuiControlGet, eDirectUp, 3:
    GuiControlGet, eSens, 3:
    GuiControlGet, eLoop, 3:
    ControlGetText, MainEdit4,, ahk_id %hMainEdit4%
    ControlGetText, eFind,, ahk_id %heFind%
    SendMessage, EM_GETSEL, &start, &end, , ahk_id %hMainEdit4%
    If eDirectUp
        f := (f := InStr(SubStr(MainEdit4, 1, NumGet(start)), eFind, eSens, 0)) ? f : (eLoop ? InStr(MainEdit4, eFind, eSens, 0) : 0)
    Else
        f := (f := InStr(MainEdit4, eFind, eSens, NumGet(end)+1)) ? f : (bLoop ? InStr(MainEdit4, eFind, eSens, 1) : 0)
    If !f
    {
Gui, 5bg: Destroy
SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit4%
Gosub, Fin4
    }
    SendMessage, EM_SETSEL, f-1, f+StrLen(eFind)-1, , ahk_id %hMainEdit4%
    SendMessage, EM_SCROLLCARET,,,, ahk_id %hMainEdit4%
    Return


Cancel4:
    Gui, 5bg: Hide
    Return


;----------------------------------------------------------------------------------------------------------

Fin5:
Gui, 6bg: -MaximizeBox -MinimizeBox -DPIScale +HWNDhGUIFind +AlwaysOnTop
Gui, 6bg: Add, Text, ym+5, Что:
Gui, 6bg: Add, Edit, x+25 yp-5 w284 vqFind hwndhqFind
Gui, 6bg: Add, Button, x+10 yp gGoSearch5, Найти далее
Gui, 6bg: Add, Button, xp y+5 wp gCancel5, Отмена
Gui, 6bg: Add, Checkbox, vqLoop y+0 xm Checked, Зациклить поиск
Gui, 6bg: Add, Checkbox, vqSens y+10 xp, С учетом регистра
Gui, 6bg: Add, GroupBox, x+10 yp-35 h55, Направление
Gui, 6bg: Add, Radio, xp+10 yp+25 vqDirectUp, Вверх
Gui, 6bg: Add, Radio, x+15 Checked, Вниз 
Gui, 6bg: Show, , Найти в Правилах Мафий
WinMove, Найти в Правилах Мафий, , 1021, 377 
return
6bgGuiEscape:
6bgGuiClose:
    Gui, 6bg: Destroy
return

SearchEdit5: 
Gosub, GoSearch5
    Gui, 6bg: Show, , Найти 
    Return
    
GoSearch5:
      GuiControlGet, qDirectUp, 3:
    GuiControlGet, qSens, 3:
    GuiControlGet, qLoop, 3:
    ControlGetText, MainEdit5,, ahk_id %hMainEdit5%
    ControlGetText, qFind,, ahk_id %hqFind%
    SendMessage, EM_GETSEL, &start, &end, , ahk_id %hMainEdit5%
    If qDirectUp
        f := (f := InStr(SubStr(MainEdit5, 1, NumGet(start)), qFind, qSens, 0)) ? f : (qLoop ? InStr(MainEdit5, qFind, qSens, 0) : 0)
    Else
        f := (f := InStr(MainEdit5, qFind, qSens, NumGet(end)+1)) ? f : (qLoop ? InStr(MainEdit5, qFind, qSens, 1) : 0)
    If !f
    {
Gui, 6bg: Destroy
SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit5%
Gosub, Fin5
    }
    SendMessage, EM_SETSEL, f-1, f+StrLen(qFind)-1, , ahk_id %hMainEdit5%
    SendMessage, EM_SCROLLCARET,,,, ahk_id %hMainEdit5%
    Return


Cancel5:
    Gui, 6bg: Hide
    Return

;----------------------------------------------------------------------------------------------------------

Sebi:
Loop, 202
{
Text%A_Index%=% Text%A_Index%
}

Loop, 28
{
AText%A_Index%=% AText%A_Index%
}

Loop, 261
{
BText%A_Index%=% BText%A_Index%
}

Text = %Text1%`n%Text2%`n%Text3%`n%Text4%`n%Text5%`n%Text6%`n%Text7%`n%Text8%`n%Text9%`n%Text10%`n%Text11%`n%Text12%`n%Text13%`n%Text14%`n%Text15%`n%Text16%`n%Text17%`n%Text18%`n%Text19%`n%Text20%`n%Text21%`n%Text22%`n%Text23%`n%Text24%`n%Text25%`n%Text26%`n%Text27%`n%Text28%`n%Text29%`n%Text30%`n%Text31%`n%Text32%`n%Text33%`n%Text34%`n%Text35%`n%Text36%`n%Text37%`n%Text38%`n%Text39%`n%Text39%`n%Text40%`n%Text41%`n%Text42%`n%Text43%`n%Text44%`n%Text45%`n%Text46%`n%Text47%`n%Text48%`n%Text49%`n%Text50%`n%Text51%`n%Text52%`n%Text53%`n%Text54%`n%Text55%`n%Text56%`n%Text57%`n%Text58%`n%Text59%`n%Text60%`n%Text61%`n%Text62%`n%Text63%`n%Text64%`n%Text65%`n%Text66%`n%Text67%`n%Text68%`n%Text69%`n%Text70%`n%Text71%`n%Text72%`n%Text73%`n%Text74%`n%Text75%`n%Text76%`n%Text77%`n%Text78%`n%Text79%`n%Text80%`n%Text81%`n%Text82%`n%Text83%`n%Text84%`n%Text85%`n%Text86%`n%Text87%`n%Text88%`n%Text89%`n%Text90%`n%Text91%`n%Text92%`n%Text93%`n%Text94%`n%Text95%`n%Text96%`n%Text97%`n%Text98%`n%Text99%`n%Text100%`n%Text101%`n%Text102%`n%Text103%`n%Text104%`n%Text105%`n%Text106%`n%Text107%`n%Text108%`n%Text109%`n%Text110%`n%Text111%`n%Text112%`n%Text113%`n%Text114%`n%Text115%`n%Text116%`n%Text117%`n%Text118%`n%Text119%`n%Text120%`n%Text121%`n%Text122%`n%Text123%`n%Text124%`n%Text125%`n%Text126%`n%Text127%`n%Text128%`n%Text129%`n%Text130%`n%Text131%`n%Text132%`n%Text133%`n%Text134%`n%Text135%`n%Text136%`n%Text137%`n%Text138%`n%Text139%`n%Text140%`n%Text141%`n%Text142%`n%Text143%`n%Text144%`n%Text145%`n%Text146%`n%Text147%`n%Text148%`n%Text149%`n%Text150%`n%Text151%`n%Text152%`n%Text153%`n%Text154%`n%Text155%`n%Text156%`n%Text157%`n%Text158%`n%Text159%`n%Text160%`n%Text161%`n%Text163%`n%Text163%`n%Text164%`n%Text165%`n%Text166%`n%Text167%`n%Text168%`n%Text169%`n%Text170%`n%Text171%`n%Text173%`n%Text174%`n%Text175%`n%Text176%`n%Text177%`n%Text178%`n%Text179%`n%Text180%`n%Text181%`n%Text182%`n%Text183%`n%Text184%`n%Text185%`n%Text186%`n%Text187%`n%Text188%`n%Text189%`n%Text190%`n%Text191%`n%Text192%`n%Text193%`n%Text194%`n%Text195%`n%Text196%`n%Text197%`n%Text198%`n%Text199%`n%Text200%`n%Text201%`n%Text202%

AText = %AText1%`n%AText2%`n%AText3%`n%AText4%`n%AText5%`n%AText6%`n%AText7%`n%AText8%`n%AText9%`n%AText10%`n%AText11%`n%AText12%`n%AText13%`n%AText14%`n%AText15%`n%AText16%`n%AText17%`n%AText18%`n%AText19%`n%AText20%`n%AText21%`n%AText22%`n%AText23%`n%AText24%`n%AText25%`n%AText26%`n%AText27%`n%AText28%

BText = %BText1%`n%BText2%`n%BText3%`n%BText4%`n%BText5%`n%BText6%`n%BText7%`n%BText8%`n%BText9%`n%BText10%`n%BText11%`n%BText12%`n%BText13%`n%BText14%`n%BText15%`n%BText16%`n%BText17%`n%BText18%`n%BText19%`n%BText20%`n%BText21%`n%BText22%`n%BText23%`n%BText24%`n%BText25%`n%BText26%`n%BText27%`n%BText28%`n%BText29%`n%BText30%`n%BText31%`n%BText32%`n%BText33%`n%BText34%`n%BText35%`n%BText36%`n%BText37%`n%BText38%`n%BText39%`n%BText39%`n%Tex40%`n%BText41%`n%BText42%`n%BText43%`n%BText44%`n%BText45%`n%BText46%`n%BText47%`n%BText48%`n%BText49%`n%BText50%`n%BText51%`n%BText52%`n%BText53%`n%BText54%`n%BText55%`n%BText56%`n%BText57%`n%BText58%`n%BText59%`n%BText60%`n%BText61%`n%BText62%`n%BText63%`n%BText64%`n%BText65%`n%BText66%`n%BText67%`n%BText68%`n%BText69%`n%BText70%`n%BText71%`n%BText72%`n%BText73%`n%BText74%`n%BText75%`n%BText76%`n%BText77%`n%BText78%`n%BText79%`n%BText80%`n%BText81%`n%BText82%`n%BText83%`n%BText84%`n%BText85%`n%BText86%`n%BText87%`n%BText88%`n%BText89%`n%BText90%`n%BText91%`n%BText92%`n%BText93%`n%BText94%`n%BText95%`n%BText96%`n%BText97%`n%BText98%`n%BText99%`n%BText100%`n%BText101%`n%BText102%`n%BText103%`n%BText104%`n%BText105%`n%BText106%`n%BText107%`n%BText108%`n%BText109%`n%BText110%`n%BText111%`n%BText112%`n%BText113%`n%BText114%`n%BText115%`n%BText116%`n%BText117%`n%BText118%`n%BText119%`n%BText120%`n%BText121%`n%BText122%`n%BText123%`n%BText124%`n%BText125%`n%BText126%`n%BText127%`n%BText128%`n%BText129%`n%BText130%`n%BText131%`n%BText132%`n%BText133%`n%BText134%`n%BText135%`n%BText136%`n%BText137%`n%BText138%`n%BText139%`n%BText140%`n%BText141%`n%Tex142%`n%BText143%`n%BText144%`n%BText145%`n%BText146%`n%BText147%`n%BText148%`n%BText149%`n%BText150%`n%BText151%`n%BText152%`n%BText153%`n%BText154%`n%BText155%`n%BText156%`n%BText157%`n%BText158%`n%BText159%`n%BText160%`n%BText161%`n%BText163%`n%BText163%`n%BText164%`n%BText165%`n%BText166%`n%BText167%`n%BText168%`n%BText169%`n%BText170%`n%BText171%`n%BText173%`n%BText174%`n%BText175%`n%BText176%`n%BText177%`n%BText178%`n%BText179%`n%BText180%`n%BText181%`n%BText182%`n%BText183%`n%BText184%`n%BText185%`n%BText186%`n%BText187%`n%BText188%`n%BText189%`n%BText190%`n%BText191%`n%BText192%`n%BText193%`n%BText194%`n%BText195%`n%BText196%`n%BText197%`n%BText198%`n%BText199%`n%BText200%`n%BText201%`n%BText202%`n%BText203%`n%BText204%`n%BText205%`n%BText206%`n%BText207%`n%BText208%`n%BText209%`n%BText210%`n%BText211%`n%BText212%`n%BText213%`n%BText214%`n%BText215%`n%BText216%`n%BText217%`n%BText218%`n%BText219%`n%BText220%`n%BText221%`n%BText222%`n%BText223%`n%BText224%`n%BText225%`n%BText226%`n%BText227%`n%BText228%`n%BText229%`n%BText230%`n%BText231%`n%BText232%`n%BText233%`n%BText234%`n%BText235%`n%BText236%`n%BText237%`n%BText238%`n%BText239%`n%BText240%`n%BText241%`n%BText242%`n%BText243%`n%BText244%`n%BText245%`n%BText246%`n%BText247%`n%BText248%`n%BText249%`n%BText250%`n%BText251%`n%BText252%`n%BText253%`n%BText254%`n%BText255%`n%BText256%`n%BText257%`n%BText258%`n%BText259%`n%BText260%`n%BText261%

CText = %CText1%`n%CText2%`n%CText3%`n%CText4%`n%CText5%`n%CText6%`n%CText7%`n%CText8%`n%CText9%`n%CText10%`n%CText11%`n%CText12%`n%CText13%`n%CText14%`n%CText15%`n%CText16%`n%CText17%`n%CText18%`n%CText19%`n%CText20%`n%CText21%`n%CText22%`n%CText23%`n%CText24%`n%CText25%`n%CText26%`n%CText27%`n%CText28%`n%CText29%`n%CText30%`n%CText31%`n%CText32%`n%CText33%`n%CText34%`n%CText35%`n%CText36%`n%CText37%`n%CText38%`n%CText39%`n%CText39%`n%Tex40%`n%CText41%`n%CText42%`n%CText43%`n%CText44%`n%CText45%`n%CText46%`n%CText47%`n%CText48%`n%CText49%`n%CText50%`n%CText51%`n%CText52%`n%CText53%`n%CText54%`n%CText55%`n%CText56%`n%CText57%`n%CText58%`n%CText59%`n%CText60%`n%CText61%`n%CText62%`n%CText63%`n%CText64%`n%CText65%`n%CText66%`n%CText67%`n%CText68%`n%CText69%`n%CText70%`n%CText71%`n%CText72%`n%CText73%`n%CText74%`n%CText75%`n%CText76%`n%CText77%`n%CText78%`n%CText79%`n%CText80%`n%CText81%`n%CText82%`n%CText83%`n%CText84%`n%CText85%`n%CText86%`n%CText87%`n%CText88%`n%CText89%`n%CText90%`n%CText91%`n%CText92%`n%CText93%`n%CText94%`n%CText95%`n%CText96%`n%CText97%`n%CText98%`n%CText99%`n%CText100%`n%CText101%`n%CText102%`n%CText103%`n%CText104%`n%CText105%`n%CText106%`n%CText107%`n%CText108%`n%CText109%`n%CText110%`n%CText111%`n%CText112%`n%CText113%`n%CText114%`n%CText115%`n%CText116%`n%CText117%`n%CText118%`n%CText119%`n%CText120%`n%CText121%`n%CText122%`n%CText123%`n%CText124%`n%CText125%`n%CText126%`n%CText127%`n%CText128%`n%CText129%`n%CText130%`n%CText131%`n%CText132%`n%CText133%`n%CText134%`n%CText135%`n%CText136%`n%CText137%`n%CText138%`n%CText139%`n%CText140%`n%CText141%`n%Tex142%`n%CText143%`n%CText144%`n%CText145%`n%CText146%`n%CText147%`n%CText148%`n%CText149%`n%CText150%`n%CText151%`n%CText152%`n%CText153%`n%CText154%`n%CText155%`n%CText156%`n%CText157%`n%CText158%`n%CText159%`n%CText160%`n%CText161%`n%CText163%`n%CText163%`n%CText164%`n%CText165%`n%CText166%`n%CText167%`n%CText168%`n%CText169%`n%CText170%`n%CText171%`n%CText173%`n%CText174%`n%CText175%`n%CText176%`n%CText177%`n%CText178%`n%CText179%`n%CText180%`n%CText181%`n%CText182%`n%CText183%`n%CText184%`n%CText185%`n%CText186%`n%CText187%`n%CText188%`n%CText189%`n%CText190%`n%CText191%`n%CText192%`n%CText193%`n%CText194%`n%CText195%`n%CText196%`n%CText197%`n%CText198%`n%CText199%`n%CText200%`n%CText201%`n%CText202%`n%CText203%`n%CText204%`n%CText205%`n%CText206%`n%CText207%`n%CText208%`n%CText209%`n%CText210%`n%CText211%`n%CText212%`n%CText213%`n%CText214%`n%CText215%`n%CText216%`n%CText217%`n%CText218%`n%CText219%`n%CText220%`n%CText221%`n%CText222%`n%CText223%`n%CText224%`n%CText225%`n%CText226%`n%CText227%`n%CText228%`n%CText229%`n%CText230%`n%CText231%`n%CText232%`n%CText233%`n%CText234%`n%CText235%`n%CText236%`n%CText237%`n%CText238%`n%CText239%`n%CText240%`n%CText241%`n%CText242%`n%CText243%`n%CText244%`n%CText245%`n%CText246%`n%CText247%`n%CText248%`n%CText249%`n%CText250%

DText = %DText1%`n%DText2%`n%DText3%`n%DText4%`n%DText5%`n%DText6%`n%DText7%`n%DText8%`n%DText9%`n%DText10%`n%DText11%`n%DText12%`n%DText13%`n%DText14%`n%DText15%`n%DText16%`n%DText17%`n%DText18%`n%DText19%`n%DText20%`n%DText21%`n%DText22%`n%DText23%`n%DText24%`n%DText25%`n%DText26%`n%DText27%`n%DText28%`n%DText29%`n%DText30%`n%DText31%`n%DText32%`n%DText33%`n%DText34%`n%DText35%`n%DText36%`n%DText37%`n%DText39%`n%DText39%`n%Tex40%`n%DText41%`n%DText42%`n%DText43%`n%DText44%`n%DText45%`n%DText46%`n%DText47%`n%DText48%`n%DText49%`n%DText50%`n%DText51%`n%DText52%`n%DText53%`n%DText54%`n%DText55%`n%DText56%`n%DText57%`n%DText58%`n%DText59%`n%DText60%`n%DText61%`n%DText62%`n%DText63%`n%DText64%`n%DText65%`n%DText66%`n%DText67%`n%DText68%`n%DText69%`n%DText70%`n%DText71%`n%DText72%`n%DText73%`n%DText74%`n%DText75%`n%DText76%`n%DText77%`n%DText78%`n%DText79%`n%DText80%`n%DText81%`n%DText82%`n%DText83%`n%DText84%`n%DText85%`n%DText86%`n%DText87%`n%DText88%`n%DText89%`n%DText90%`n%DText91%`n%DText92%`n%DText93%`n%DText94%`n%DText95%`n%DText96%`n%DText97%`n%DText98%`n%DText99%`n%DText100%`n%DText101%`n%DText102%`n%DText103%`n%DText104%`n%DText105%`n%DText106%`n%DText107%`n%DText108%`n%DText109%`n%DText110%`n%DText111%`n%DText112%

GuiControl,, AText, %AText%
GuiControl,, BText, %BText%
GuiControl,, CText, %CText%
GuiControl,, DText, %DText%
GuiControl,, Text, %Text%
return

;---------------------------------------------------------------------------------
goto1:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, tpc -1135.29, 375.56, 70.11{Enter}
openbr = 1
Gui, g: Destroy
return

goto2:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, tpc -1806.19, 439.39, 127.93{Enter}
openbr = 1
Gui, g: Destroy
return

goto3:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, tpc -834.32, 114.14, 56.21{Enter}
openbr = 1
Gui, g: Destroy
return

goto4:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, tpc 228.25, 765.94, 204.56{Enter}
openbr = 1
Gui, g: Destroy
return

goto5:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, tpc -1188.68, 289.34, 70.50{Enter}
openbr = 1
Gui, g: Destroy
return

goto6:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, tpc -1549.18, -87.88, 55.72{Enter}
openbr = 1
Gui, g: Destroy
return

goto7:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, tpc -1579.00, -33.85, 56.94{Enter}
openbr = 1
Gui, g: Destroy
return

goto8:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, tpc -1462.32, -32.05, 55.54{Enter}
openbr = 1
Gui, g: Destroy
return


goto9:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, tpc -2584.95, 1913.73, 166.90{Enter}
openbr = 1
Gui, g: Destroy
return

goto10:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, tpc -1516.86, 852.00, 181.20{Enter}
openbr = 1
Gui, g: Destroy
return

goto11:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, tpc 3313.22, 5175.29, 18.81{Enter}
openbr = 1
Gui, g: Destroy
return

goto12:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, tpc -712.52, -1298.13, 5.01{Enter}
openbr = 1
Gui, g: Destroy
return

goto13:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, tpc -1274.98, 496.90, 97.04{Enter}
openbr = 1
Gui, g: Destroy
return

goto14:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, tpc -1025.39, 360.01, 71.31{Enter}
openbr = 1
Gui, g: Destroy
return

goto15:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, tpc -882.32, 365.56, 84.64{Enter}
openbr = 1
Gui, g: Destroy
return

goto16:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, tpc -877.60, 306.26, 82.09{Enter}
openbr = 1
Gui, g: Destroy
return

goto17:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, tpc -701.00, 647.72, 154.53{Enter}
openbr = 1
Gui, g: Destroy
return

goto18:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, tpc -1040.43, 222.49, 63.27{Enter}
openbr = 1
Gui, g: Destroy
return


goto19:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, tpc -997.97, 156.94, 60.83{Enter}
openbr = 1
Gui, g: Destroy
return

goto20:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, tpc -951.94, 195.32, 67.43{Enter}
openbr = 1
Gui, g: Destroy
return

goto21:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, tpc -903.10, 191.32, 69.17{Enter}
openbr = 1
Gui, g: Destroy
return

goto22:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, tpc -969.00, 124.09, 55.95{Enter}
openbr = 1
Gui, g: Destroy
return

goto23:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, tpc -837.51, -25.94, 40.20{Enter}
openbr = 1
Gui, g: Destroy
return

goto24:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, tpc -883.74, 39.66, 49.47{Enter}
openbr = 1
Gui, g: Destroy
return

goto25:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, tpc -1732.53, 380.27, 88.98{Enter}
openbr = 1
Gui, g: Destroy
return

goto26:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, tpc -1863.78, 309.64, 88.94{Enter}
openbr = 1
Gui, g: Destroy
return

goto27:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, tpc -1874.37, 201.60, 85.13{Enter}
openbr = 1
Gui, g: Destroy
return

goto28:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, tpc -1344.88, 481.11, 101.58{Enter}
openbr = 1
Gui, g: Destroy
return


goto29:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, tpc -1897.34, 132.56, 80.94{Enter}
openbr = 1
Gui, g: Destroy
return

goto30:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, tpc -2797.85, 1431.46, 99.35{Enter}
openbr = 1
Gui, g: Destroy
return
;-------------------------------------------------------


copy1:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, set_gps i -1135.29, 375.56, 70.11{Left 25}
openbr = 1
Gui, g: Destroy
return

copy2:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, set_gps i -1806.19, 439.39, 127.93{Left 26}
openbr = 1
Gui, g: Destroy
return

copy3:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, set_gps i -834.32, 114.14, 56.21{Left 24}
openbr = 1
Gui, g: Destroy
return

copy4:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, set_gps i 228.25, 765.94, 204.56{Left 24}
openbr = 1
Gui, g: Destroy
return

copy5:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, set_gps i -1188.68, 289.34, 70.50{Left 25}
openbr = 1
Gui, g: Destroy
return

copy6:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, set_gps i -1549.18, -87.88, 55.72{Left 25}
openbr = 1
Gui, g: Destroy
return

copy7:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, set_gps i -1579.00, -33.85, 56.94{Left 25}
openbr = 1
Gui, g: Destroy
return

copy8:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, set_gps i -1462.32, -32.05, 55.54{Left 25}
openbr = 1
Gui, g: Destroy
return


copy9:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, set_gps i -2584.95, 1913.73, 166.90{Left 25}
openbr = 1
Gui, g: Destroy
return

copy10:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, set_gps i -1516.86, 852.00, 181.20{Left 26}
openbr = 1
Gui, g: Destroy
return

copy11:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, set_gps i 3313.22, 5175.29, 18.81{Left 25}
openbr = 1
Gui, g: Destroy
return

copy12:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, set_gps i -712.52, -1298.13, 5.01{Left 25}
openbr = 1
Gui, g: Destroy
return

copy13:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, set_gps i -1274.98, 496.90, 97.04{Left 25}
openbr = 1
Gui, g: Destroy
return

copy14:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, set_gps i -1025.39, 360.01, 71.31{Left 24}
openbr = 1
Gui, g: Destroy
return

copy15:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, set_gps i -882.32, 365.56, 84.64{Left 24}
openbr = 1
Gui, g: Destroy
return

copy16:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, set_gps i -877.60, 306.26, 82.09{Left 24}
openbr = 1
Gui, g: Destroy
return

copy17:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, set_gps i -701.00, 647.72, 154.53{Left 25}
openbr = 1
Gui, g: Destroy
return

copy18:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, set_gps i -1040.43, 222.49, 63.27{Left 25}
openbr = 1
Gui, g: Destroy
return


copy19:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, set_gps i -997.97, 156.94, 60.83{Enter}
openbr = 1
Gui, g: Destroy
return

copy20:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, set_gps i -951.94, 195.32, 67.43{Left 23}
openbr = 1
Gui, g: Destroy
return

copy21:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, set_gps i -903.10, 191.32, 69.17{Left 23}
openbr = 1
Gui, g: Destroy
return

copy22:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, set_gps i -969.00, 124.09, 55.95{Left 23}
openbr = 1
Gui, g: Destroy
return

copy23:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, set_gps i -837.51, -25.94, 40.20{Left 24}
openbr = 1
Gui, g: Destroy
return

copy24:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, set_gps i -883.74, 39.66, 49.47{Left 22}
openbr = 1
Gui, g: Destroy
return

copy25:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, set_gps i -1732.53, 380.27, 88.98{Left 24}
openbr = 1
Gui, g: Destroy
return

copy26:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, set_gps i -1863.78, 309.64, 88.94{Left 24}
openbr = 1
Gui, g: Destroy
return

copy27:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, set_gps i -1874.37, 201.60, 85.13{Left 24}
openbr = 1
Gui, g: Destroy
return

copy28:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, set_gps i -1344.88, 481.11, 101.58{Left 25}
openbr = 1
Gui, g: Destroy
return


copy29:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, set_gps i -1897.34, 132.56, 80.94{Left 24}
openbr = 1
Gui, g: Destroy
return

copy30:
Gui, Hide
Sendinput, {Sc029}
Sleep 800
MouseClick, left, 55, 374
Sleep 800
MouseClick, left, 33, 333
Sleep 800
SendInput, set_gps i -2797.85, 1431.46, 99.35{Left 25}
openbr = 1
Gui, g: Destroy
return

#SingleInstance Force
#NoEnv

;-------------------------------------------------------------------------------------
going1:
flick = 0
Counter3 = 0

GetKeyState, state, Enter

if state = D
{
    flick = 1
Counter3 = 6
Gosub, hudinfo

}

return

;------------------------------------------------------------------------------------
hudinfo:
~Enter::
if Check81 > 0

			Loop, 6
			{
		if flick = 1
			{
if (Counter3 > 0)

{
				 GuiControlGet, %Counter3%
				Counter3 := Counter3 - 1
				GuiControl, , Counter3, %Counter3%
				sleep 800
				Gui, 3bb: Destroy
				Gosub, hudinfo1
}
			}
		else
		{
	Gui, 3bb: Destroy
Break
		}

}
else
{
}
   Return 

hudinfo1:
Gui, 3bb: +LastFound +AlwaysOnTop -Caption +ToolWindow +E0x20 ; +ToolWindow avoids a taskbar button and an alt-tab menu item.
Gui, 3bb: Color, cWhite
Gui, 3bb: Font, Intro
Gui, 3bb: Font, s%My3Slider2% ; Set a large font size (32-point).
Gui, 3bb: Font, q1
Gui, 3bb: Font, w%My3Slider3%
Gui, 3bb: Add, Text, x8 y10 c%3Set1Color% +Center, Нажмите %HotLogin2% чтобы`nответ был засчитан в счетчик.`nТаймер: %Counter3%

Gui, 3bb: Show, x%xpos2% y%ypos2% NoActivate
WinSet, TransColor, %CustomColor%  %My3Slider1%
if Counter3 = 0
{
Gui, 3bb: Destroy
flick = 0
}
return

;-------------------------------------------------------------------------------------


SaveSprab:
FileDelete, setting_spravq.ini
GuiControlGet, OutputVar
MyIniWrite(OutputVar, "setting_spravq.ini", "Section", "Key")
Return

MyIniWrite(Value, Filename, Section, Key)
{
   Loop, Parse, value, `r`n
      IniWrite, %A_LoopField%, %Filename%, %Section%, %A_Index%|%Key%
}

Return