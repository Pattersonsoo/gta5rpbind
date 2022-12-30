#SingleInstance Force
#NoEnv
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
ListLines Off
SetBatchLines, -1
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1
Run = 0

SetWorkingDir C:\
SetBatchLines -1

Menu, Tray, NoStandard
Menu,Tray,Add,Развернуть,lala
Menu,Tray,Add,Досрочно закрыть,lala2
Menu,Tray,Add,Перезагрузить,lala3

if (A_IsAdmin == false) {
   Run *RunAs "%A_ScriptFullPath%" ,, UseErrorLevel
}

;--------------------------------------------------------------------------

IniRead, MySettO1, C:\setting.ini, Setup, MySett1
IniRead, MyHotKey, C:\setting.ini, Setup, Bind1

IniRead, MySettO2, C:\setting.ini, Setup, MySett2
IniRead, MyHotKey2, C:\setting.ini, Setup, Bind2

IniRead, MyText3, C:\setting.ini, Setup, Otv3
IniRead, MyHotKey3, C:\setting.ini, Setup, Bind3

IniRead, MySettO3, C:\setting.ini, Setup, MySett3
IniRead, MyHotKey4, C:\setting.ini, Setup, Bind4

IniRead, MyHotKey5, C:\setting.ini, Setup, Bind5
IniRead, MyHotKey6, C:\setting.ini, Setup, Bind6
IniRead, MyHotKey7, C:\setting.ini, Setup, Bind7
IniRead, MyHotKey8, C:\setting.ini, Setup, Bind8
IniRead, MyHotKey9, C:\setting.ini, Setup, Bind9

IniRead, MyHotKey10, C:\setting.ini, Setup, Bind10
IniRead, MyText5, C:\setting.ini, Setup, Otv10

IniRead, MyHotKey11, C:\setting.ini, Setup, Bind11
IniRead, MyText6, C:\setting.ini, Setup, Otv11

IniRead, MyHotKey12, C:\setting.ini, Setup, Bind12
IniRead, MyText7, C:\setting.ini, Setup, Otv12

IniRead, MyHotKey13, C:\setting.ini, Setup, Bind13
IniRead, MyText8, C:\setting.ini, Setup, Otv13

IniRead, MyHotKey14, C:\setting.ini, Setup, Bind14
IniRead, MyText9, C:\setting.ini, Setup, Otv14

IniRead, MyHotKey15, C:\setting.ini, Setup, Bind15
IniRead, MyText10, C:\setting.ini, Setup, Otv15

IniRead, Counter, C:\setting.ini, Setup, ReportsOld

IniRead, MyHotKey16, C:\setting.ini, Setup, Bind16
IniRead, MyText11, C:\setting.ini, Setup, Otv16

IniRead, MyHotKey17, C:\setting.ini, Setup, Bind17
IniRead, MyText12, C:\setting.ini, Setup, Otv17

IniRead, MyHotKey18, C:\setting.ini, Setup, Bind18
IniRead, MyText13, C:\setting.ini, Setup, Otv18

IniRead, MyHotKey19, C:\setting.ini, Setup, Bind19
IniRead, MyText14, C:\setting.ini, Setup, Otv19

IniRead, MyHotKey20, C:\setting.ini, Setup, Bind20
IniRead, MyText15, C:\setting.ini, Setup, Otv20

IniRead, MyHotKey21, C:\setting.ini, Setup, Bind21
IniRead, MyText16, C:\setting.ini, Setup, Otv21

IniRead, MyHotKey22, C:\setting.ini, Setup, Bind22
IniRead, MyText17, C:\setting.ini, Setup, Otv22

IniRead, MyHotKey23, C:\setting.ini, Setup, Bind23
IniRead, MyText18, C:\setting.ini, Setup, Otv23

IniRead, MyEdit1, C:\setting.ini, Setup, MyEdit1
IniRead, MyEdit2, C:\setting.ini, Setup, MyEdit2
IniRead, MyEdit3, C:\setting.ini, Setup, MyEdit3
IniRead, MyEdit4, C:\setting.ini, Setup, MyEdit4
IniRead, MyEdit5, C:\setting.ini, Setup, MyEdit5

IniRead, MyEdit11, C:\setting.ini, Setup, MyEdit11
IniRead, MyEdit12, C:\setting.ini, Setup, MyEdit12
IniRead, MyEdit13, C:\setting.ini, Setup, MyEdit13
IniRead, MyEdit14, C:\setting.ini, Setup, MyEdit14
IniRead, MyEdit15, C:\setting.ini, Setup, MyEdit15

IniRead, MyEdit21, C:\setting.ini, Setup, MyEdit21
IniRead, MyEdit22, C:\setting.ini, Setup, MyEdit22
IniRead, MyEdit23, C:\setting.ini, Setup, MyEdit23
IniRead, MyEdit24, C:\setting.ini, Setup, MyEdit24
IniRead, MyEdit25, C:\setting.ini, Setup, MyEdit25
IniRead, Check, C:\setting.ini, Setup, Check
IniRead, Check2, C:\setting.ini, Setup, Check2
;--------------------------------------------------------------------------------------

Gui, Add, Tab, x0 y0 w625 h425, Основные бинды|Свой бинд|Настройки

Gui, Tab, 1

Gui Add, Text, x16 y33 w82 h23 +0x200, % " Помочь игроку"
Gui Add, GroupBox, x8 y18 w379 h49
Gui Add, Edit, x290 y33 w20 h21 vMySettO1, %MySettO1%
Gui Add, Hotkey, x104 y33 w60 h21 vMyHotKey, %MyHotKey%
Gui Add, Button, x315 y33 w65 h21 gSett0, Настроить
Gui Add, Text, x168 y33 w122 h22 +0x200,% " Количество вариантов"
Gui Add, Text, x270 y13 w55 h15 +0x200 +Disabled,% "Макс. - 5"

Gui Add, Hotkey, x107 y78 w58 h21 vMyHotKey2, %MyHotKey2%
Gui Add, Text, x14 y78 w82 h23 +0x200, % "  Проследить"
Gui Add, Text, x168 y78 w122 h22 +0x200,% " Количество вариантов"
Gui Add, Edit, x290 y78 w20 h21 vMySettO2, %MySettO2%
Gui Add, Button, x315 y78 w65 h21 gSett1, Настроить
Gui Add, GroupBox, x8 y62 w379 h49

Gui Add, GroupBox, x8 y107 w379 h49
Gui Add, Text, x14 y120 w87 h23 +0x200, % "  Не нарушает"
Gui Add, Hotkey, x107 y122 w58 h21 vMyHotKey3, %MyHotKey3%
Gui Add, Text, x171 y122 w41 h22 +0x200, % "  Ответ "
Gui Add, Edit, x219 y122 w146 h21 vMyText3, %MyText3%

Gui Add, GroupBox, x8 y152 w379 h49
Gui Add, Text, x16 y168 w82 h23 +0x200, % " Приятной игры"
Gui Add, Hotkey, x104 y168 w58 h21 vMyHotKey4, %MyHotKey4%
Gui Add, Text, x168 y168 w122 h22 +0x200,% " Количество вариантов"
Gui Add, Edit, x290 y168 w20 h21 vMySettO3, %MySettO3%
Gui Add, Button, x315 y168 w65 h21 gSett2, Настроить

Gui Add, GroupBox, x8 y200 w379 h49
Gui Add, Text, x16 y215 w82 h23 +0x200, % " Авто-алогин"
Gui Add, Hotkey, x104 y216 w58 h21 vMyHotKey15, %MyHotKey15%
Gui Add, Text, x168 y216 w41 h22 +0x200, % "Пароль "
Gui Add, Edit, x216 y216 w146 h21 vMyText10, %MyText10%

Gui Add, ListBox, x8 y256 w274 h147, .жб - Жалоба|.обж - Обжалование||.мех - Вытащить но вызвать механика||.пер - G - Толкать||.сап - Обратитесь в нашу поддержку на почту||.тех - Обратитесь в тех.раздел||.контракты - полная инфа по контрактам(время) ||.дс - следите за новостями ДС||.негарант - Не являемся гарантами ||.отфам - Отображение ID Семьи||.афксерд - ТП на сердечко
Gui Add, Text, x8 y403 w274 h13 +0x200 +Center -Background, Краткие команды(вводить так как написано)

Gui Add, Text, x400 y28 w53 h23 +0x200 +Center, tpcar
Gui Add, Text, x400 y60 w53 h23 +0x200 +Center, dimension
Gui Add, Text, x400 y92 w53 h23 +0x200 +Center, gethere
Gui Add, Text, x400 y124 w53 h23 +0x200 +Center, goto
Gui Add, Text, x400 y156 w53 h23 +0x200 +Center, re
Gui Add, Hotkey, x464 y28 w50 h21 vMyHotKey5, %MyHotKey5%
Gui Add, Hotkey, x464 y60 w50 h21 vMyHotKey6, %MyHotKey6%
Gui Add, Hotkey, x464 y92 w50 h21 vMyHotKey7, %MyHotKey7%
Gui Add, Hotkey, x464 y124 w50 h21 vMyHotKey8, %MyHotKey8%
Gui Add, Hotkey, x464 y156 w50 h21 vMyHotKey9, %MyHotKey9%

Gui Add, GroupBox, x392 y18 w134 h176
Gui Add, GroupBox, x392 y194 w202 h171, Свой бинд
Gui Add, Edit, x400 y208 w106 h21 vMyText5, %MyText5%
Gui Add, Hotkey, x512 y208 w73 h21 vMyHotKey10, %MyHotKey10%
Gui Add, Hotkey, x512 y240 w73 h21 vMyHotKey11, %MyHotKey11%
Gui Add, Edit, x400 y240 w106 h21 vMyText6, %MyText6%
Gui Add, Edit, x400 y272 w106 h21 vMyText7, %MyText7%
Gui Add, Edit, x400 y304 w106 h21 vMyText8, %MyText8%
Gui Add, Edit, x400 y336 w106 h21 vMyText9, %MyText9%
Gui Add, Hotkey, x512 y272 w73 h21 vMyHotKey12, %MyHotKey12%
Gui Add, Hotkey, x512 y304 w73 h21 vMyHotKey13, %MyHotKey13%
Gui Add, Hotkey, x512 y336 w73 h21 vMyHotKey14, %MyHotKey14%

Gui Add, Button, x440 y384 w80 h23 gSave, Сохранить
Gui Add, Button, x528 y384 w80 h23 gStart, Начать

Gui Add, Button, x312 y384 w120 h23 gFullClear, Обнулить настройки

Gui Add, Button, x301 y283 w80 h23 gClear, Сбросить
Gui Add, GroupBox, x296 y245 w91 h65

Gui, Add, Text, x360 y260 w24 h21 +Center vCounter, %Counter%
Gui, Add, Text, x300 y255 w50 h26 +Center, Репорта  отвечено
Gui, Add, Text, x350 y260 w10 h10 +Center, -

Gui, 1: Show, w620 h420, Admin-Binder by Notoriuz

Gui, Tab, 2
Gui Add, Text, x16 y40 w32 h21 +0x200 +Center, Бинд
Gui Add, Hotkey, x56 y40 w67 h21 vMyHotKey16, %MyHotKey16%
Gui Add, Text, x128 y40 w71 h21 +0x200 +Center, Действие
Gui Add, Edit, x208 y40 w386 h21 vMyText11, %MyText11%
Gui Add, GroupBox, x8 y24 w595 h49

Gui Add, Text, x16 y87 w32 h21 +0x200 +Center, Бинд
Gui Add, Hotkey, x56 y87 w67 h21 vMyHotKey17, %MyHotKey17%
Gui Add, Text, x128 y87 w71 h21 +0x200 +Center, Действие
Gui Add, Edit, x208 y87 w386 h21 vMyText12, %MyText12%
Gui Add, GroupBox, x8 y70 w595 h49

Gui Add, Text, x16 y134 w32 h21 +0x200 +Center, Бинд
Gui Add, Hotkey, x56 y134 w67 h21 vMyHotKey18, %MyHotKey18%
Gui Add, Text, x128 y134 w71 h21 +0x200 +Center, Действие
Gui Add, Edit, x208 y134 w386 h21 vMyText13, %MyText13%
Gui Add, GroupBox, x8 y116 w595 h49

Gui Add, Text, x16 y179 w32 h21 +0x200 +Center, Бинд
Gui Add, Hotkey, x56 y179 w67 h21 vMyHotKey19, %MyHotKey19%
Gui Add, Text, x128 y179 w71 h21 +0x200 +Center, Действие
Gui Add, Edit, x208 y179 w386 h21 vMyText14, %MyText14%
Gui Add, GroupBox, x8 y162 w595 h49

Gui Add, Text, x16 y226 w32 h21 +0x200 +Center, Бинд
Gui Add, Hotkey, x56 y226 w67 h21 vMyHotKey20, %MyHotKey20%
Gui Add, Text, x128 y226 w71 h21 +0x200 +Center, Действие
Gui Add, Edit, x208 y226 w386 h21 vMyText15, %MyText15%
Gui Add, GroupBox, x8 y208 w595 h49

Gui Add, Text, x16 y271 w32 h21 +0x200 +Center, Бинд
Gui Add, Hotkey, x56 y271 w67 h21 vMyHotKey21, %MyHotKey21%
Gui Add, Text, x128 y271 w71 h21 +0x200 +Center, Действие
Gui Add, Edit, x208 y271 w386 h21 vMyText16, %MyText16%
Gui Add, GroupBox, x8 y253 w595 h49

Gui Add, Text, x16 y317 w32 h21 +0x200 +Center, Бинд
Gui Add, Hotkey, x56 y317 w67 h21 vMyHotKey22, %MyHotKey22%
Gui Add, Text, x128 y317 w71 h21 +0x200 +Center, Действие
Gui Add, Edit, x208 y317 w386 h21 vMyText17, %MyText17%
Gui Add, GroupBox, x8 y300 w595 h49

Gui Add, Text, x16 y363 w32 h21 +0x200 +Center, Бинд
Gui Add, Hotkey, x56 y363 w67 h21 vMyHotKey23, %MyHotKey23%
Gui Add, Text, x128 y363 w71 h21 +0x200 +Center, Действие
Gui Add, Edit, x208 y363 w386 h21 vMyText18, %MyText18%
Gui Add, GroupBox, x8 y347 w595 h49

Gui Add, Button, x440 y390 w80 h23 gSave, Сохранить
Gui Add, Button, x528 y390 w80 h23 gStart, Начать
Gui, Tab, 3

Gui Add, CheckBox, x16 y30 w200 h30 +Center vCheck Checked%Check%, Использовать 1,2 Доп.Клавишу мыши
Gui Add, CheckBox, x16 y82 w200 h30 +Center vCheck2 Checked%Check2%, Использовать Все функции колесика мыши
Gui Add, GroupBox, x8 y18 w328 h49
Gui Add, GroupBox, x8 y68 w328 h49

Gui Add, Button, x440 y390 w80 h23 gSave, Сохранить
Gui Add, Button, x528 y390 w85 h23 gReload, Перезагрузить
Gui, Add, Button, x230 y30 w100 h30 gProk1, Сохранить
Gui, Add, Button, x230 y80 w100 h30 gProk2, Сохранить

Return
GuiEscape:
GuiClose:
    ExitApp

;--------------------------------------------------------------------------------------

Prok1:
Gui, Submit, NoHide
if Check > 0
{
Hotkey, XButton1, XButton1, on
Hotkey, XButton2, XButton2, on
MsgBox, Функция доп.клавиш включена.
run = 0
}
else
{
Hotkey, XButton1, XButton1, off
Hotkey, XButton2, XButton2, off
MsgBox, Функция доп.клавиш отключена.
run = 1
}
return

XButton1:
Send, !^a
return

XButton2:
Send, !^b
return

;--------------------------------------------------------------------------------------

Prok2:
Gui, Submit, NoHide
if Check2 > 0
{
Hotkey, MButton, MButton, on
Hotkey, WheelDown, WheelDown, on
Hotkey, WheelUp, WheelUp, on
MsgBox, Функции колеса мыши включены.
run = 0
}
else
{
Hotkey, MButton, MButton, off
Hotkey, WheelDown, WheelDown, off
Hotkey, WheelUp, WheelUp, off
MsgBox, Функции колеса мыши отключены.
run = 1
}
return

MButton:
Send, !^c
return

WheelDown:
Send, !^d
return

WheelUp:
Send, !^e
return

Sett0:
GuiControlGet, MySettO1,,MySettO1
Gosub, %MySettO1%
return

Sett1:
GuiControlGet, MySettO2,,MySettO2
a := MySettO2 + 5
GuiControl,, a, %a%
Gosub, %a%
return

Sett2:
GuiControlGet, MySettO3,,MySettO3
b := MySettO3 + 10
GuiControl,, b, %b%
Gosub, %b%
return

Save2:
Gui, Submit, NoHide
IniWrite, %MyEdit1%, C:\setting.ini, Setup, MyEdit1
IniWrite, %MyEdit2%, C:\setting.ini, Setup, MyEdit2
IniWrite, %MyEdit3%, C:\setting.ini, Setup, MyEdit3
IniWrite, %MyEdit4%, C:\setting.ini, Setup, MyEdit4
IniWrite, %MyEdit5%, C:\setting.ini, Setup, MyEdit5
MsgBox Данные сохранены!
 return

Save3:
Gui, Submit, NoHide
IniWrite, %MyEdit11%, C:\setting.ini, Setup, MyEdit11
IniWrite, %MyEdit12%, C:\setting.ini, Setup, MyEdit12
IniWrite, %MyEdit13%, C:\setting.ini, Setup, MyEdit13
IniWrite, %MyEdit14%, C:\setting.ini, Setup, MyEdit14
IniWrite, %MyEdit15%, C:\setting.ini, Setup, MyEdit15
MsgBox Данные сохранены!
 return


Save4:
Gui, Submit, NoHide
IniWrite, %MyEdit21%, C:\setting.ini, Setup, MyEdit21
IniWrite, %MyEdit22%, C:\setting.ini, Setup, MyEdit22
IniWrite, %MyEdit23%, C:\setting.ini, Setup, MyEdit23
IniWrite, %MyEdit24%, C:\setting.ini, Setup, MyEdit24
IniWrite, %MyEdit25%, C:\setting.ini, Setup, MyEdit25
MsgBox Данные сохранены!
 return

FullClear:

MsgBox, Настройки были сброшены.

IfMsgBox Yes

MyHotKey :=
IniWrite, 1, C:\setting.ini, Setup, MySett1
IniWrite, %MyHotKey%, C:\setting.ini, Setup, Bind1

MyHotKey2 :=
IniWrite, 1, C:\setting.ini, Setup, MySett2
IniWrite, %MyHotKey2%, C:\setting.ini, Setup, Bind2

MyText3 :=
MyHotKey3 :=
IniWrite, %MyText3%, C:\setting.ini, Setup, Otv3
IniWrite, %MyHotKey3%, C:\setting.ini, Setup, Bind3

MyHotKey4 :=
IniWrite, 1, C:\setting.ini, Setup, MySett3
IniWrite, %MyHotKey4%, C:\setting.ini, Setup, Bind4

MyHotKey5 :=
MyHotKey6 :=
MyHotKey7 :=
MyHotKey8 :=
MyHotKey9 :=

IniWrite, %MyHotKey5%, C:\setting.ini, Setup, Bind5
IniWrite, %MyHotKey6%, C:\setting.ini, Setup, Bind6
IniWrite, %MyHotKey7%, C:\setting.ini, Setup, Bind7
IniWrite, %MyHotKey8%, C:\setting.ini, Setup, Bind8
IniWrite, %MyHotKey9%, C:\setting.ini, Setup, Bind9

MyHotKey10 :=
MyText5 :=

IniWrite, %MyHotKey10%, C:\setting.ini, Setup, Bind10
IniWrite, %MyText5%, C:\setting.ini, Setup, Otv10

MyHotKey11 :=
MyText6 :=

IniWrite, %MyHotKey11%, C:\setting.ini, Setup, Bind11
IniWrite, %MyText6%, C:\setting.ini, Setup, Otv11

MyHotKey12 :=
MyText7 :=

IniWrite, %MyHotKey12%, C:\setting.ini, Setup, Bind12
IniWrite, %MyText7%, C:\setting.ini, Setup, Otv12

MyHotKey13 :=
MyText8 :=

IniWrite, %MyHotKey13%, C:\setting.ini, Setup, Bind13
IniWrite, %MyText8%, C:\setting.ini, Setup, Otv13

MyHotKey14 :=
MyText9 :=

IniWrite, %MyHotKey14%, C:\setting.ini, Setup, Bind14
IniWrite, %MyText9%, C:\setting.ini, Setup, Otv14

MyHotKey15 :=
MyText10 :=

IniWrite, %MyHotKey15%, C:\setting.ini, Setup, Bind15
IniWrite, %MyText10%, C:\setting.ini, Setup, Otv15

MyHotKey16 :=
MyText11 :=

IniWrite, %MyHotKey16%, C:\setting.ini, Setup, Bind16
IniWrite, %MyText11%, C:\setting.ini, Setup, Otv16

MyHotKey17 :=
MyText12 :=

IniWrite, %MyHotKey17%, C:\setting.ini, Setup, Bind17
IniWrite, %MyText12%, C:\setting.ini, Setup, Otv17

MyHotKey18 :=
MyText13 :=

IniWrite, %MyHotKey18%, C:\setting.ini, Setup, Bind18
IniWrite, %MyText13%, C:\setting.ini, Setup, Otv18

MyHotKey19 :=
MyText14 :=

IniWrite, %MyHotKey19%, C:\setting.ini, Setup, Bind19
IniWrite, %MyText14%, C:\setting.ini, Setup, Otv19

MyHotKey20 :=
MyText15 :=

IniWrite, %MyHotKey20%, C:\setting.ini, Setup, Bind20
IniWrite, %MyText15%, C:\setting.ini, Setup, Otv20

MyHotKey21 :=
MyText16 :=

IniWrite, %MyHotKey21%, C:\setting.ini, Setup, Bind21
IniWrite, %MyText16%, C:\setting.ini, Setup, Otv21

MyHotKey22 :=
MyText17 :=

IniWrite, %MyHotKey22%, C:\setting.ini, Setup, Bind22
IniWrite, %MyText17%, C:\setting.ini, Setup, Otv22

MyHotKey23 :=
MyText18 :=

IniWrite, %MyHotKey23%, C:\setting.ini, Setup, Bind23
IniWrite, %MyText18%, C:\setting.ini, Setup, Otv23

MyEdit1 :=
IniWrite, %MyEdit1%, C:\setting.ini, Setup, MyEdit1
MyEdit2 :=
IniWrite, %MyEdit2%, C:\setting.ini, Setup, MyEdit2
MyEdit3 :=
IniWrite, %MyEdit3%, C:\setting.ini, Setup, MyEdit3
MyEdit4 :=
IniWrite, %MyEdit4%, C:\setting.ini, Setup, MyEdit4
MyEdit5 :=
IniWrite, %MyEdit5%, C:\setting.ini, Setup, MyEdit5
MyEdit11 :=
IniWrite, %MyEdit11%, C:\setting.ini, Setup, MyEdit11
MyEdit12 :=
IniWrite, %MyEdit12%, C:\setting.ini, Setup, MyEdit12
MyEdit13 :=
IniWrite, %MyEdit13%, C:\setting.ini, Setup, MyEdit13
MyEdit14 :=
IniWrite, %MyEdit14%, C:\setting.ini, Setup, MyEdit14
MyEdit15 :=
IniWrite, %MyEdit15%, C:\setting.ini, Setup, MyEdit15
MyEdit21 :=
IniWrite, %MyEdit21%, C:\setting.ini, Setup, MyEdit21
MyEdit22 :=
IniWrite, %MyEdit22%, C:\setting.ini, Setup, MyEdit22
MyEdit23 :=
IniWrite, %MyEdit23%, C:\setting.ini, Setup, MyEdit23
MyEdit24 :=
IniWrite, %MyEdit24%, C:\setting.ini, Setup, MyEdit24
MyEdit25 :=
IniWrite, %MyEdit25%, C:\setting.ini, Setup, MyEdit25

Counter := 0
IniWrite, %Counter%, C:\setting.ini, Setup, ReportsOld

Gosub, Counter13

return
;--------------------------------------------------------------------------------------

1:
Gui, 2: Show, w425 h90, Admin-Binder by Notoriuz
Gui, 2: Add, Edit, x29 y18 w366 h21 vMyEdit1, %MyEdit1%
Gui, 2: Add, GroupBox, x16 y0 w391 h54
Gui, 2: Add, Button, x328 y58 w80 h23 gSave2, Сохранить
return
2GuiEscape:
2GuiClose:
    Gui Destroy
return
        
2:
Gui, 3: Show, w425 h137, Admin-Binder by Notoriuz
Gui, 3: Add, Edit, x30 y18 w366 h21 vMyEdit1, %MyEdit1%
Gui, 3: Add, GroupBox, x16 y0 w391 h54
Gui, 3: Add, Edit, x30 y70 w366 h21 vMyEdit2, %MyEdit2%
Gui, 3: Add, GroupBox, x16 y52 w391 h54
Gui, 3: Add, Button, x328 y110 w80 h23 gSave2, Сохранить
return
3GuiEscape:
3GuiClose:
    Gui Destroy
return

3:
Gui, 4: Show, w425 h190, Admin-Binder by Notoriuz
Gui, 4: Add, Edit, x29 y18 w366 h21 vMyEdit1, %MyEdit1%
Gui, 4: Add, GroupBox, x16 y0 w391 h54
Gui, 4: Add, Edit, x30 y70 w366 h21 vMyEdit2, %MyEdit2%
Gui, 4: Add, GroupBox, x16 y52 w391 h54
Gui, 4: Add, GroupBox, x16 y104 w391 h54
Gui, 4: Add, Edit, x32 y122 w366 h21 vMyEdit3, %MyEdit3%
Gui, 4: Add, Button, x328 y162 w80 h23 gSave2, Сохранить
return
4GuiEscape:
4GuiClose:
    Gui Destroy
return

4:
Gui, 5: Show, w425 h248, Admin-Binder by Notoriuz
Gui, 5: Add, Edit, x30 y18 w366 h21 vMyEdit1, %MyEdit1%
Gui, 5: Add, GroupBox, x16 y0 w391 h54
Gui, 5: Add, Button, x328 y216 w80 h23 gSave2, Сохранить
Gui, 5: Add, GroupBox, x16 y51 w391 h54
Gui, 5: Add, GroupBox, x16 y103 w391 h54
Gui, 5: Add, GroupBox, x16 y155 w391 h54
Gui, 5: Add, Edit, x30 y69 w366 h21 vMyEdit2, %MyEdit2%
Gui, 5: Add, Edit, x30 y121 w366 h21 vMyEdit3, %MyEdit3%
Gui, 5: Add, Edit, x30 y173 w366 h21 vMyEdit4, %MyEdit4%
return
5GuiEscape:
5GuiClose:
Gui Destroy
return

5:
Gui, 6: Show, w425 h295, Admin-Binder by Notoriuz
Gui, 6: Add, Edit, x30 y18 w366 h21 vMyEdit1, %MyEdit1%
Gui, 6: Add, GroupBox, x16 y0 w391 h54
Gui, 6: Add, Button, x328 y266 w80 h23 gSave2, Сохранить
Gui, 6: Add, GroupBox, x16 y51 w391 h54
Gui, 6: Add, GroupBox, x16 y103 w391 h54
Gui, 6: Add, GroupBox, x16 y155 w391 h54
Gui, 6: Add, Edit, x30 y69 w366 h21 vMyEdit2, %MyEdit2%
Gui, 6: Add, Edit, x30 y121 w366 h21 vMyEdit3, %MyEdit3% 
Gui, 6: Add, Edit, x30 y173 w366 h21 vMyEdit4, %MyEdit4%
Gui, 6: Add, GroupBox, x16 y208 w391 h54
Gui, 6: Add, Edit, x30 y227 w366 h21 vMyEdit5, %MyEdit5%
return
6GuiEscape:
6GuiClose:
    Gui Destroy
return

;------------------------------------------------------------------------

6:
Gui, 7: Show, w425 h90, Admin-Binder by Notoriuz
Gui, 7: Add, Edit, x29 y18 w366 h21 vMyEdit11, %MyEdit11%
Gui, 7: Add, GroupBox, x16 y0 w391 h54
Gui, 7: Add, Button, x328 y58 w80 h23 gSave3, Сохранить
return
7GuiEscape:
7GuiClose:
    Gui Destroy
return
        
7:
Gui, 8: Show, w425 h137, Admin-Binder by Notoriuz
Gui, 8: Add, Edit, x30 y18 w366 h21 vMyEdit11, %MyEdit11%
Gui, 8: Add, GroupBox, x16 y0 w391 h54
Gui, 8: Add, Edit, x30 y70 w366 h21 vMyEdit12, %MyEdit12%
Gui, 8: Add, GroupBox, x16 y52 w391 h54
Gui, 8: Add, Button, x328 y110 w80 h23 gSave3, Сохранить
return
8GuiEscape:
8GuiClose:
    Gui Destroy
return

8:
Gui, 9: Show, w425 h190, Admin-Binder by Notoriuz
Gui, 9: Add, Edit, x29 y18 w366 h21 vMyEdit11, %MyEdit11%
Gui, 9: Add, GroupBox, x16 y0 w391 h54
Gui, 9: Add, Edit, x30 y70 w366 h21 vMyEdit12, %MyEdit12%
Gui, 9: Add, GroupBox, x16 y52 w391 h54
Gui, 9: Add, GroupBox, x16 y104 w391 h54
Gui, 9: Add, Edit, x32 y122 w366 h21 vMyEdit13, %MyEdit13%
Gui, 9: Add, Button, x328 y162 w80 h23 gSave3, Сохранить
return
9GuiEscape:
9GuiClose:
    Gui Destroy
return

9:
Gui, 10: Show, w425 h248, Admin-Binder by Notoriuz
Gui, 10: Add, Edit, x30 y18 w366 h21 vMyEdit11, %MyEdit11%
Gui, 10: Add, GroupBox, x16 y0 w391 h54
Gui, 10: Add, Button, x328 y216 w80 h23 gSave3, Сохранить
Gui, 10: Add, GroupBox, x16 y51 w391 h54
Gui, 10: Add, GroupBox, x16 y103 w391 h54
Gui, 10: Add, GroupBox, x16 y155 w391 h54
Gui, 10: Add, Edit, x30 y69 w366 h21 vMyEdit12, %MyEdit12%
Gui, 10: Add, Edit, x30 y121 w366 h21 vMyEdit13, %MyEdit13%
Gui, 10: Add, Edit, x30 y173 w366 h21 vMyEdit14, %MyEdit14%
return
10GuiEscape:
10GuiClose:
Gui Destroy
return

10:
Gui, 11: Show, w425 h295, Admin-Binder by Notoriuz
Gui, 11: Add, Edit, x30 y18 w366 h21 vMyEdit11, %MyEdit11%
Gui, 11: Add, GroupBox, x16 y0 w391 h54
Gui, 11: Add, Button, x328 y266 w80 h23 gSave3, Сохранить
Gui, 11: Add, GroupBox, x16 y51 w391 h54
Gui, 11: Add, GroupBox, x16 y103 w391 h54
Gui, 11: Add, GroupBox, x16 y155 w391 h54
Gui, 11: Add, Edit, x30 y69 w366 h21 vMyEdit12, %MyEdit12%
Gui, 11: Add, Edit, x30 y121 w366 h21 vMyEdit13, %MyEdit13% 
Gui, 11: Add, Edit, x30 y173 w366 h21 vMyEdit14, %MyEdit14%
Gui, 11: Add, GroupBox, x16 y208 w391 h54
Gui, 11: Add, Edit, x30 y227 w366 h21 vMyEdit15, %MyEdit15%
return
11GuiEscape:
11GuiClose:
    Gui Destroy
return

;------------------------------------------------------------------------

11:
Gui, 12: Show, w425 h90, Admin-Binder by Notoriuz
Gui, 12: Add, Edit, x29 y18 w366 h21 vMyEdit21, %MyEdit21%
Gui, 12: Add, GroupBox, x16 y0 w391 h54
Gui, 12: Add, Button, x328 y58 w80 h23 gSave4, Сохранить
return
12GuiEscape:
12GuiClose:
    Gui Destroy
return
        
12:
Gui, 13: Show, w425 h137, Admin-Binder by Notoriuz
Gui, 13: Add, Edit, x30 y18 w366 h21 vMyEdit21, %MyEdit21%
Gui, 13: Add, GroupBox, x16 y0 w391 h54
Gui, 13: Add, Edit, x30 y70 w366 h21 vMyEdit22, %MyEdit22%
Gui, 13: Add, GroupBox, x16 y52 w391 h54
Gui, 13: Add, Button, x328 y110 w80 h23 gSave4, Сохранить
return
13GuiEscape:
13GuiClose:
    Gui Destroy
return

13:
Gui, 14: Show, w425 h190, Admin-Binder by Notoriuz
Gui, 14: Add, Edit, x29 y18 w366 h21 vMyEdit21, %MyEdit21%
Gui, 14: Add, GroupBox, x16 y0 w391 h54
Gui, 14: Add, Edit, x30 y70 w366 h21 vMyEdit22, %MyEdit22%
Gui, 14: Add, GroupBox, x16 y52 w391 h54
Gui, 14: Add, GroupBox, x16 y104 w391 h54
Gui, 14: Add, Edit, x32 y122 w366 h21 vMyEdit23, %MyEdit23%
Gui, 14: Add, Button, x328 y162 w80 h23 gSave4, Сохранить
return
14GuiEscape:
14GuiClose:
    Gui Destroy
return

14:
Gui, 15: Show, w425 h248, Admin-Binder by Notoriuz
Gui, 15: Add, Edit, x30 y18 w366 h21 vMyEdit21, %MyEdit21%
Gui, 15: Add, GroupBox, x16 y0 w391 h54
Gui, 15: Add, Button, x328 y216 w80 h23 gSave4, Сохранить
Gui, 15: Add, GroupBox, x16 y51 w391 h54
Gui, 15: Add, GroupBox, x16 y103 w391 h54
Gui, 15: Add, GroupBox, x16 y155 w391 h54
Gui, 15: Add, Edit, x30 y69 w366 h21 vMyEdit22, %MyEdit22%
Gui, 15: Add, Edit, x30 y121 w366 h21 vMyEdit23, %MyEdit23%
Gui, 15: Add, Edit, x30 y173 w366 h21 vMyEdit24, %MyEdit24%
return
15GuiEscape:
15GuiClose:
Gui Destroy
return

15:
Gui, 16: Show, w425 h295, Admin-Binder by Notoriuz
Gui, 16: Add, Edit, x30 y18 w366 h21 vMyEdit21, %MyEdit21%
Gui, 16: Add, GroupBox, x16 y0 w391 h54
Gui, 16: Add, Button, x328 y266 w80 h23 gSave4, Сохранить
Gui, 16: Add, GroupBox, x16 y51 w391 h54
Gui, 16: Add, GroupBox, x16 y103 w391 h54
Gui, 16: Add, GroupBox, x16 y155 w391 h54
Gui, 16: Add, Edit, x30 y69 w366 h21 vMyEdit22, %MyEdit22%
Gui, 16: Add, Edit, x30 y121 w366 h21 vMyEdit23, %MyEdit23% 
Gui, 16: Add, Edit, x30 y173 w366 h21 vMyEdit24, %MyEdit24%
Gui, 16: Add, GroupBox, x16 y208 w391 h54
Gui, 16: Add, Edit, x30 y227 w366 h21 vMyEdit25, %MyEdit25%
return
16GuiEscape:
16GuiClose:
    Gui Destroy
return

;------------------------------------------------------------------------

Clear:
Counter := 0
IniWrite, %Counter%, C:\setting.ini, Setup, ReportsOld
Gosub, Counter13
return

Counter12:
    GuiControlGet, %Counter%
    Counter := Counter + 1
    GuiControl,, Counter, %Counter%
IniWrite, %Counter%, C:\setting.ini, Setup, ReportsOld
return

Counter13:
reload
return

Start:
Gui, Submit, NoHide  
Hotkey, %MyHotKey%, key, on, useerrorlevel  
Hotkey, %MyHotKey2%, key2, on, useerrorlevel  
Hotkey, %MyHotKey3%, key3, on, useerrorlevel
Hotkey, %MyHotKey4%, key4, on, useerrorlevel
Hotkey, %MyHotKey5%, key5, on, useerrorlevel
Hotkey, %MyHotKey6%, key6, on, useerrorlevel
Hotkey, %MyHotKey7%, key7, on, useerrorlevel
Hotkey, %MyHotKey8%, key8, on, useerrorlevel
Hotkey, %MyHotKey9%, key9, on, useerrorlevel
Hotkey, %MyHotKey10%, key10, on, useerrorlevel
Hotkey, %MyHotKey11%, key11, on, useerrorlevel
Hotkey, %MyHotKey12%, key12, on, useerrorlevel
Hotkey, %MyHotKey13%, key13, on, useerrorlevel
Hotkey, %MyHotKey14%, key14, on, useerrorlevel
Hotkey, %MyHotKey15%, key15, on, useerrorlevel
Hotkey, %MyHotKey16%, key16, on, useerrorlevel
Hotkey, %MyHotKey17%, key17, on, useerrorlevel
Hotkey, %MyHotKey18%, key18, on, useerrorlevel
Hotkey, %MyHotKey19%, key19, on, useerrorlevel
Hotkey, %MyHotKey20%, key20, on, useerrorlevel
Hotkey, %MyHotKey21%, key21, on, useerrorlevel
Hotkey, %MyHotKey22%, key22, on, useerrorlevel
Hotkey, %MyHotKey23%, key23, on, useerrorlevel
Gui Hide
TrayTip Admin-Binder by Notoriuz, Я теперь спрятался тут. Нажми ПКМ чтобы развернуть.
return
;--------------------------------------------------------------------------------------

key:
Gosub, Counter12
Word1 = %MyEdit1%
Word2 = %MyEdit2%
Word3 = %MyEdit3%
Word4 = %MyEdit4%
Word5 = %MyEdit5%

Min := 1
Max := MySettO1

      RandWords := "" 
   Loop 1
   { 
      Random N, %Min%, %Max% 
      RandWords .= Word%N% 
   }
   Send %RandWords% {space}  
Return

key2:
Gosub, Counter12
Word1 = %MyEdit11%
Word2 = %MyEdit12%
Word3 = %MyEdit13%
Word4 = %MyEdit14%
Word5 = %MyEdit15%

Min := 1
Max := MySettO2

      RandWords2 := "" 
   Loop 1
   { 
      Random N, %Min%, %Max% 
      RandWords2 .= Word%N% 
   }
SendMessage, 0x50,, 0x4190419,, A
  Sendinput, %RandWords2% {space} 
Return

key3:
Gosub, Counter12
SendMessage, 0x50,, 0x4190419,, A
Sendinput, %MyText3%{space}
return

key4:
Gosub, Counter12
Word1 = %MyEdit21%
Word2 = %MyEdit22%
Word3 = %MyEdit23%
Word4 = %MyEdit24%
Word5 = %MyEdit25%

Min := 1
Max := MySettO3

      RandWords4 := "" 
   Loop 1
   { 
      Random N, %Min%, %Max% 
      RandWords4 .= Word%N% 
   }
SendMessage, 0x50,, 0x4190419,, A
  Sendinput, %RandWords4% {space} 
Return

key5:
SendMessage, 0x50,, 0x4190419,, A
Sendinput, tpcar{space}
return

key6:  
SendMessage, 0x50,, 0x4190419,, A
Sendinput, dimension{space}
return

key7:
SendMessage, 0x50,, 0x4190419,, A
Sendinput, gethere{space}
return

key8:  
SendMessage, 0x50,, 0x4190419,, A
Sendinput, goto{space}
return

key9:
SendMessage, 0x50,, 0x4190419,, A
Sendinput, re{space}
return

key10:
Gosub, Counter12
SendMessage, 0x50,, 0x4190419,, A
Sendinput, %MyText5%{space}
return

key11: 
Gosub, Counter12
SendMessage, 0x50,, 0x4190419,, A
Sendinput, %MyText6%{space}
return

key12: 
Gosub, Counter12
SendMessage, 0x50,, 0x4190419,, A
Sendinput, %MyText7%{space}
return

key13:
Gosub, Counter12
SendMessage, 0x50,, 0x4190419,, A
Sendinput, %MyText8%{space}
return

key14: 
Gosub, Counter12
SendMessage, 0x50,, 0x4190419,, A
Sendinput, %MyText9%{space}
return

key15:
Gosub, Counter12
SendMessage, 0x50,, 0x4190419,, A
sleep 500
Sendinput, {F6}
sleep 500
Sendinput, {F6}/alogin13{enter}
sleep 500
Sendinput, {Sc029}
sleep 1000
Sendinput, %MyText10%{enter}
sleep 1000
Sendinput, hp{enter}
sleep 1000
Sendinput, {Sc029}
sleep 500
Sendinput, {F4}
Return

key16: 
Gosub, Counter12
SendMessage, 0x50,, 0x4190419,, A
Sendinput, %MyText11%{space}
return

key17: 
Gosub, Counter12
SendMessage, 0x50,, 0x4190419,, A
Sendinput, %MyText12%{space}
return

key18: 
Gosub, Counter12
SendMessage, 0x50,, 0x4190419,, A
Sendinput, %MyText13%{space}
return

key19: 
Gosub, Counter12
SendMessage, 0x50,, 0x4190419,, A
Sendinput, %MyText14%{space}
return

key20: 
Gosub, Counter12
SendMessage, 0x50,, 0x4190419,, A
Sendinput, %MyText15%{space}
return

key21: 
Gosub, Counter12
SendMessage, 0x50,, 0x4190419,, A
Sendinput, %MyText16%{space}
return

key22: 
Gosub, Counter12
SendMessage, 0x50,, 0x4190419,, A
Sendinput, %MyText17%{space}
return

key23: 
Gosub, Counter12
SendMessage, 0x50,, 0x4190419,, A
Sendinput, %MyText18%{space}
return

:?:.жб::
Gosub, Counter12
SendMessage, 0x50,, 0x4190419,, A
Sendinput, При наличии видеодоказательств Вы можете подать жалобу на игрока. (forum.gta5rp.com -> Сервер №14 | Del Perro -> Жалобы -> Жалобы на игроков){space}
Return

:?:.обж::
Gosub, Counter12
SendMessage, 0x50,, 0x4190419,, A
Sendinput, Если вы не согласны с наказанием, вы можете обжаловать свое наказание на форуме. (forum.gta5rp.com -> Сервер №14 | Del Perro -> Жалобы -> Обжалования){space}
Return


:?:.мех::
Gosub, Counter12
SendMessage, 0x50,, 0x4190419,, A
Sendinput, Сейчас вытащу Вашу машину из воды, однако починку может осуществить только механик. {space}
Return

:?:.отфам::
Gosub, Counter12
SendMessage, 0x50,, 0x4190419,, A
Sendinput, var-set flyEnableFamily 0{space}
Return

:?:.пер::
Gosub, Counter12
SendMessage, 0x50,, 0x4190419,, A
Sendinput, Используйте G - Прочее - Толкать.{space}
Return

:?:.афксерд::
Gosub, Counter12
SendMessage, 0x50,, 0x4190419,, A
Sendinput, tpc 2521.93, -233.65, -39.12{space}
Return

:?:.сап::
Gosub, Counter12
SendMessage, 0x50,, 0x4190419,, A
Sendinput, Обратитесь в нашу поддержку на почту support@gta5rp.com. Ответ в любом случае будет получен на почту, отвечать нужно на то же письмо которое придет.{space}
Return

:?:.тех::
Gosub, Counter12
SendMessage, 0x50,, 0x4190419,, A
Sendinput, Обратитесь в тех.раздел на форуме, в раздел GTA5RP - Форум - Технический раздел - Сервер Del Perro.{space}
Return

:?:.контракты::
Gosub, Counter12
SendMessage, 0x50,, 0x4190419,, A
Sendinput, Мотивированное волонтерство - Время на выполнение 2ч, откат контракта - 3ч. Обновляем гардероб - Время на выполнение - 6ч, откат контракта 20ч. Скользкая дорожка - Время на выполнение 2ч, откат контракта 3ч. Долгожданная встреча - Время на выполнение 4ч, откат контракта - 20ч. Более подробную информацию про неоф.организации и их функционал Вы можете узнать через F10 - Знак вопроса - Открыть WIKI и вбив в поисковой строке ключевые фразы - неофициальные организации.{space}
Return

:?:.дс::
Gosub, Counter12
SendMessage, 0x50,, 0x4190419,, A
Sendinput, Следите за новостями в офф.дискорде GTA 5 RP(discord.gg/gta5rp).{space}
Return

;--------------------------------------------------------------------------------------

Menu,podmenu,add,ИМЯ,Metka
Menu,Tray,add,ИМЯПОДМЕНЮ,:podmenu
return

lala:
Gui Show
return

lala2:
ExitApp
return

lala3:
Reload
return

Save:
Gui, Submit, NoHide
IniWrite, %MySettO1%, C:\setting.ini, Setup, MySett1
IniWrite, %MyHotKey%, C:\setting.ini, Setup, Bind1

IniWrite, %MySettO2%, C:\setting.ini, Setup, MySett2
IniWrite, %MyHotKey2%, C:\setting.ini, Setup, Bind2

IniWrite, %MyText3%, C:\setting.ini, Setup, Otv3
IniWrite, %MyHotKey3%, C:\setting.ini, Setup, Bind3

IniWrite, %MySettO3%, C:\setting.ini, Setup, MySett3
IniWrite, %MyHotKey4%, C:\setting.ini, Setup, Bind4

IniWrite, %MyHotKey5%, C:\setting.ini, Setup, Bind5
IniWrite, %MyHotKey6%, C:\setting.ini, Setup, Bind6
IniWrite, %MyHotKey7%, C:\setting.ini, Setup, Bind7
IniWrite, %MyHotKey8%, C:\setting.ini, Setup, Bind8
IniWrite, %MyHotKey9%, C:\setting.ini, Setup, Bind9

IniWrite, %MyHotKey10%, C:\setting.ini, Setup, Bind10
IniWrite, %MyText5%, C:\setting.ini, Setup, Otv10

IniWrite, %MyHotKey11%, C:\setting.ini, Setup, Bind11
IniWrite, %MyText6%, C:\setting.ini, Setup, Otv11

IniWrite, %MyHotKey12%, C:\setting.ini, Setup, Bind12
IniWrite, %MyText7%, C:\setting.ini, Setup, Otv12

IniWrite, %MyHotKey13%, C:\setting.ini, Setup, Bind13
IniWrite, %MyText8%, C:\setting.ini, Setup, Otv13

IniWrite, %MyHotKey14%, C:\setting.ini, Setup, Bind14
IniWrite, %MyText9%, C:\setting.ini, Setup, Otv14

IniWrite, %MyHotKey15%, C:\setting.ini, Setup, Bind15
IniWrite, %MyText10%, C:\setting.ini, Setup, Otv15

IniWrite, %MyHotKey16%, C:\setting.ini, Setup, Bind16
IniWrite, %MyText11%, C:\setting.ini, Setup, Otv16

IniWrite, %MyHotKey17%, C:\setting.ini, Setup, Bind17
IniWrite, %MyText12%, C:\setting.ini, Setup, Otv17

IniWrite, %MyHotKey18%, C:\setting.ini, Setup, Bind18
IniWrite, %MyText13%, C:\setting.ini, Setup, Otv18

IniWrite, %MyHotKey19%, C:\setting.ini, Setup, Bind19
IniWrite, %MyText14%, C:\setting.ini, Setup, Otv19

IniWrite, %MyHotKey20%, C:\setting.ini, Setup, Bind20
IniWrite, %MyText15%, C:\setting.ini, Setup, Otv20

IniWrite, %MyHotKey21%, C:\setting.ini, Setup, Bind21
IniWrite, %MyText16%, C:\setting.ini, Setup, Otv21

IniWrite, %MyHotKey22%, C:\setting.ini, Setup, Bind22
IniWrite, %MyText17%, C:\setting.ini, Setup, Otv22

IniWrite, %MyHotKey23%, C:\setting.ini, Setup, Bind23
IniWrite, %MyText18%, C:\setting.ini, Setup, Otv23

IniWrite, %Check%, C:\setting.ini, Setup, Check
IniWrite, %Check2%, C:\setting.ini, Setup, Check2

MsgBox Данные сохранены!
 return

Reload:
reload