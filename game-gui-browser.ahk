#SingleInstance Force
#NoEnv
StringCaseSense Locale

ES_NOHIDESEL := 256  ; показывает выделение текста в Edit при неактивном окне
EM_SETSEL := 0x00B1  ; установка выделения
EM_SCROLLCARET := 0xB7  ; сделать видимым выделенный текст
EM_GETSEL := 0xB0  ; извлечь позицию каретки ввода
VarSetCapacity(start, 4), VarSetCapacity(end, 4)

IfNotExist, C:\Admin-Binder\gui\pravilap.ini
URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/pravilap.ini, C:\Admin-Binder\gui\pravilap.ini

IfNotExist, C:\Admin-Binder\gui\pravilagos.ini
URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/pravilagos.ini, C:\Admin-Binder\gui\pravilagos.ini

IfNotExist, C:\Admin-Binder\gui\pravilas.ini
URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/pravilas.ini, C:\Admin-Binder\gui\pravilas.ini

Loop, 202
{
FileReadLine, Text%A_Index%, C:\Admin-Binder\gui\pravilap.ini, %A_Index%
}

Loop, 28
{
FileReadLine, AText%A_Index%, C:\Admin-Binder\gui\pravilas.ini, %A_Index%
}

Loop, 261
{
FileReadLine, BText%A_Index%, C:\Admin-Binder\gui\pravilagos.ini, %A_Index%
}

Gui, +HWNDhGUIMain +AlwaysOnTop
SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit1%
SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit2%
SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit3%
Gosub, Sebi

Gui Add, Tab3, x0 y0 w620 h430, Правила проекта|Правила сервера|Правила Гос

Gui Tab, 1
Gui Add, Button, x310 y407 w50 h20 gFin1, Поиск
Gui Add, Edit, x3 y24 w614 h383 +Multi +ReadOnly vMainEdit1 hwndhMainEdit1 %ES_NOHIDESEL%, %Text%

Gui Tab, 2 
Gui Add, Button, x310 y407 w50 h20 gFin2, Поиск
Gui Add, Edit, x3 y24 w614 h383 +Multi +ReadOnly vMainEdit2 hwndhMainEdit2 %ES_NOHIDESEL%, %AText%

Gui Tab, 3 
Gui Add, Button, x310 y407 w50 h20 gFin3, Поиск
Gui Add, Edit, x3 y24 w614 h383 +Multi +ReadOnly vMainEdit3 hwndhMainEdit3 %ES_NOHIDESEL%, %BText%

Gui Show, w620 h430, Window
return
GuiEscape:
GuiClose:
    ExitApp
return
;-----------------------------------------------------------------------------------

Fin1:
Gui, 2: +Owner1 -MaximizeBox -MinimizeBox -DPIScale +HWNDhGUIFind
Gui, 2: Add, Text, ym+5, Что:
Gui, 2: Add, Edit, x+25 yp-5 w284 vFind hwndhFind
Gui, 2: Add, Button, x+10 yp gGoSearch1, Найти далее
Gui, 2: Add, Button, xp y+5 wp gCancel1, Отмена
Gui, 2: Add, Checkbox, vLoop y+0 xm Checked, Зациклить поиск
Gui, 2: Add, Checkbox, vSens y+10 xp, С учетом регистра
Gui, 2: Add, GroupBox, x+10 yp-35 h55, Направление
Gui, 2: Add, Radio, xp+10 yp+25 vDirectUp, Вверх
Gui, 2: Add, Radio, x+15 Checked, Вниз 
Gui, 2: Show, , Найти 
return
2GuiEscape:
2GuiClose:
    Gui Destroy
return

SearchEdit1: 
Gosub, GoSearch1
    Gui, 2: Show, , Найти 
    Return
    
Cancel1:
    Gui, 2: Hide
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
    }
    SendMessage, EM_SETSEL, f-1, f+StrLen(Find)-1, , ahk_id %hMainEdit1%
    SendMessage, EM_SCROLLCARET,,,, ahk_id %hMainEdit1%
    Return
;-----------------------------------------------------------------------------------

Fin2:
Gui, 3: +Owner1 -MaximizeBox -MinimizeBox -DPIScale +HWNDhGUIFind
Gui, 3: Add, Text, ym+5, Что:
Gui, 3: Add, Edit, x+25 yp-5 w284 vFind11 hwndhFind11
Gui, 3: Add, Button, x+10 yp gGoSearch2, Найти далее
Gui, 3: Add, Button, xp y+5 wp gCancel2, Отмена
Gui, 3: Add, Checkbox, vLoop11 y+0 xm Checked, Зациклить поиск
Gui, 3: Add, Checkbox, vSens11 y+10 xp, С учетом регистра
Gui, 3: Add, GroupBox, x+10 yp-35 h55, Направление
Gui, 3: Add, Radio, xp+10 yp+25 vDirectUp11, Вверх
Gui, 3: Add, Radio, x+15 Checked, Вниз 
Gui, 3: Show, , Найти 
return
3GuiEscape:
3GuiClose:
    Gui Destroy
return

SearchEdit2: 
Gosub, GoSearch2
    Gui, 3: Show, , Найти 
    Return
    
Cancel2:
    Gui, 3: Hide
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
    }
    SendMessage, EM_SETSEL, f-1, f+StrLen(Find11)-1, , ahk_id %hMainEdit2%
    SendMessage, EM_SCROLLCARET,,,, ahk_id %hMainEdit2%
    Return

GoSearch3:
      GuiControlGet, bDirectUp, 3:
    GuiControlGet, bSens, 3:
    GuiControlGet, bLoop, 3:
    ControlGetText, MainEdit3,, ahk_id %hMainEdit3%
    ControlGetText, bFind,, ahk_id %hbFind%
    SendMessage, EM_GETSEL, &start, &end, , ahk_id %hMainEdit3%
    If bDirectUp
        f := (f := InStr(SubStr(MainEdit3, 1, NumGet(start)), bFind, bSens, 0)) ? f : (bLoop ? InStr(MainEdit3, bFind, bSens, 0) : 0)
    Else
        f := (f := InStr(MainEdit3, bFind, bSens, NumGet(end)+1)) ? f : (bLoop ? InStr(MainEdit3, bFind, bSens, 1) : 0)
    If !f
    {
    }
    SendMessage, EM_SETSEL, f-1, f+StrLen(bFind)-1, , ahk_id %hMainEdit3%
    SendMessage, EM_SCROLLCARET,,,, ahk_id %hMainEdit3%
    Return
;-----------------------------------------------------------------------------------

Fin3:
Gui, 4: +Owner1 -MaximizeBox -MinimizeBox -DPIScale +HWNDhGUIFind
Gui, 4: Add, Text, ym+5, Что:
Gui, 4: Add, Edit, x+25 yp-5 w284 vbFind hwndhbFind
Gui, 4: Add, Button, x+10 yp gGoSearch3, Найти далее
Gui, 4: Add, Button, xp y+5 wp gCancel3, Отмена
Gui, 4: Add, Checkbox, vbLoop y+0 xm Checked, Зациклить поиск
Gui, 4: Add, Checkbox, vbSens y+10 xp, С учетом регистра
Gui, 4: Add, GroupBox, x+10 yp-35 h55, Направление
Gui, 4: Add, Radio, xp+10 yp+25 vbDirectUp, Вверх
Gui, 4: Add, Radio, x+15 Checked, Вниз 
Gui, 4: Show, , Найти 
return
4GuiEscape:
4GuiClose:
    Gui Destroy
return

SearchEdit3: 
Gosub, GoSearch3
    Gui, 4: Show, , Найти 
    Return
    
Cancel3:
    Gui, 4: Hide
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

Text = %Text1%`n%Text2%`n%Text3%`n%Text4%`n%Text5%`n%Text6%`n%Text7%`n%Text8%`n%Text9%`n%Text10%`n%Text11%`n%Text12%`n%Text13%`n%Text14%`n%Text15%`n%Text16%`n%Text17%`n%Text18%`n%Text19%`n%Text20%`n%Text21%`n%Text22%`n%Text23%`n%Text24%`n%Text25%`n%Text26%`n%Text27%`n%Text28%`n%Text29%`n%Text30%`n%Text31%`n%Text32%`n%Text33%`n%Text34%`n%Text35%`n%Text36%`n%Text37%`n%Text39%`n%Text39%`n%Tex40%`n%Text41%`n%Text42%`n%Text43%`n%Text44%`n%Text45%`n%Text46%`n%Text47%`n%Text48%`n%Text49%`n%Text50%`n%Text51%`n%Text52%`n%Text53%`n%Text54%`n%Text55%`n%Text56%`n%Text57%`n%Text58%`n%Text59%`n%Text60%`n%Text61%`n%Text62%`n%Text63%`n%Text64%`n%Text65%`n%Text66%`n%Text67%`n%Text68%`n%Text69%`n%Text70%`n%Text71%`n%Text72%`n%Text73%`n%Text74%`n%Text75%`n%Text76%`n%Text77%`n%Text78%`n%Text79%`n%Text80%`n%Text81%`n%Text82%`n%Text83%`n%Text84%`n%Text85%`n%Text86%`n%Text87%`n%Text88%`n%Text89%`n%Text90%`n%Text91%`n%Text92%`n%Text93%`n%Text94%`n%Text95%`n%Text96%`n%Text97%`n%Text98%`n%Text99%`n%Text100%`n%Text101%`n%Text102%`n%Text103%`n%Text104%`n%Text105%`n%Text106%`n%Text107%`n%Text108%`n%Text109%`n%Text110%`n%Text111%`n%Text112%`n%Text113%`n%Text114%`n%Text115%`n%Text116%`n%Text117%`n%Text118%`n%Text119%`n%Text120%`n%Text121%`n%Text122%`n%Text123%`n%Text124%`n%Text125%`n%Text126%`n%Text127%`n%Text128%`n%Text129%`n%Text130%`n%Text131%`n%Text132%`n%Text133%`n%Text134%`n%Text135%`n%Text136%`n%Text137%`n%Text138%`n%Text139%`n%Text140%`n%Text141%`n%Tex142%`n%Text143%`n%Text144%`n%Text145%`n%Text146%`n%Text147%`n%Text148%`n%Text149%`n%Text150%`n%Text151%`n%Text152%`n%Text153%`n%Text154%`n%Text155%`n%Text156%`n%Text157%`n%Text158%`n%Text159%`n%Text160%`n%Text161%`n%Text163%`n%Text163%`n%Text164%`n%Text165%`n%Text166%`n%Text167%`n%Text168%`n%Text169%`n%Text170%`n%Text171%`n%Text173%`n%Text174%`n%Text175%`n%Text176%`n%Text177%`n%Text178%`n%Text179%`n%Text180%`n%Text181%`n%Text182%`n%Text183%`n%Text184%`n%Text185%`n%Text186%`n%Text187%`n%Text188%`n%Text189%`n%Text190%`n%Text191%`n%Text192%`n%Text193%`n%Text194%`n%Text195%`n%Text196%`n%Text197%`n%Text198%`n%Text199%`n%Text200%`n%Text201%`n%Text202%

AText = %AText1%`n%AText2%`n%AText3%`n%AText4%`n%AText5%`n%AText6%`n%AText7%`n%AText8%`n%AText9%`n%AText10%`n%AText11%`n%AText12%`n%AText13%`n%AText14%`n%AText15%`n%AText16%`n%AText17%`n%AText18%`n%AText19%`n%AText20%`n%AText21%`n%AText22%`n%AText23%`n%AText24%`n%AText25%`n%AText26%`n%AText27%`n%AText28%

BText = %BText1%`n%BText2%`n%BText3%`n%BText4%`n%BText5%`n%BText6%`n%BText7%`n%BText8%`n%BText9%`n%BText10%`n%BText11%`n%BText12%`n%BText13%`n%BText14%`n%BText15%`n%BText16%`n%BText17%`n%BText18%`n%BText19%`n%BText20%`n%BText21%`n%BText22%`n%BText23%`n%BText24%`n%BText25%`n%BText26%`n%BText27%`n%BText28%`n%BText29%`n%BText30%`n%BText31%`n%BText32%`n%BText33%`n%BText34%`n%BText35%`n%BText36%`n%BText37%`n%BText39%`n%BText39%`n%Tex40%`n%BText41%`n%BText42%`n%BText43%`n%BText44%`n%BText45%`n%BText46%`n%BText47%`n%BText48%`n%BText49%`n%BText50%`n%BText51%`n%BText52%`n%BText53%`n%BText54%`n%BText55%`n%BText56%`n%BText57%`n%BText58%`n%BText59%`n%BText60%`n%BText61%`n%BText62%`n%BText63%`n%BText64%`n%BText65%`n%BText66%`n%BText67%`n%BText68%`n%BText69%`n%BText70%`n%BText71%`n%BText72%`n%BText73%`n%BText74%`n%BText75%`n%BText76%`n%BText77%`n%BText78%`n%BText79%`n%BText80%`n%BText81%`n%BText82%`n%BText83%`n%BText84%`n%BText85%`n%BText86%`n%BText87%`n%BText88%`n%BText89%`n%BText90%`n%BText91%`n%BText92%`n%BText93%`n%BText94%`n%BText95%`n%BText96%`n%BText97%`n%BText98%`n%BText99%`n%BText100%`n%BText101%`n%BText102%`n%BText103%`n%BText104%`n%BText105%`n%BText106%`n%BText107%`n%BText108%`n%BText109%`n%BText110%`n%BText111%`n%BText112%`n%BText113%`n%BText114%`n%BText115%`n%BText116%`n%BText117%`n%BText118%`n%BText119%`n%BText120%`n%BText121%`n%BText122%`n%BText123%`n%BText124%`n%BText125%`n%BText126%`n%BText127%`n%BText128%`n%BText129%`n%BText130%`n%BText131%`n%BText132%`n%BText133%`n%BText134%`n%BText135%`n%BText136%`n%BText137%`n%BText138%`n%BText139%`n%BText140%`n%BText141%`n%Tex142%`n%BText143%`n%BText144%`n%BText145%`n%BText146%`n%BText147%`n%BText148%`n%BText149%`n%BText150%`n%BText151%`n%BText152%`n%BText153%`n%BText154%`n%BText155%`n%BText156%`n%BText157%`n%BText158%`n%BText159%`n%BText160%`n%BText161%`n%BText163%`n%BText163%`n%BText164%`n%BText165%`n%BText166%`n%BText167%`n%BText168%`n%BText169%`n%BText170%`n%BText171%`n%BText173%`n%BText174%`n%BText175%`n%BText176%`n%BText177%`n%BText178%`n%BText179%`n%BText180%`n%BText181%`n%BText182%`n%BText183%`n%BText184%`n%BText185%`n%BText186%`n%BText187%`n%BText188%`n%BText189%`n%BText190%`n%BText191%`n%BText192%`n%BText193%`n%BText194%`n%BText195%`n%BText196%`n%BText197%`n%BText198%`n%BText199%`n%BText200%`n%BText201%`n%BText202%`n%BText203%`n%BText204%`n%BText205%`n%BText206%`n%BText207%`n%BText208%`n%BText209%`n%BText210%`n%BText211%`n%BText212%`n%BText213%`n%BText214%`n%BText215%`n%BText216%`n%BText217%`n%BText218%`n%BText219%`n%BText220%`n%BText221%`n%BText222%`n%BText223%`n%BText224%`n%BText225%`n%BText226%`n%BText227%`n%BText228%`n%BText229%`n%BText230%`n%BText231%`n%BText232%`n%BText233%`n%BText234%`n%BText235%`n%BText236%`n%BText237%`n%BText238%`n%BText239%`n%BText240%`n%BText241%`n%BText242%`n%BText243%`n%BText244%`n%BText245%`n%BText246%`n%BText247%`n%BText248%`n%BText249%`n%BText250%`n%BText251%`n%BText252%`n%BText253%`n%BText254%`n%BText255%`n%BText256%`n%BText257%`n%BText258%`n%BText259%`n%BText260%`n%BText261%

GuiControl,, AText, %AText%
GuiControl,, BText, %BText%
GuiControl,, Text, %Text%
return

