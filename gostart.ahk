#SingleInstance Force
#NoEnv
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
#Persistent

ListLines Off
SetBatchLines, -1
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1

Run = 0
openbr = 1
Counter2 = 0

buildverbrow = 2
buildverbrowold = 1

;--------------------------------------------------------------------------
URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/index.html, %a_temp%/key.txt
IniRead, password1, %A_WorkingDir%\setting.ini, Setup, password1, %A_Space%
fileread, read, %a_temp%/key.txt

FileDelete, %a_temp%/key.txt

if read contains %password1%
{
Gosub, true
}
else
{
Gosub, Ckeckpass
}
return

Ckeckpass:
Gui, 5p: Add, Edit, x16 y32 w120 h21 +Password vpassword1, %password1%
Gui, 5p: Add, Text, x8 y6 w140 h25 +Center, Введите ваш код авторизации
Gui, 5p: Add, Button, x16 y64 w120 h23 gCkeckpass1, Проверить
Gui, 5p: Add, GroupBox, x11 y0 w132 h91

Gui, 5p: Show, w150 h99
Return
5pGuiEscape:
5pGuiClose:
    ExitApp
return

Ckeckpass1:
Gui, Submit, NoHide
IniWrite, %password1%, %A_WorkingDir%\setting.ini , Setup, password1
Gosub, Ckeckpass2
Gui, 5p: Destroy
return

Ckeckpass2:
if read contains %password1%
{
msgbox,, Warning, Код введен верно. Скрипт был успешно авторизован!
Gosub, rel
}
else
{
msgbox,, Warning, Ваш код не верный.
}
return

rel:
reload
return

true:

;--------------------------------------------------------------------------

Menu, Tray, NoStandard
Menu,Tray,Add,Развернуть,lala
Menu,Tray,Add,Досрочно закрыть,lala2
Menu,Tray,Add,Перезагрузить,lala3

if (A_IsAdmin == false) {
   Run *RunAs "%A_ScriptFullPath%" ,, UseErrorLevel
}

;----------------------------------------------------------------------

;-----------------------------------------------------------------

IfNotExist, %A_WorkingDir%\setting.ini
{
TrayTip, Найден отсутствующий файл, Проверьте файлы скрипта после запуска скрипта(вкладка - Настройки)., , 16
}

IfNotExist %A_WorkingDir%\setting_edit.ini
{
TrayTip, Найден отсутствующий файл, Проверьте файлы скрипта после запуска скрипта(вкладка - Настройки)., , 16
}

IfNotExist %A_WorkingDir%\setting_1tab.ini
{
TrayTip, Найден отсутствующий файл, Проверьте файлы скрипта после запуска скрипта(вкладка - Настройки)., , 16
}

IfNotExist %A_WorkingDir%\setting_2tab.ini
{
TrayTip, Найден отсутствующий файл, Проверьте файлы скрипта после запуска скрипта(вкладка - Настройки)., , 16
}

IfNotExist %A_WorkingDir%\setting_3tab.ini
{
TrayTip, Найден отсутствующий файл, Проверьте файлы скрипта после запуска скрипта(вкладка - Настройки)., , 16
}

IfNotExist %A_WorkingDir%\setting_check.ini
{
TrayTip, Найден отсутствующий файл, Проверьте файлы скрипта после запуска скрипта(вкладка - Настройки)., , 16
}

IfNotExist, %A_WorkingDir%\app\vidacha_%buildverbrow%.exe
{
TrayTip, Найден отсутствующий файл, Проверьте файлы скрипта после запуска скрипта(вкладка - Настройки)., , 16

;FileDelete, %A_WorkingDir%\app\vidacha_%buildverbrowold%.exe
;FileDelete, %A_WorkingDir%\app\game-gui-browser_%buildverbrowold%.exe
}

;---------------------------------------------------------------------------
IfNotExist, %A_WorkingDir%\app\gui\pravilap.ini
{
TrayTip, Найден отсутствующий файл, Проверьте файлы скрипта после запуска скрипта(вкладка - Настройки)., , 16
}

IfNotExist, %A_WorkingDir%\app\gui\pravilagos.ini
{
TrayTip, Найден отсутствующий файл, Проверьте файлы скрипта после запуска скрипта(вкладка - Настройки)., , 16
}

IfNotExist, %A_WorkingDir%\app\gui\pravilas.ini
{
TrayTip, Найден отсутствующий файл, Проверьте файлы скрипта после запуска скрипта(вкладка - Настройки)., , 16
}

IfNotExist, %A_WorkingDir%\app\gui\pravilaband.ini
{
TrayTip, Найден отсутствующий файл, Проверьте файлы скрипта после запуска скрипта(вкладка - Настройки)., , 16
}

IfNotExist, %A_WorkingDir%\app\gui\pravilamafiy.ini
{
TrayTip, Найден отсутствующий файл, Проверьте файлы скрипта после запуска скрипта(вкладка - Настройки)., , 16
}

IfNotExist, %A_WorkingDir%\app\gui\browser-osob.png
{
TrayTip, Найден отсутствующий файл, Проверьте файлы скрипта после запуска скрипта(вкладка - Настройки)., , 16
}


;-----------------------Загрузка данных------------

Loop, 10
{
IniRead, MyHotKey%A_index%, %A_WorkingDir%\setting_1tab.ini, Setup, Bind%A_index%, %A_Space%
IniRead, MyText%A_index%, %A_WorkingDir%\setting_1tab.ini, Setup, MyText%A_index%, %A_Space%
IniRead, MySett%A_index%, %A_WorkingDir%\setting_1tab.ini, Setup, Kolvo%A_index%, 1
IniRead, My2HotKey%A_index%, %A_WorkingDir%\setting_2tab.ini, Setup, 2Bind%A_index%, %A_Space%
IniRead, My2Edit%A_index%, %A_WorkingDir%\setting_2tab.ini, Setup, 2MyText%A_index%, %A_Space%

IniRead, Counter, %A_WorkingDir%\setting.ini, Setup, ReportsOld, 0
IniRead, Check, %A_WorkingDir%\setting_check.ini, Setup, Check, 0

IniRead, HotLogin1, %A_WorkingDir%\setting.ini, Setup, HotLogin1, %A_Space%
IniRead, HotLogin2, %A_WorkingDir%\setting.ini, Setup, HotLogin2, %A_Space%
IniRead, HotLogin3, %A_WorkingDir%\setting.ini, Setup, HotLogin3, %A_Space%

IniRead, AutoLogin1, %A_WorkingDir%\setting.ini, Setup, AutoLogin1, %A_Space%

IniRead, password, %A_WorkingDir%\setting.ini, Setup, password, %A_Space%
IniRead, times, %A_WorkingDir%\setting.ini , Setup, times, %A_Space%
IniRead, MyBuss, %A_WorkingDir%\setting.ini , Setup, MyBuss, %A_Space%
}

Loop, 36
{
IniRead, ComDev%A_index%, %A_WorkingDir%\setting_3tab.ini, Setup, 3Comand%A_index%, %A_Space%
IniRead, Command%A_index%, %A_WorkingDir%\setting_3tab.ini, Setup, 3BindComand%A_index%, %A_Space%
}

Loop, 100
{
IniRead, MyEdit%A_index%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit%A_index%, %A_Space%
IniRead, Check%A_index%, %A_WorkingDir%\setting_check.ini, Setup, Check%A_index%
}
;---------
Loop, 261
{
FileReadLine, Text%A_Index%, %A_WorkingDir%\app\gui\pravilap.ini, %A_Index%
FileReadLine, AText%A_Index%, %A_WorkingDir%\app\gui\pravilas.ini, %A_Index%
FileReadLine, BText%A_Index%, %A_WorkingDir%\app\gui\pravilagos.ini, %A_Index%
FileReadLine, CText%A_Index%, %A_WorkingDir%\app\gui\pravilaband.ini, %A_Index%
FileReadLine, DText%A_Index%, %A_WorkingDir%\app\gui\pravilamafiy.ini, %A_Index%
}

;------


;-----------------------TAB GUI 1------------

Gui Add, Button, x10 y372 w116 h23 gFullClear, Удалить настройки
Gui Add, Button, x10 y400 w116 h23 gAllSave, Сохранить настройки
Gui Add, Button, x131 y372 w103 h51 gStart, Запустить биндер

Gui Add, Text, x489 y371 w59 h41, Репортов отвечено
Gui Add, Text, x540 y378 w15 h16, -
Gui Add, Text, x545 y380 w45 h10 +0x200 vCounter, %Counter%
Gui Add, Text, x999 y999 w45 h10 +0x200 vCounter2, %Counter2%
Gui Add, Button, x487 y399 w85 h23 gClear, Сбросить
Gui Add, GroupBox, x482 y362 w95 h67

Gui Add, Text, x-34 y362 w715 h2 +0x10
Gui Add, Button, x272 y372 w80 h24 gfaqr, FAQ
Gui Add, Button, x272 y400 w80 h24 ginfo, INFO
Gui Add, GroupBox, x265 y362 w94 h67
Gui Add, GroupBox, x6 y362 w233 h67

Gui Add, Tab, x0 y0 w600 h362, Основное|Свой бинд|Быстрый ответ [1]|Быстрый ответ [2]|Настройки
Gui, Tab, 1

Gui Add, Hotkey, x16 y44 w82 h21 vMyHotKey1, %MyHotKey1%
Gui Add, Hotkey, x16 y76 w82 h21 vMyHotKey2, %MyHotKey2%
Gui Add, Hotkey, x16 y108 w82 h21 vMyHotKey3, %MyHotKey3%
Gui Add, Hotkey, x16 y140 w82 h21 vMyHotKey4, %MyHotKey4%
Gui Add, Hotkey, x16 y172 w82 h21 vMyHotKey5, %MyHotKey5%
Gui Add, Hotkey, x16 y204 w82 h21 vMyHotKey6, %MyHotKey6%
Gui Add, Hotkey, x16 y236 w82 h21 vMyHotKey7, %MyHotKey7%
Gui Add, Hotkey, x16 y268 w82 h21 vMyHotKey8, %MyHotKey8%
Gui Add, Hotkey, x16 y300 w82 h21 vMyHotKey9, %MyHotKey9%
Gui Add, Hotkey, x16 y332 w82 h21 vMyHotKey10, %MyHotKey10%
Gui Add, GroupBox, x8 y25 w98 h334 +Center -Background, Комбинация

Gui Add, Edit, x128 y44 w59 h21 vMySett1, %MySett1%
Gui Add, Edit, x128 y76 w59 h21 vMySett2, %MySett2%
Gui Add, Edit, x128 y108 w59 h21 vMySett3, %MySett3%
Gui Add, Edit, x128 y140 w59 h21 vMySett4, %MySett4%
Gui Add, Edit, x128 y172 w59 h21 vMySett5, %MySett5%
Gui Add, Edit, x128 y204 w59 h21 vMySett6, %MySett6%
Gui Add, Edit, x128 y236 w59 h21 vMySett7, %MySett7%
Gui Add, Edit, x128 y268 w59 h21 vMySett8, %MySett8%
Gui Add, Edit, x128 y300 w59 h21 vMySett9, %MySett9%
Gui Add, Edit, x128 y332 w59 h21 vMySett10, %MySett10%
Gui Add, GroupBox, x113 y25 w86 h334 +Center -Background, Кол-во вариантов

Gui Add, Edit, x217 y44 w120 h21 vMyText1, %MyText1%
Gui Add, Edit, x216 y76 w120 h21 vMyText2, %MyText2%
Gui Add, Edit, x216 y108 w120 h21 vMyText3, %MyText3%
Gui Add, Edit, x216 y140 w120 h21 vMyText4, %MyText4%
Gui Add, Edit, x216 y172 w120 h21 vMyText5, %MyText5%
Gui Add, Edit, x216 y204 w120 h21 vMyText6, %MyText6%
Gui Add, Edit, x216 y236 w120 h21 vMyText7, %MyText7%
Gui Add, Edit, x216 y268 w120 h21 vMyText8, %MyText8%
Gui Add, Edit, x216 y300 w120 h21 vMyText9, %MyText9%
Gui Add, Edit, x216 y332 w120 h21 vMyText10, %MyText10%
Gui Add, GroupBox, x208 y25 w135 h334 +Center -Background, Действие

Gui Add, Button, x352 y44 w80 h23 gSett1, Настроить
Gui Add, Button, x352 y76 w80 h23 gSett2, Настроить
Gui Add, Button, x352 y108 w80 h23 gSett3, Настроить
Gui Add, Button, x352 y140 w80 h23 gSett4, Настроить
Gui Add, Button, x352 y172 w80 h23 gSett5, Настроить
Gui Add, Button, x352 y204 w80 h23 gSett6, Настроить
Gui Add, Button, x352 y236 w80 h23 gSett7, Настроить
Gui Add, Button, x352 y268 w80 h23 gSett8, Настроить
Gui Add, Button, x352 y300 w80 h23 gSett9, Настроить
Gui Add, Button, x352 y332 w80 h23 gSett10, Настроить
Gui Add, GroupBox, x349 y25 w86 h334 +Center -Background, Настройки

Gui, Tab, 2

Gui Add, Hotkey, x16 y40 w85 h21 vMy2HotKey1, %My2HotKey1%
Gui Add, Hotkey, x16 y72 w85 h21 vMy2HotKey2, %My2HotKey2%
Gui Add, Hotkey, x16 y104 w85 h21 vMy2HotKey3, %My2HotKey3%
Gui Add, Hotkey, x16 y136 w85 h21 vMy2HotKey4, %My2HotKey4%
Gui Add, Hotkey, x16 y168 w85 h21 vMy2HotKey5, %My2HotKey5%
Gui Add, Hotkey, x16 y200 w85 h21 vMy2HotKey6, %My2HotKey6%
Gui Add, Hotkey, x16 y232 w85 h21 vMy2HotKey7, %My2HotKey7%
Gui Add, Hotkey, x16 y264 w85 h21 vMy2HotKey8, %My2HotKey8%
Gui Add, Hotkey, x16 y296 w85 h21 vMy2HotKey9, %My2HotKey9%
Gui Add, Hotkey, x16 y328 w85 h21 vMy2HotKey10, %My2HotKey10%

Gui Add, Edit, x112 y40 w410 h21 vMy2Edit1, %My2Edit1%
Gui Add, Edit, x112 y72 w410 h21 vMy2Edit2, %My2Edit2%
Gui Add, Edit, x112 y104 w410 h21 vMy2Edit3, %My2Edit3%
Gui Add, Edit, x112 y136 w410 h21 vMy2Edit4, %My2Edit4%
Gui Add, Edit, x112 y168 w410 h21 vMy2Edit5, %My2Edit5%
Gui Add, Edit, x112 y200 w410 h21 vMy2Edit6, %My2Edit6%
Gui Add, Edit, x112 y232 w410 h21 vMy2Edit7, %My2Edit7%
Gui Add, Edit, x112 y264 w410 h21 vMy2Edit8, %My2Edit8%
Gui Add, Edit, x112 y296 w410 h21 vMy2Edit9, %My2Edit9%
Gui Add, Edit, x112 y328 w410 h21 vMy2Edit10, %My2Edit10%

Gui Add, Button, x525 y39 w73 h23 g2Tab1, Настроить
Gui Add, Button, x525 y71 w73 h23 g2Tab2, Настроить
Gui Add, Button, x525 y103 w73 h23 g2Tab3, Настроить
Gui Add, Button, x525 y135 w73 h23 g2Tab4, Настроить
Gui Add, Button, x525 y167 w73 h23 g2Tab5, Настроить
Gui Add, Button, x525 y199 w73 h23 g2Tab6, Настроить
Gui Add, Button, x525 y231 w73 h23 g2Tab7, Настроить
Gui Add, Button, x525 y263 w73 h23 g2Tab8, Настроить
Gui Add, Button, x525 y295 w73 h23 g2Tab9, Настроить
Gui Add, Button, x525 y327 w73 h23 g2Tab10, Настроить

Gui Add, GroupBox, x8 y24 w99 h334 +Center, Комбинация
Gui Add, GroupBox, x108 y24 w417 h334 +Center, Действие

Gui, Tab, 3

Gui Add, Edit, x16 y40 w85 h21 vCommand1, %Command1%
Gui Add, Edit, x16 y72 w85 h21 vCommand2, %Command2%
Gui Add, Edit, x16 y104 w85 h21 vCommand3, %Command3%
Gui Add, Edit, x16 y136 w85 h21 vCommand4, %Command4%
Gui Add, Edit, x16 y168 w85 h21 vCommand5, %Command5%
Gui Add, Edit, x16 y200 w85 h21 vCommand6, %Command6%
Gui Add, Edit, x16 y232 w85 h21 vCommand7, %Command7%
Gui Add, Edit, x16 y264 w85 h21 vCommand8, %Command8%
Gui Add, Edit, x16 y296 w85 h21 vCommand9, %Command9%
Gui Add, Edit, x16 y328 w85 h21 vCommand10, %Command10%

Gui Add, Edit, x112 y40 w410 h21 vComDev1, %ComDev1%
Gui Add, Edit, x112 y72 w410 h21 vComDev2, %ComDev2%
Gui Add, Edit, x112 y104 w410 h21 vComDev3, %ComDev3%
Gui Add, Edit, x112 y136 w410 h21 vComDev4, %ComDev4%
Gui Add, Edit, x112 y168 w410 h21 vComDev5, %ComDev5%
Gui Add, Edit, x112 y200 w410 h21 vComDev6, %ComDev6%
Gui Add, Edit, x112 y232 w410 h21 vComDev7, %ComDev7%
Gui Add, Edit, x112 y264 w410 h21 vComDev8, %ComDev8%
Gui Add, Edit, x112 y296 w410 h21 vComDev9, %ComDev9%
Gui Add, Edit, x112 y328 w410 h21 vComDev10, %ComDev10%

Gui Add, Button, x525 y39 w73 h23 g3Tab1, Настроить
Gui Add, Button, x525 y71 w73 h23 g3Tab2, Настроить
Gui Add, Button, x525 y103 w73 h23 g3Tab3, Настроить
Gui Add, Button, x525 y135 w73 h23 g3Tab4, Настроить
Gui Add, Button, x525 y167 w73 h23 g3Tab5, Настроить
Gui Add, Button, x525 y199 w73 h23 g3Tab6, Настроить
Gui Add, Button, x525 y231 w73 h23 g3Tab7, Настроить
Gui Add, Button, x525 y263 w73 h23 g3Tab8, Настроить
Gui Add, Button, x525 y295 w73 h23 g3Tab9, Настроить
Gui Add, Button, x525 y327 w73 h23 g3Tab10, Настроить

Gui Add, GroupBox, x8 y24 w99 h334 +Center, Комбинация
Gui Add, GroupBox, x108 y24 w417 h334 +Center, Действие

Gui, Tab, 4

Gui Add, Edit, x16 y40 w85 h21 vCommand11, %Command11%
Gui Add, Edit, x16 y72 w85 h21 vCommand12, %Command12%
Gui Add, Edit, x16 y104 w85 h21 vCommand13, %Command13%
Gui Add, Edit, x16 y136 w85 h21 vCommand14, %Command14%
Gui Add, Edit, x16 y168 w85 h21 vCommand15, %Command15%
Gui Add, Edit, x16 y200 w85 h21 vCommand16, %Command16%
Gui Add, Edit, x16 y232 w85 h21 vCommand17, %Command17%
Gui Add, Edit, x16 y264 w85 h21 vCommand18, %Command18%
Gui Add, Edit, x16 y296 w85 h21 vCommand19, %Command19%
Gui Add, Edit, x16 y328 w85 h21 vCommand20, %Command20%

Gui Add, Edit, x112 y40 w410 h21 vComDev11, %ComDev11%
Gui Add, Edit, x112 y72 w410 h21 vComDev12, %ComDev12%
Gui Add, Edit, x112 y104 w410 h21 vComDev13, %ComDev13%
Gui Add, Edit, x112 y136 w410 h21 vComDev14, %ComDev14%
Gui Add, Edit, x112 y168 w410 h21 vComDev15, %ComDev15%
Gui Add, Edit, x112 y200 w410 h21 vComDev16, %ComDev16%
Gui Add, Edit, x112 y232 w410 h21 vComDev17, %ComDev17%
Gui Add, Edit, x112 y264 w410 h21 vComDev18, %ComDev18%
Gui Add, Edit, x112 y296 w410 h21 vComDev19, %ComDev19%
Gui Add, Edit, x112 y328 w410 h21 vComDev20, %ComDev20%

Gui Add, Button, x525 y39 w73 h23 g3Tab11, Настроить
Gui Add, Button, x525 y71 w73 h23 g3Tab12, Настроить
Gui Add, Button, x525 y103 w73 h23 g3Tab13, Настроить
Gui Add, Button, x525 y135 w73 h23 g3Tab14, Настроить
Gui Add, Button, x525 y167 w73 h23 g3Tab15, Настроить
Gui Add, Button, x525 y199 w73 h23 g3Tab16, Настроить
Gui Add, Button, x525 y231 w73 h23 g3Tab17, Настроить
Gui Add, Button, x525 y263 w73 h23 g3Tab18, Настроить
Gui Add, Button, x525 y295 w73 h23 g3Tab19, Настроить
Gui Add, Button, x525 y327 w73 h23 g3Tab20, Настроить

Gui Add, Button, x370 y372 w103 h51 gDopGui, Дополнительные строки
Gui Add, GroupBox, x365 y362 w112 h67

Gui Add, GroupBox, x8 y24 w99 h334 +Center, Комбинация
Gui Add, GroupBox, x108 y24 w417 h334 +Center, Действие

Gui, Tab, 5

Gui Add, Hotkey, x350 y33 w88 h21 vHotLogin1, %HotLogin1%
Gui Add, Edit, x440 y33 w120 h21 +Password vAutoLogin1, %AutoLogin1%
Gui Add, Text, x415 y54 w61 h13 +0x200 , Автологин
Gui Add, GroupBox, x346 y21 w218 h53

Gui Add, Hotkey, x400 y90 w88 h21 vHotLogin2, %HotLogin2%
Gui Add, Text, x355 y115 w200 h13 +0x200, Отправка репорта с учетом в счетчике
Gui Add, GroupBox, x346 y78 w218 h53

Gui Add, Hotkey, x400 y140 w88 h21 vHotLogin3, %HotLogin3%
Gui Add, Text, x370 y165 w200 h13 +0x200, Открыть встроенный браузер
Gui Add, GroupBox, x346 y128 w218 h53

Gui Add, CheckBox, x16 y29 w200 h30 +Center vCheck51 Checked%Check51%, Использовать 1,2 Доп.Клавишу мыши
Gui Add, CheckBox, x16 y66 w200 h30 +Center vCheck52 Checked%Check52%, Использовать нажатие на колесико мыши
Gui Add, CheckBox, x16 y104 w200 h30 +Center vCheck53 Checked%Check53%, Использовать прокрут колеса мыши(вверх, вниз)
Gui Add, CheckBox, x16 y141 w200 h30 +Center vCheck80 Checked%Check80%, Отображать HUD репорта
Gui Add, CheckBox, x16 y180 w200 h30 +Center vCheck1 Checked%Check1%, Отображать HUD подсказок
Gui Add, GroupBox, x8 y21 w328 h40
Gui Add, GroupBox, x8 y59 w328 h40
Gui Add, GroupBox, x8 y97 w328 h40
Gui Add, GroupBox, x8 y134 w328 h40
Gui Add, GroupBox, x8 y172 w328 h40
Gui Add, Button, x230 y29 w100 h30 gmouse1, Сохранить
Gui Add, Button, x230 y67 w100 h30 gmouse2, Сохранить
Gui Add, Button, x230 y104 w100 h30 gmouse3, Сохранить
Gui Add, Button, x230 y141 w100 h30 gmouse4, Сохранить
Gui Add, Button, x230 y180 w100 h30 gmouse5, Сохранить

Gui Add, Button, x440 y327 w150 h30 gPassAdm, Авторизоваться как администратор

Gui Add, Button, x260 y330 w87 h23 gCounter13, Перезагрузить

Gui Add, Button, x350 y327 w87 h30 gbitiyfail, Проверить файлы

Gui Show, w600 h430, Admin-Binder by Notoriuz


Return
GuiEscape:
GuiClose:
    ExitApp

;----------------------Sett 1 - 10 ---------------------------------------
Sett1:
GuiControlGet, MySett1,,MySett1
Gosub, %MySett1%
return

Sett2:
GuiControlGet, MySett2,,MySett2
a := MySett2 + 5
GuiControl,, a, %a%
Gosub, %a%
return

Sett3:
GuiControlGet, MySett3,,MySett3
b := MySett3 + 10
GuiControl,, b, %b%
Gosub, %b%
return

Sett4:
GuiControlGet, MySett4,,MySett4
c := MySett4 + 15
GuiControl,, c, %c%
Gosub, %c%
return

Sett5:
GuiControlGet, MySett5,,MySett5
d := MySett5 + 20
GuiControl,, d, %d%
Gosub, %d%
return

Sett6:
GuiControlGet, MySett6,,MySett6
e := MySett6 + 25
GuiControl,, e, %e%
Gosub, %e%
return

Sett7:
GuiControlGet, MySett7,,MySett7
f := MySett7 + 30
GuiControl,, f, %f%
Gosub, %f%
return

Sett8:
GuiControlGet, MySett8,,MySett8
g := MySett8 + 35
GuiControl,, g, %g%
Gosub, %g%
return

Sett9:
GuiControlGet, MySett9,,MySett9
n := MySett9 + 40
GuiControl,, n, %n%
Gosub, %n%
return

Sett10:
GuiControlGet, MySett10,,MySett10
u := MySett10 + 45
GuiControl,, u, %u%
Gosub, %u%
return

;------------------ 1 - 5 --------------------------------------------------------------------
1:
Gui, 2: Show, w425 h90, Admin-Binder by Notoriuz
Gui, 2: Add, Edit, x29 y18 w366 h21 vMyEdit1, %MyEdit1%
Gui, 2: Add, GroupBox, x16 y0 w391 h54
Gui, 2: Add, Button, x328 y58 w80 h23 gSaveSet1, Сохранить
Gui, 2: Add, CheckBox, x185 y59 w130 h20 vCheck Checked%Check%, Учитывать в счетчике
Gui, 2: Add, CheckBox, x50 y59 w130 h20 vCheck31 Checked%Check31%, Использовать Enter
Gui, 2: Add, GroupBox, x45 y50 w370 h34
gui, 2:+owner
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
Gui, 3: Add, Button, x328 y110 w80 h23 gSaveSet1, Сохранить
Gui, 3: Add, CheckBox, x185 y110 w130 h20 vCheck Checked%Check%, Учитывать в счетчике
Gui, 3: Add, CheckBox, x50 y110 w130 h20 vCheck31 Checked%Check31%, Использовать Enter
Gui, 3: Add, GroupBox, x45 y102 w370 h34
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
Gui, 4: Add, Button, x328 y162 w80 h23 gSaveSet1, Сохранить
Gui, 4: Add, CheckBox, x185 y162 w130 h20 vCheck Checked%Check%, Учитывать в счетчике
Gui, 4: Add, CheckBox, x50 y163 w130 h20 vCheck31 Checked%Check31%, Использовать Enter
Gui, 4: Add, GroupBox, x45 y154 w370 h34
return
4GuiEscape:
4GuiClose:
    Gui Destroy
return

4:
Gui, 5: Show, w425 h248, Admin-Binder by Notoriuz
Gui, 5: Add, Edit, x30 y18 w366 h21 vMyEdit1, %MyEdit1%
Gui, 5: Add, GroupBox, x16 y0 w391 h54
Gui, 5: Add, Button, x328 y216 w80 h23 gSaveSet1, Сохранить
Gui, 5: Add, GroupBox, x16 y51 w391 h54
Gui, 5: Add, GroupBox, x16 y103 w391 h54
Gui, 5: Add, GroupBox, x16 y155 w391 h54
Gui, 5: Add, Edit, x30 y69 w366 h21 vMyEdit2, %MyEdit2%
Gui, 5: Add, Edit, x30 y121 w366 h21 vMyEdit3, %MyEdit3%
Gui, 5: Add, Edit, x30 y173 w366 h21 vMyEdit4, %MyEdit4%
Gui, 5: Add, CheckBox, x185 y216 w130 h20 vCheck Checked%Check%, Учитывать в счетчике
Gui, 5: Add, CheckBox, x50 y216 w130 h20 vCheck31 Checked%Check31%, Использовать Enter
Gui, 5: Add, GroupBox, x45 y208 w370 h34
return
5GuiEscape:
5GuiClose:
Gui Destroy
return

5:
Gui, 6: Show, w425 h295, Admin-Binder by Notoriuz
Gui, 6: Add, Edit, x30 y18 w366 h21 vMyEdit1, %MyEdit1%
Gui, 6: Add, GroupBox, x16 y0 w391 h54
Gui, 6: Add, Button, x328 y266 w80 h23 gSaveSet1, Сохранить
Gui, 6: Add, GroupBox, x16 y51 w391 h54
Gui, 6: Add, GroupBox, x16 y103 w391 h54
Gui, 6: Add, GroupBox, x16 y155 w391 h54
Gui, 6: Add, Edit, x30 y69 w366 h21 vMyEdit2, %MyEdit2%
Gui, 6: Add, Edit, x30 y121 w366 h21 vMyEdit3, %MyEdit3%
Gui, 6: Add, Edit, x30 y173 w366 h21 vMyEdit4, %MyEdit4%
Gui, 6: Add, GroupBox, x16 y208 w391 h54
Gui, 6: Add, Edit, x30 y227 w366 h21 vMyEdit5, %MyEdit5%
Gui, 6: Add, CheckBox, x185 y266 w130 h20 vCheck Checked%Check%, Учитывать в счетчике
Gui, 6: Add, CheckBox, x50 y266 w130 h20 vCheck31 Checked%Check31%, Использовать Enter
Gui, 6: Add, GroupBox, x45 y258 w370 h34
return
6GuiEscape:
6GuiClose:
    Gui Destroy
return

;-----------------------6 - 10 -------------------------------------------------

6:
Gui, 7: Show, w425 h90, Admin-Binder by Notoriuz
Gui, 7: Add, Edit, x29 y18 w366 h21 vMyEdit11, %MyEdit11%
Gui, 7: Add, GroupBox, x16 y0 w391 h54
Gui, 7: Add, Button, x328 y58 w80 h23 gSaveSet2, Сохранить
Gui, 7: Add, CheckBox, x185 y59 w130 h20 vCheck2 Checked%Check2%, Учитывать в счетчике
Gui, 7: Add, CheckBox, x50 y59 w130 h20 vCheck32 Checked%Check32%, Использовать Enter
Gui, 7: Add, GroupBox, x45 y50 w370 h34
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
Gui, 8: Add, Button, x328 y110 w80 h23 gSaveSet2, Сохранить
Gui, 8: Add, CheckBox, x185 y110 w130 h20 vCheck2 Checked%Check2%, Учитывать в счетчике
Gui, 8: Add, CheckBox, x50 y110 w130 h20 vCheck32 Checked%Check32%, Использовать Enter
Gui, 8: Add, GroupBox, x45 y102 w370 h34
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
Gui, 9: Add, Button, x328 y162 w80 h23 gSaveSet2, Сохранить
Gui, 9: Add, CheckBox, x185 y162 w130 h20 vCheck2 Checked%Check2%, Учитывать в счетчике
Gui, 9: Add, CheckBox, x50 y163 w130 h20 vCheck32 Checked%Check32%, Использовать Enter
Gui, 9: Add, GroupBox, x45 y154 w370 h34
return
9GuiEscape:
9GuiClose:
    Gui Destroy
return

9:
Gui, 10: Show, w425 h248, Admin-Binder by Notoriuz
Gui, 10: Add, Edit, x30 y18 w366 h21 vMyEdit11, %MyEdit11%
Gui, 10: Add, GroupBox, x16 y0 w391 h54
Gui, 10: Add, Button, x328 y216 w80 h23 gSaveSet2, Сохранить
Gui, 10: Add, GroupBox, x16 y51 w391 h54
Gui, 10: Add, GroupBox, x16 y103 w391 h54
Gui, 10: Add, GroupBox, x16 y155 w391 h54
Gui, 10: Add, Edit, x30 y69 w366 h21 vMyEdit12, %MyEdit12%
Gui, 10: Add, Edit, x30 y121 w366 h21 vMyEdit13, %MyEdit13%
Gui, 10: Add, Edit, x30 y173 w366 h21 vMyEdit14, %MyEdit14%
Gui, 10: Add, CheckBox, x185 y216 w130 h20 vCheck2 Checked%Check2%, Учитывать в счетчике
Gui, 10: Add, CheckBox, x50 y216 w130 h20 vCheck32 Checked%Check32%, Использовать Enter
Gui, 10: Add, GroupBox, x45 y208 w370 h34
return
10GuiEscape:
10GuiClose:
Gui Destroy
return

10:
Gui, 11: Show, w425 h295, Admin-Binder by Notoriuz
Gui, 11: Add, Edit, x30 y18 w366 h21 vMyEdit11, %MyEdit11%
Gui, 11: Add, GroupBox, x16 y0 w391 h54
Gui, 11: Add, Button, x328 y266 w80 h23 gSaveSet2, Сохранить
Gui, 11: Add, GroupBox, x16 y51 w391 h54
Gui, 11: Add, GroupBox, x16 y103 w391 h54
Gui, 11: Add, GroupBox, x16 y155 w391 h54
Gui, 11: Add, Edit, x30 y69 w366 h21 vMyEdit12, %MyEdit12%
Gui, 11: Add, Edit, x30 y121 w366 h21 vMyEdit13, %MyEdit13%
Gui, 11: Add, Edit, x30 y173 w366 h21 vMyEdit14, %MyEdit14%
Gui, 11: Add, GroupBox, x16 y208 w391 h54
Gui, 11: Add, Edit, x30 y227 w366 h21 vMyEdit15, %MyEdit15%
Gui, 11: Add, CheckBox, x185 y266 w130 h20 vCheck2 Checked%Check2%, Учитывать в счетчике
Gui, 11: Add, CheckBox, x50 y266 w130 h20 vCheck32 Checked%Check32%, Использовать Enter
Gui, 11: Add, GroupBox, x45 y258 w370 h34
return
11GuiEscape:
11GuiClose:
    Gui Destroy
return

;----------------------------11 - 15--------------------------------------------

11:
Gui, 12: Show, w425 h90, Admin-Binder by Notoriuz
Gui, 12: Add, Edit, x29 y18 w366 h21 vMyEdit21, %MyEdit21%
Gui, 12: Add, GroupBox, x16 y0 w391 h54
Gui, 12: Add, Button, x328 y58 w80 h23 gSaveSet3, Сохранить
Gui, 12: Add, CheckBox, x185 y59 w130 h20 vCheck3 Checked%Check3%, Учитывать в счетчике
Gui, 12: Add, CheckBox, x50 y59 w130 h20 vCheck33 Checked%Check33%, Использовать Enter
Gui, 12: Add, GroupBox, x45 y50 w370 h34
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
Gui, 13: Add, Button, x328 y110 w80 h23 gSaveSet3, Сохранить
Gui, 13: Add, CheckBox, x185 y110 w130 h20 vCheck3 Checked%Check3%, Учитывать в счетчике
Gui, 13: Add, CheckBox, x50 y110 w130 h20 vCheck33 Checked%Check33%, Использовать Enter
Gui, 13: Add, GroupBox, x45 y102 w370 h34
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
Gui, 14: Add, Button, x328 y162 w80 h23 gSaveSet3, Сохранить
Gui, 14: Add, CheckBox, x185 y162 w130 h20 vCheck3 Checked%Check3%, Учитывать в счетчике
Gui, 14: Add, CheckBox, x50 y163 w130 h20 vCheck33 Checked%Check33%, Использовать Enter
Gui, 14: Add, GroupBox, x45 y154 w370 h34
return
14GuiEscape:
14GuiClose:
    Gui Destroy
return

14:
Gui, 15: Show, w425 h248, Admin-Binder by Notoriuz
Gui, 15: Add, Edit, x30 y18 w366 h21 vMyEdit21, %MyEdit21%
Gui, 15: Add, GroupBox, x16 y0 w391 h54
Gui, 15: Add, Button, x328 y216 w80 h23 gSaveSet3, Сохранить
Gui, 15: Add, GroupBox, x16 y51 w391 h54
Gui, 15: Add, GroupBox, x16 y103 w391 h54
Gui, 15: Add, GroupBox, x16 y155 w391 h54
Gui, 15: Add, Edit, x30 y69 w366 h21 vMyEdit22, %MyEdit22%
Gui, 15: Add, Edit, x30 y121 w366 h21 vMyEdit23, %MyEdit23%
Gui, 15: Add, Edit, x30 y173 w366 h21 vMyEdit24, %MyEdit24%
Gui, 15: Add, CheckBox, x185 y216 w130 h20 vCheck3 Checked%Check3%, Учитывать в счетчике
Gui, 15: Add, CheckBox, x50 y216 w130 h20 vCheck33 Checked%Check33%, Использовать Enter
Gui, 15: Add, GroupBox, x45 y208 w370 h34
return
15GuiEscape:
15GuiClose:
Gui Destroy
return

15:
Gui, 16: Show, w425 h295, Admin-Binder by Notoriuz
Gui, 16: Add, Edit, x30 y18 w366 h21 vMyEdit21, %MyEdit21%
Gui, 16: Add, GroupBox, x16 y0 w391 h54
Gui, 16: Add, Button, x328 y266 w80 h23 gSaveSet3, Сохранить
Gui, 16: Add, GroupBox, x16 y51 w391 h54
Gui, 16: Add, GroupBox, x16 y103 w391 h54
Gui, 16: Add, GroupBox, x16 y155 w391 h54
Gui, 16: Add, Edit, x30 y69 w366 h21 vMyEdit22, %MyEdit22%
Gui, 16: Add, Edit, x30 y121 w366 h21 vMyEdit23, %MyEdit23%
Gui, 16: Add, Edit, x30 y173 w366 h21 vMyEdit24, %MyEdit24%
Gui, 16: Add, GroupBox, x16 y208 w391 h54
Gui, 16: Add, Edit, x30 y227 w366 h21 vMyEdit25, %MyEdit25%
Gui, 16: Add, CheckBox, x185 y266 w130 h20 vCheck3 Checked%Check3%, Учитывать в счетчике
Gui, 16: Add, CheckBox, x50 y266 w130 h20 vCheck33 Checked%Check33%, Использовать Enter
Gui, 16: Add, GroupBox, x45 y258 w370 h34
return
16GuiEscape:
16GuiClose:
    Gui Destroy
return

;---------------------------- 16 - 20--------------------------------------------

16:
Gui, 18: Show, w425 h90, Admin-Binder by Notoriuz
Gui, 18: Add, Edit, x29 y18 w366 h21 vMyEdit31, %MyEdit31%
Gui, 18: Add, GroupBox, x16 y0 w391 h54
Gui, 18: Add, Button, x328 y58 w80 h23 gSaveSet4, Сохранить
Gui, 18: Add, CheckBox, x185 y59 w130 h20 vCheck4 Checked%Check4%, Учитывать в счетчике
Gui, 18: Add, CheckBox, x50 y59 w130 h20 vCheck34 Checked%Check34%, Использовать Enter
Gui, 18: Add, GroupBox, x45 y50 w370 h34
return
18GuiEscape:
18GuiClose:
    Gui Destroy
return

17:
Gui, 19: Show, w425 h137, Admin-Binder by Notoriuz
Gui, 19: Add, Edit, x30 y18 w366 h21 vMyEdit31, %MyEdit31%
Gui, 19: Add, GroupBox, x16 y0 w391 h54
Gui, 19: Add, Edit, x30 y70 w366 h21 vMyEdit32, %MyEdit32%
Gui, 19: Add, GroupBox, x16 y52 w391 h54
Gui, 19: Add, Button, x328 y110 w80 h23 gSaveSet4, Сохранить
Gui, 19: Add, CheckBox, x185 y110 w130 h20 vCheck4 Checked%Check4%, Учитывать в счетчике
Gui, 19: Add, CheckBox, x50 y110 w130 h20 vCheck34 Checked%Check34%, Использовать Enter
Gui, 19: Add, GroupBox, x45 y102 w370 h34
return
19GuiEscape:
19GuiClose:
    Gui Destroy
return

18:
Gui, 20: Show, w425 h190, Admin-Binder by Notoriuz
Gui, 20: Add, Edit, x29 y18 w366 h21 vMyEdit31, %MyEdit31%
Gui, 20: Add, GroupBox, x16 y0 w391 h54
Gui, 20: Add, Edit, x30 y70 w366 h21 vMyEdit32, %MyEdit32%
Gui, 20: Add, GroupBox, x16 y52 w391 h54
Gui, 20: Add, GroupBox, x16 y104 w391 h54
Gui, 20: Add, Edit, x32 y122 w366 h21 vMyEdit33, %MyEdit33%
Gui, 20: Add, Button, x328 y162 w80 h23 gSaveSet4, Сохранить
Gui, 20: Add, CheckBox, x185 y162 w130 h20 vCheck4 Checked%Check4%, Учитывать в счетчике
Gui, 20: Add, CheckBox, x50 y163 w130 h20 vCheck34 Checked%Check34%, Использовать Enter
Gui, 20: Add, GroupBox, x45 y154 w370 h34
return
20GuiEscape:
20GuiClose:
    Gui Destroy
return

19:
Gui, 21: Show, w425 h248, Admin-Binder by Notoriuz
Gui, 21: Add, Edit, x30 y18 w366 h21 vMyEdit31, %MyEdit31%
Gui, 21: Add, GroupBox, x16 y0 w391 h54
Gui, 21: Add, Button, x328 y216 w80 h23 gSaveSet4, Сохранить
Gui, 21: Add, GroupBox, x16 y51 w391 h54
Gui, 21: Add, GroupBox, x16 y103 w391 h54
Gui, 21: Add, GroupBox, x16 y155 w391 h54
Gui, 21: Add, Edit, x30 y69 w366 h21 vMyEdit32, %MyEdit32%
Gui, 21: Add, Edit, x30 y121 w366 h21 vMyEdit33, %MyEdit33%
Gui, 21: Add, Edit, x30 y173 w366 h21 vMyEdit34, %MyEdit34%
Gui, 21: Add, CheckBox, x185 y216 w130 h20 vCheck4 Checked%Check4%, Учитывать в счетчике
Gui, 21: Add, CheckBox, x50 y216 w130 h20 vCheck34 Checked%Check34%, Использовать Enter
Gui, 21: Add, GroupBox, x45 y208 w370 h34
return
21GuiEscape:
21GuiClose:
Gui Destroy
return

20:
Gui, 22: Show, w425 h295, Admin-Binder by Notoriuz
Gui, 22: Add, Edit, x30 y18 w366 h21 vMyEdit31, %MyEdit31%
Gui, 22: Add, GroupBox, x16 y0 w391 h54
Gui, 22: Add, Button, x328 y266 w80 h23 gSaveSet4, Сохранить
Gui, 22: Add, GroupBox, x16 y51 w391 h54
Gui, 22: Add, GroupBox, x16 y103 w391 h54
Gui, 22: Add, GroupBox, x16 y155 w391 h54
Gui, 22: Add, Edit, x30 y69 w366 h21 vMyEdit32, %MyEdit32%
Gui, 22: Add, Edit, x30 y121 w366 h21 vMyEdit33, %MyEdit33%
Gui, 22: Add, Edit, x30 y173 w366 h21 vMyEdit34, %MyEdit34%
Gui, 22: Add, GroupBox, x16 y208 w391 h54
Gui, 22: Add, Edit, x30 y227 w366 h21 vMyEdit35, %MyEdit35%
Gui, 22: Add, CheckBox, x185 y266 w130 h20 vCheck4 Checked%Check4%, Учитывать в счетчике
Gui, 22: Add, CheckBox, x50 y266 w130 h20 vCheck34 Checked%Check34%, Использовать Enter
Gui, 22: Add, GroupBox, x45 y258 w370 h34
return
22GuiEscape:
22GuiClose:
    Gui Destroy
return

;---------------------------- 21 - 25--------------------------------------------

21:
Gui, 23: Show, w425 h90, Admin-Binder by Notoriuz
Gui, 23: Add, Edit, x29 y18 w366 h21 vMyEdit41, %MyEdit41%
Gui, 23: Add, GroupBox, x16 y0 w391 h54
Gui, 23: Add, Button, x328 y58 w80 h23 gSaveSet5, Сохранить
Gui, 23: Add, CheckBox, x185 y59 w130 h20 vCheck5 Checked%Check5%, Учитывать в счетчике
Gui, 23: Add, CheckBox, x50 y59 w130 h20 vCheck35 Checked%Check35%, Использовать Enter
Gui, 23: Add, GroupBox, x45 y50 w370 h34
return
23GuiEscape:
23GuiClose:
    Gui Destroy
return

22:
Gui, 24: Show, w425 h137, Admin-Binder by Notoriuz
Gui, 24: Add, Edit, x30 y18 w366 h21 vMyEdit41, %MyEdit41%
Gui, 24: Add, GroupBox, x16 y0 w391 h54
Gui, 24: Add, Edit, x30 y70 w366 h21 vMyEdit42, %MyEdit42%
Gui, 24: Add, GroupBox, x16 y52 w391 h54
Gui, 24: Add, Button, x328 y110 w80 h23 gSaveSet5, Сохранить
Gui, 24: Add, CheckBox, x185 y110 w130 h20 vCheck5 Checked%Check5%, Учитывать в счетчике
Gui, 24: Add, CheckBox, x50 y110 w130 h20 vCheck35 Checked%Check35%, Использовать Enter
Gui, 24: Add, GroupBox, x45 y102 w370 h34
return
24GuiEscape:
24GuiClose:
    Gui Destroy
return

23:
Gui, 25: Show, w425 h190, Admin-Binder by Notoriuz
Gui, 25: Add, Edit, x29 y18 w366 h21 vMyEdit41, %MyEdit41%
Gui, 25: Add, GroupBox, x16 y0 w391 h54
Gui, 25: Add, Edit, x30 y70 w366 h21 vMyEdit42, %MyEdit42%
Gui, 25: Add, GroupBox, x16 y52 w391 h54
Gui, 25: Add, GroupBox, x16 y104 w391 h54
Gui, 25: Add, Edit, x32 y122 w366 h21 vMyEdit43, %MyEdit43%
Gui, 25: Add, Button, x328 y162 w80 h23 gSaveSet5, Сохранить
Gui, 25: Add, CheckBox, x185 y162 w130 h20 vCheck5 Checked%Check5%, Учитывать в счетчике
Gui, 25: Add, CheckBox, x50 y163 w130 h20 vCheck35 Checked%Check35%, Использовать Enter
Gui, 25: Add, GroupBox, x45 y154 w370 h34
return
25GuiEscape:
25GuiClose:
    Gui Destroy
return

24:
Gui, 26: Show, w425 h248, Admin-Binder by Notoriuz
Gui, 26: Add, Edit, x30 y18 w366 h21 vMyEdit41, %MyEdit41%
Gui, 26: Add, GroupBox, x16 y0 w391 h54
Gui, 26: Add, Button, x328 y216 w80 h23 gSaveSet5, Сохранить
Gui, 26: Add, GroupBox, x16 y51 w391 h54
Gui, 26: Add, GroupBox, x16 y103 w391 h54
Gui, 26: Add, GroupBox, x16 y155 w391 h54
Gui, 26: Add, Edit, x30 y69 w366 h21 vMyEdit42, %MyEdit42%
Gui, 26: Add, Edit, x30 y121 w366 h21 vMyEdit43, %MyEdit43%
Gui, 26: Add, Edit, x30 y173 w366 h21 vMyEdit44, %MyEdit44%
Gui, 26: Add, CheckBox, x185 y216 w130 h20 vCheck5 Checked%Check5%, Учитывать в счетчике
Gui, 26: Add, CheckBox, x50 y216 w130 h20 vCheck35 Checked%Check35%, Использовать Enter
Gui, 26: Add, GroupBox, x45 y208 w370 h34
return
26GuiEscape:
26GuiClose:
Gui Destroy
return

25:
Gui, 27: Show, w425 h295, Admin-Binder by Notoriuz
Gui, 27: Add, Edit, x30 y18 w366 h21 vMyEdit41, %MyEdit41%
Gui, 27: Add, GroupBox, x16 y0 w391 h54
Gui, 27: Add, Button, x328 y266 w80 h23 gSaveSet5, Сохранить
Gui, 27: Add, GroupBox, x16 y51 w391 h54
Gui, 27: Add, GroupBox, x16 y103 w391 h54
Gui, 27: Add, GroupBox, x16 y155 w391 h54
Gui, 27: Add, Edit, x30 y69 w366 h21 vMyEdit42, %MyEdit42%
Gui, 27: Add, Edit, x30 y121 w366 h21 vMyEdit43, %MyEdit43%
Gui, 27: Add, Edit, x30 y173 w366 h21 vMyEdit44, %MyEdit44%
Gui, 27: Add, GroupBox, x16 y208 w391 h54
Gui, 27: Add, Edit, x30 y227 w366 h21 vMyEdit45, %MyEdit45%
Gui, 27: Add, CheckBox, x185 y266 w130 h20 vCheck5 Checked%Check5%, Учитывать в счетчике
Gui, 27: Add, CheckBox, x50 y266 w130 h20 vCheck35 Checked%Check35%, Использовать Enter
Gui, 27: Add, GroupBox, x45 y258 w370 h34
return
27GuiEscape:
27GuiClose:
    Gui Destroy
return

;---------------------------- 26 - 30 --------------------------------------------

26:
Gui, 28: Show, w425 h90, Admin-Binder by Notoriuz
Gui, 28: Add, Edit, x29 y18 w366 h21 vMyEdit51, %MyEdit51%
Gui, 28: Add, GroupBox, x16 y0 w391 h54
Gui, 28: Add, Button, x328 y58 w80 h23 gSaveSet6, Сохранить
Gui, 28: Add, CheckBox, x185 y59 w130 h20 vCheck6 Checked%Check6%, Учитывать в счетчике
Gui, 28: Add, CheckBox, x50 y59 w130 h20 vCheck36 Checked%Check36%, Использовать Enter
Gui, 28: Add, GroupBox, x45 y50 w370 h34
return
28GuiEscape:
28GuiClose:
    Gui Destroy
return

27:
Gui, 29: Show, w425 h137, Admin-Binder by Notoriuz
Gui, 29: Add, Edit, x30 y18 w366 h21 vMyEdit51, %MyEdit51%
Gui, 29: Add, GroupBox, x16 y0 w391 h54
Gui, 29: Add, Edit, x30 y70 w366 h21 vMyEdit52, %MyEdit52%
Gui, 29: Add, GroupBox, x16 y52 w391 h54
Gui, 29: Add, Button, x328 y110 w80 h23 gSaveSet6, Сохранить
Gui, 29: Add, CheckBox, x185 y110 w130 h20 vCheck6 Checked%Check6%, Учитывать в счетчике
Gui, 29: Add, CheckBox, x50 y110 w130 h20 vCheck36 Checked%Check36%, Использовать Enter
Gui, 29: Add, GroupBox, x45 y102 w370 h34
return
29GuiEscape:
29GuiClose:
    Gui Destroy
return

28:
Gui, 30: Show, w425 h190, Admin-Binder by Notoriuz
Gui, 30: Add, Edit, x29 y18 w366 h21 vMyEdit51, %MyEdit51%
Gui, 30: Add, GroupBox, x16 y0 w391 h54
Gui, 30: Add, Edit, x30 y70 w366 h21 vMyEdit52, %MyEdit52%
Gui, 30: Add, GroupBox, x16 y52 w391 h54
Gui, 30: Add, GroupBox, x16 y104 w391 h54
Gui, 30: Add, Edit, x32 y122 w366 h21 vMyEdit53, %MyEdit53%
Gui, 30: Add, Button, x328 y162 w80 h23 gSaveSet6, Сохранить
Gui, 30: Add, CheckBox, x185 y162 w130 h20 vCheck6 Checked%Check6%, Учитывать в счетчике
Gui, 30: Add, CheckBox, x50 y163 w130 h20 vCheck36 Checked%Check36%, Использовать Enter
Gui, 30: Add, GroupBox, x45 y154 w370 h34
return
30GuiEscape:
30GuiClose:
    Gui Destroy
return

29:
Gui, 31: Show, w425 h248, Admin-Binder by Notoriuz
Gui, 31: Add, Edit, x30 y18 w366 h21 vMyEdit51, %MyEdit51%
Gui, 31: Add, GroupBox, x16 y0 w391 h54
Gui, 31: Add, Button, x328 y216 w80 h23 gSaveSet6, Сохранить
Gui, 31: Add, GroupBox, x16 y51 w391 h54
Gui, 31: Add, GroupBox, x16 y103 w391 h54
Gui, 31: Add, GroupBox, x16 y155 w391 h54
Gui, 31: Add, Edit, x30 y69 w366 h21 vMyEdit52, %MyEdit52%
Gui, 31: Add, Edit, x30 y121 w366 h21 vMyEdit53, %MyEdit53%
Gui, 31: Add, Edit, x30 y173 w366 h21 vMyEdit54, %MyEdit54%
Gui, 31: Add, CheckBox, x185 y216 w130 h20 vCheck6 Checked%Check6%, Учитывать в счетчике
Gui, 31: Add, CheckBox, x50 y216 w130 h20 vCheck36 Checked%Check36%, Использовать Enter
Gui, 31: Add, GroupBox, x45 y208 w370 h34
return
31GuiEscape:
31GuiClose:
Gui Destroy
return

30:
Gui, 32: Show, w425 h295, Admin-Binder by Notoriuz
Gui, 32: Add, Edit, x30 y18 w366 h21 vMyEdit51, %MyEdit51%
Gui, 32: Add, GroupBox, x16 y0 w391 h54
Gui, 32: Add, Button, x328 y266 w80 h23 gSaveSet6, Сохранить
Gui, 32: Add, GroupBox, x16 y51 w391 h54
Gui, 32: Add, GroupBox, x16 y103 w391 h54
Gui, 32: Add, GroupBox, x16 y155 w391 h54
Gui, 32: Add, Edit, x30 y69 w366 h21 vMyEdit52, %MyEdit52%
Gui, 32: Add, Edit, x30 y121 w366 h21 vMyEdit53, %MyEdit53%
Gui, 32: Add, Edit, x30 y173 w366 h21 vMyEdit54, %MyEdit54%
Gui, 32: Add, GroupBox, x16 y208 w391 h54
Gui, 32: Add, Edit, x30 y227 w366 h21 vMyEdit55, %MyEdit55%
Gui, 32: Add, CheckBox, x185 y266 w130 h20 vCheck6 Checked%Check6%, Учитывать в счетчике
Gui, 32: Add, CheckBox, x50 y266 w130 h20 vCheck36 Checked%Check36%, Использовать Enter
Gui, 32: Add, GroupBox, x45 y258 w370 h34
return
32GuiEscape:
32GuiClose:
    Gui Destroy
return

;---------------------------- 31 - 35 --------------------------------------------

31:
Gui, 33: Show, w425 h90, Admin-Binder by Notoriuz
Gui, 33: Add, Edit, x29 y18 w366 h21 vMyEdit61, %MyEdit61%
Gui, 33: Add, GroupBox, x16 y0 w391 h54
Gui, 33: Add, Button, x328 y58 w80 h23 gSaveSet7, Сохранить
Gui, 33: Add, CheckBox, x185 y59 w130 h20 vCheck7 Checked%Check7%, Учитывать в счетчике
Gui, 33: Add, CheckBox, x50 y59 w130 h20 vCheck37 Checked%Check37%, Использовать Enter
Gui, 33: Add, GroupBox, x45 y50 w370 h34
return
33GuiEscape:
33GuiClose:
    Gui Destroy
return

32:
Gui, 34: Show, w425 h137, Admin-Binder by Notoriuz
Gui, 34: Add, Edit, x30 y18 w366 h21 vMyEdit61, %MyEdit61%
Gui, 34: Add, GroupBox, x16 y0 w391 h54
Gui, 34: Add, Edit, x30 y70 w366 h21 vMyEdit62, %MyEdit62%
Gui, 34: Add, GroupBox, x16 y52 w391 h54
Gui, 34: Add, Button, x328 y110 w80 h23 gSaveSet7, Сохранить
Gui, 34: Add, CheckBox, x185 y110 w130 h20 vCheck7 Checked%Check7%, Учитывать в счетчике
Gui, 34: Add, CheckBox, x50 y110 w130 h20 vCheck37 Checked%Check37%, Использовать Enter
Gui, 34: Add, GroupBox, x45 y102 w370 h34
return
34GuiEscape:
34GuiClose:
    Gui Destroy
return

33:
Gui, 35: Show, w425 h190, Admin-Binder by Notoriuz
Gui, 35: Add, Edit, x29 y18 w366 h21 vMyEdit61, %MyEdit61%
Gui, 35: Add, GroupBox, x16 y0 w391 h54
Gui, 35: Add, Edit, x30 y70 w366 h21 vMyEdit62, %MyEdit62%
Gui, 35: Add, GroupBox, x16 y52 w391 h54
Gui, 35: Add, GroupBox, x16 y104 w391 h54
Gui, 35: Add, Edit, x32 y122 w366 h21 vMyEdit63, %MyEdit63%
Gui, 35: Add, Button, x328 y162 w80 h23 gSaveSet7, Сохранить
Gui, 35: Add, CheckBox, x185 y162 w130 h20 vCheck7 Checked%Check7%, Учитывать в счетчике
Gui, 35: Add, CheckBox, x50 y163 w130 h20 vCheck37 Checked%Check37%, Использовать Enter
Gui, 35: Add, GroupBox, x45 y154 w370 h34
return
35GuiEscape:
35GuiClose:
    Gui Destroy
return

34:
Gui, 36: Show, w425 h248, Admin-Binder by Notoriuz
Gui, 36: Add, Edit, x30 y18 w366 h21 vMyEdit61, %MyEdit61%
Gui, 36: Add, GroupBox, x16 y0 w391 h54
Gui, 36: Add, Button, x328 y216 w80 h23 gSaveSet7, Сохранить
Gui, 36: Add, GroupBox, x16 y51 w391 h54
Gui, 36: Add, GroupBox, x16 y103 w391 h54
Gui, 36: Add, GroupBox, x16 y155 w391 h54
Gui, 36: Add, Edit, x30 y69 w366 h21 vMyEdit62, %MyEdit62%
Gui, 36: Add, Edit, x30 y121 w366 h21 vMyEdit63, %MyEdit63%
Gui, 36: Add, Edit, x30 y173 w366 h21 vMyEdit64, %MyEdit64%
Gui, 36: Add, CheckBox, x185 y216 w130 h20 vCheck7 Checked%Check7%, Учитывать в счетчике
Gui, 36: Add, CheckBox, x50 y216 w130 h20 vCheck37 Checked%Check37%, Использовать Enter
Gui, 36: Add, GroupBox, x45 y208 w370 h34
return
36GuiEscape:
36GuiClose:
Gui Destroy
return

35:
Gui, 37: Show, w425 h295, Admin-Binder by Notoriuz
Gui, 37: Add, Edit, x30 y18 w366 h21 vMyEdit61, %MyEdit61%
Gui, 37: Add, GroupBox, x16 y0 w391 h54
Gui, 37: Add, Button, x328 y266 w80 h23 gSaveSet7, Сохранить
Gui, 37: Add, GroupBox, x16 y51 w391 h54
Gui, 37: Add, GroupBox, x16 y103 w391 h54
Gui, 37: Add, GroupBox, x16 y155 w391 h54
Gui, 37: Add, Edit, x30 y69 w366 h21 vMyEdit62, %MyEdit62%
Gui, 37: Add, Edit, x30 y121 w366 h21 vMyEdit63, %MyEdit63%
Gui, 37: Add, Edit, x30 y173 w366 h21 vMyEdit64, %MyEdit64%
Gui, 37: Add, GroupBox, x16 y208 w391 h54
Gui, 37: Add, Edit, x30 y227 w366 h21 vMyEdit65, %MyEdit65%
Gui, 37: Add, CheckBox, x185 y266 w130 h20 vCheck7 Checked%Check7%, Учитывать в счетчике
Gui, 37: Add, CheckBox, x50 y266 w130 h20 vCheck37 Checked%Check37%, Использовать Enter
Gui, 37: Add, GroupBox, x45 y258 w370 h34
return
37GuiEscape:
37GuiClose:
    Gui Destroy
return

;---------------------------- 36 - 40 --------------------------------------------

36:
Gui, 38: Show, w425 h90, Admin-Binder by Notoriuz
Gui, 38: Add, Edit, x29 y18 w366 h21 vMyEdit71, %MyEdit71%
Gui, 38: Add, GroupBox, x16 y0 w391 h54
Gui, 38: Add, Button, x328 y58 w80 h23 gSaveSet8, Сохранить
Gui, 38: Add, CheckBox, x185 y59 w130 h20 vCheck8 Checked%Check8%, Учитывать в счетчике
Gui, 38: Add, CheckBox, x50 y59 w130 h20 vCheck38 Checked%Check38%, Использовать Enter
Gui, 38: Add, GroupBox, x45 y50 w370 h34
return
38GuiEscape:
38GuiClose:
    Gui Destroy
return

37:
Gui, 39: Show, w425 h137, Admin-Binder by Notoriuz
Gui, 39: Add, Edit, x30 y18 w366 h21 vMyEdit71, %MyEdit71%
Gui, 39: Add, GroupBox, x16 y0 w391 h54
Gui, 39: Add, Edit, x30 y70 w366 h21 vMyEdit72, %MyEdit72%
Gui, 39: Add, GroupBox, x16 y52 w391 h54
Gui, 39: Add, Button, x328 y110 w80 h23 gSaveSet8, Сохранить
Gui, 39: Add, CheckBox, x185 y110 w130 h20 vCheck8 Checked%Check8%, Учитывать в счетчике
Gui, 39: Add, CheckBox, x50 y110 w130 h20 vCheck38 Checked%Check38%, Использовать Enter
Gui, 39: Add, GroupBox, x45 y102 w370 h34
return
39GuiEscape:
39GuiClose:
    Gui Destroy
return

38:
Gui, 40: Show, w425 h190, Admin-Binder by Notoriuz
Gui, 40: Add, Edit, x29 y18 w366 h21 vMyEdit71, %MyEdit71%
Gui, 40: Add, GroupBox, x16 y0 w391 h54
Gui, 40: Add, Edit, x30 y70 w366 h21 vMyEdit72, %MyEdit72%
Gui, 40: Add, GroupBox, x16 y52 w391 h54
Gui, 40: Add, GroupBox, x16 y104 w391 h54
Gui, 40: Add, Edit, x32 y122 w366 h21 vMyEdit73, %MyEdit73%
Gui, 40: Add, Button, x328 y162 w80 h23 gSaveSet8, Сохранить
Gui, 40: Add, CheckBox, x185 y162 w130 h20 vCheck8 Checked%Check8%, Учитывать в счетчике
Gui, 40: Add, CheckBox, x50 y163 w130 h20 vCheck38 Checked%Check38%, Использовать Enter
Gui, 40: Add, GroupBox, x45 y154 w370 h34
return
40GuiEscape:
40GuiClose:
    Gui Destroy
return

39:
Gui, 41: Show, w425 h248, Admin-Binder by Notoriuz
Gui, 41: Add, Edit, x30 y18 w366 h21 vMyEdit71, %MyEdit71%
Gui, 41: Add, GroupBox, x16 y0 w391 h54
Gui, 41: Add, Button, x328 y216 w80 h23 gSaveSet8, Сохранить
Gui, 41: Add, GroupBox, x16 y51 w391 h54
Gui, 41: Add, GroupBox, x16 y103 w391 h54
Gui, 41: Add, GroupBox, x16 y155 w391 h54
Gui, 41: Add, Edit, x30 y69 w366 h21 vMyEdit72, %MyEdit72%
Gui, 41: Add, Edit, x30 y121 w366 h21 vMyEdit73, %MyEdit73%
Gui, 41: Add, Edit, x30 y173 w366 h21 vMyEdit74, %MyEdit74%
Gui, 41: Add, CheckBox, x185 y216 w130 h20 vCheck8 Checked%Check8%, Учитывать в счетчике
Gui, 41: Add, CheckBox, x50 y216 w130 h20 vCheck38 Checked%Check38%, Использовать Enter
Gui, 41: Add, GroupBox, x45 y208 w370 h34
return
41GuiEscape:
41GuiClose:
Gui Destroy
return

40:
Gui, 42: Show, w425 h295, Admin-Binder by Notoriuz
Gui, 42: Add, Edit, x30 y18 w366 h21 vMyEdit71, %MyEdit71%
Gui, 42: Add, GroupBox, x16 y0 w391 h54
Gui, 42: Add, Button, x328 y266 w80 h23 gSaveSet8, Сохранить
Gui, 42: Add, GroupBox, x16 y51 w391 h54
Gui, 42: Add, GroupBox, x16 y103 w391 h54
Gui, 42: Add, GroupBox, x16 y155 w391 h54
Gui, 42: Add, Edit, x30 y69 w366 h21 vMyEdit72, %MyEdit72%
Gui, 42: Add, Edit, x30 y121 w366 h21 vMyEdit73, %MyEdit73%
Gui, 42: Add, Edit, x30 y173 w366 h21 vMyEdit74, %MyEdit74%
Gui, 42: Add, GroupBox, x16 y208 w391 h54
Gui, 42: Add, Edit, x30 y227 w366 h21 vMyEdit75, %MyEdit75%
Gui, 42: Add, CheckBox, x185 y266 w130 h20 vCheck8 Checked%Check8%, Учитывать в счетчике
Gui, 42: Add, CheckBox, x50 y266 w130 h20 vCheck38 Checked%Check38%, Использовать Enter
Gui, 42: Add, GroupBox, x45 y258 w370 h34
return
42GuiEscape:
42GuiClose:
    Gui Destroy
return

;---------------------------- 41 - 45 --------------------------------------------

41:
Gui, 43: Show, w425 h90, Admin-Binder by Notoriuz
Gui, 43: Add, Edit, x29 y18 w366 h21 vMyEdit81, %MyEdit81%
Gui, 43: Add, GroupBox, x16 y0 w391 h54
Gui, 43: Add, Button, x328 y58 w80 h23 gSaveSet9, Сохранить
Gui, 43: Add, CheckBox, x185 y59 w130 h20 vCheck9 Checked%Check9%, Учитывать в счетчике
Gui, 43: Add, CheckBox, x50 y59 w130 h20 vCheck39 Checked%Check39%, Использовать Enter
Gui, 43: Add, GroupBox, x45 y50 w370 h34
return
43GuiEscape:
43GuiClose:
    Gui Destroy
return

42:
Gui, 44: Show, w425 h137, Admin-Binder by Notoriuz
Gui, 44: Add, Edit, x30 y18 w366 h21 vMyEdit81, %MyEdit81%
Gui, 44: Add, GroupBox, x16 y0 w391 h54
Gui, 44: Add, Edit, x30 y70 w366 h21 vMyEdit82, %MyEdit82%
Gui, 44: Add, GroupBox, x16 y52 w391 h54
Gui, 44: Add, Button, x328 y110 w80 h23 gSaveSet9, Сохранить
Gui, 44: Add, CheckBox, x185 y110 w130 h20 vCheck9 Checked%Check9%, Учитывать в счетчике
Gui, 44: Add, CheckBox, x50 y110 w130 h20 vCheck39 Checked%Check39%, Использовать Enter
Gui, 44: Add, GroupBox, x45 y102 w370 h34
return
44GuiEscape:
44GuiClose:
    Gui Destroy
return

43:
Gui, 45: Show, w425 h190, Admin-Binder by Notoriuz
Gui, 45: Add, Edit, x29 y18 w366 h21 vMyEdit81, %MyEdit81%
Gui, 45: Add, GroupBox, x16 y0 w391 h54
Gui, 45: Add, Edit, x30 y70 w366 h21 vMyEdit82, %MyEdit82%
Gui, 45: Add, GroupBox, x16 y52 w391 h54
Gui, 45: Add, GroupBox, x16 y104 w391 h54
Gui, 45: Add, Edit, x32 y122 w366 h21 vMyEdit83, %MyEdit83%
Gui, 45: Add, Button, x328 y162 w80 h23 gSaveSet9, Сохранить
Gui, 45: Add, CheckBox, x185 y162 w130 h20 vCheck9 Checked%Check9%, Учитывать в счетчике
Gui, 45: Add, CheckBox, x50 y163 w130 h20 vCheck39 Checked%Check39%, Использовать Enter
Gui, 45: Add, GroupBox, x45 y154 w370 h34
return
45GuiEscape:
45GuiClose:
    Gui Destroy
return

44:
Gui, 46: Show, w425 h248, Admin-Binder by Notoriuz
Gui, 46: Add, Edit, x30 y18 w366 h21 vMyEdit81, %MyEdit81%
Gui, 46: Add, GroupBox, x16 y0 w391 h54
Gui, 46: Add, Button, x328 y216 w80 h23 gSaveSet9, Сохранить
Gui, 46: Add, GroupBox, x16 y51 w391 h54
Gui, 46: Add, GroupBox, x16 y103 w391 h54
Gui, 46: Add, GroupBox, x16 y155 w391 h54
Gui, 46: Add, Edit, x30 y69 w366 h21 vMyEdit82, %MyEdit82%
Gui, 46: Add, Edit, x30 y121 w366 h21 vMyEdit83, %MyEdit83%
Gui, 46: Add, Edit, x30 y173 w366 h21 vMyEdit84, %MyEdit84%
Gui, 46: Add, CheckBox, x185 y216 w130 h20 vCheck9 Checked%Check9%, Учитывать в счетчике
Gui, 46: Add, CheckBox, x50 y216 w130 h20 vCheck39 Checked%Check39%, Использовать Enter
Gui, 46: Add, GroupBox, x45 y208 w370 h34
return
46GuiEscape:
46GuiClose:
Gui Destroy
return

45:
Gui, 47: Show, w425 h295, Admin-Binder by Notoriuz
Gui, 47: Add, Edit, x30 y18 w366 h21 vMyEdit81, %MyEdi81%
Gui, 47: Add, GroupBox, x16 y0 w391 h54
Gui, 47: Add, Button, x328 y266 w80 h23 gSaveSet9, Сохранить
Gui, 47: Add, GroupBox, x16 y51 w391 h54
Gui, 47: Add, GroupBox, x16 y103 w391 h54
Gui, 47: Add, GroupBox, x16 y155 w391 h54
Gui, 47: Add, Edit, x30 y69 w366 h21 vMyEdit82, %MyEdit82%
Gui, 47: Add, Edit, x30 y121 w366 h21 vMyEdit83, %MyEdit83%
Gui, 47: Add, Edit, x30 y173 w366 h21 vMyEdit84, %MyEdit84%
Gui, 47: Add, GroupBox, x16 y208 w391 h54
Gui, 47: Add, Edit, x30 y227 w366 h21 vMyEdit85, %MyEdit85%
Gui, 47: Add, CheckBox, x185 y266 w130 h20 vCheck9 Checked%Check9%, Учитывать в счетчике
Gui, 47: Add, CheckBox, x50 y266 w130 h20 vCheck39 Checked%Check39%, Использовать Enter
Gui, 47: Add, GroupBox, x45 y258 w370 h34
return
47GuiEscape:
47GuiClose:
    Gui Destroy
return

;---------------------------- 46 - 50 --------------------------------------------

46:
Gui, 48: Show, w425 h90, Admin-Binder by Notoriuz
Gui, 48: Add, Edit, x29 y18 w366 h21 vMyEdit91, %MyEdit91%
Gui, 48: Add, GroupBox, x16 y0 w391 h54
Gui, 48: Add, Button, x328 y58 w80 h23 gSaveSet10, Сохранить
Gui, 48: Add, CheckBox, x185 y59 w130 h20 vCheck10 Checked%Check10%, Учитывать в счетчике
Gui, 48: Add, CheckBox, x50 y59 w130 h20 vCheck40 Checked%Check40%, Использовать Enter
Gui, 48: Add, GroupBox, x45 y50 w370 h34
return
48GuiEscape:
48GuiClose:
    Gui Destroy
return

47:
Gui, 49: Show, w425 h137, Admin-Binder by Notoriuz
Gui, 49: Add, Edit, x30 y18 w366 h21 vMyEdit91, %MyEdit91%
Gui, 49: Add, GroupBox, x16 y0 w391 h54
Gui, 49: Add, Edit, x30 y70 w366 h21 vMyEdit92, %MyEdit92%
Gui, 49: Add, GroupBox, x16 y52 w391 h54
Gui, 49: Add, Button, x328 y110 w80 h23 gSaveSet10, Сохранить
Gui, 49: Add, CheckBox, x185 y110 w130 h20 vCheck10 Checked%Check10%, Учитывать в счетчике
Gui, 49: Add, CheckBox, x50 y110 w130 h20 vCheck40 Checked%Check40%, Использовать Enter
Gui, 49: Add, GroupBox, x45 y102 w370 h34
return
49GuiEscape:
49GuiClose:
    Gui Destroy
return

48:
Gui, 50: Show, w425 h190, Admin-Binder by Notoriuz
Gui, 50: Add, Edit, x29 y18 w366 h21 vMyEdit91, %MyEdit91%
Gui, 50: Add, GroupBox, x16 y0 w391 h54
Gui, 50: Add, Edit, x30 y70 w366 h21 vMyEdit92, %MyEdit92%
Gui, 50: Add, GroupBox, x16 y52 w391 h54
Gui, 50: Add, GroupBox, x16 y104 w391 h54
Gui, 50: Add, Edit, x32 y122 w366 h21 vMyEdit93, %MyEdit93%
Gui, 50: Add, Button, x328 y162 w80 h23 gSaveSet10, Сохранить
Gui, 50: Add, CheckBox, x185 y162 w130 h20 vCheck10 Checked%Check10%, Учитывать в счетчике
Gui, 50: Add, CheckBox, x50 y163 w130 h20 vCheck40 Checked%Check40%, Использовать Enter
Gui, 50: Add, GroupBox, x45 y154 w370 h34
return
50GuiEscape:
50GuiClose:
    Gui Destroy
return

49:
Gui, 51: Show, w425 h248, Admin-Binder by Notoriuz
Gui, 51: Add, Edit, x30 y18 w366 h21 vMyEdit91, %MyEdit91%
Gui, 51: Add, GroupBox, x16 y0 w391 h54
Gui, 51: Add, Button, x328 y216 w80 h23 gSaveSet10, Сохранить
Gui, 51: Add, GroupBox, x16 y51 w391 h54
Gui, 51: Add, GroupBox, x16 y103 w391 h54
Gui, 51: Add, GroupBox, x16 y155 w391 h54
Gui, 51: Add, Edit, x30 y69 w366 h21 vMyEdit92, %MyEdit92%
Gui, 51: Add, Edit, x30 y121 w366 h21 vMyEdit93, %MyEdit93%
Gui, 51: Add, Edit, x30 y173 w366 h21 vMyEdit94, %MyEdit94%
Gui, 51: Add, CheckBox, x185 y216 w130 h20 vCheck10 Checked%Check10%, Учитывать в счетчике
Gui, 51: Add, CheckBox, x50 y216 w130 h20 vCheck40 Checked%Check40%, Использовать Enter
Gui, 51: Add, GroupBox, x45 y208 w370 h34
return
51GuiEscape:
51GuiClose:
Gui Destroy
return

50:
Gui, 52: Show, w425 h295, Admin-Binder by Notoriuz
Gui, 52: Add, Edit, x30 y18 w366 h21 vMyEdit91, %MyEdi91%
Gui, 52: Add, GroupBox, x16 y0 w391 h54
Gui, 52: Add, Button, x328 y266 w80 h23 gSaveSet10, Сохранить
Gui, 52: Add, GroupBox, x16 y51 w391 h54
Gui, 52: Add, GroupBox, x16 y103 w391 h54
Gui, 52: Add, GroupBox, x16 y155 w391 h54
Gui, 52: Add, Edit, x30 y69 w366 h21 vMyEdit92, %MyEdit92%
Gui, 52: Add, Edit, x30 y121 w366 h21 vMyEdit93, %MyEdit93%
Gui, 52: Add, Edit, x30 y173 w366 h21 vMyEdit94, %MyEdit94%
Gui, 52: Add, GroupBox, x16 y208 w391 h54
Gui, 52: Add, Edit, x30 y227 w366 h21 vMyEdit95, %MyEdit95%
Gui, 52: Add, CheckBox, x185 y266 w130 h20 vCheck10 Checked%Check10%, Учитывать в счетчике
Gui, 52: Add, CheckBox, x50 y266 w130 h20 vCheck40 Checked%Check40%, Использовать Enter
Gui, 52: Add, GroupBox, x45 y258 w370 h34
return
52GuiEscape:
52GuiClose:
    Gui Destroy
return
;--------------------------------------------------------------------------


2Tab1:
Gui, 53: Add, CheckBox, x8 y9 w169 h28 vCheck11 Checked%Check11%, Учитывать в счетчике
Gui, 53: Add, CheckBox, x8 y41 w169 h28 vCheck41 Checked%Check41%, Использовать Enter
Gui, 53: Add, Button, x7 y72 w171 h23 g2TabBox1, Сохранить
Gui, 53: Add, GroupBox, x6 y2 w172 h37
Gui, 53: Add, GroupBox, x6 y34 w172 h37
Gui, 53: Show, w184 h99, Admin-Binder by Notoriuz
return
53GuiEscape:
53GuiClose:
    Gui Destroy
return

2Tab2:
Gui, 54: Add, CheckBox, x8 y9 w169 h28 vCheck12 Checked%Check12%, Учитывать в счетчике
Gui, 54: Add, CheckBox, x8 y41 w169 h28 vCheck42 Checked%Check42%, Использовать Enter
Gui, 54: Add, Button, x7 y72 w171 h23 g2TabBox2, Сохранить
Gui, 54: Add, GroupBox, x6 y2 w172 h37
Gui, 54: Add, GroupBox, x6 y34 w172 h37
Gui, 54: Show, w184 h99, Admin-Binder by Notoriuz
return
54GuiEscape:
54GuiClose:
    Gui Destroy
return

2Tab3:
Gui, 55: Add, CheckBox, x8 y9 w169 h28 vCheck13 Checked%Check13%, Учитывать в счетчике
Gui, 55: Add, CheckBox, x8 y41 w169 h28 vCheck43 Checked%Check43%, Использовать Enter
Gui, 55: Add, Button, x7 y72 w171 h23 g2TabBox3, Сохранить
Gui, 55: Add, GroupBox, x6 y2 w172 h37
Gui, 55: Add, GroupBox, x6 y34 w172 h37
Gui, 55: Show, w184 h99, Admin-Binder by Notoriuz
return
55GuiEscape:
55GuiClose:
    Gui Destroy
return

2Tab4:
Gui, 56: Add, CheckBox, x8 y9 w169 h28 vCheck14 Checked%Check14%, Учитывать в счетчике
Gui, 56: Add, CheckBox, x8 y41 w169 h28 vCheck44 Checked%Check44%, Использовать Enter
Gui, 56: Add, Button, x7 y72 w171 h23 g2TabBox4, Сохранить
Gui, 56: Add, GroupBox, x6 y2 w172 h37
Gui, 56: Add, GroupBox, x6 y34 w172 h37
Gui, 56: Show, w184 h99, Admin-Binder by Notoriuz
return
56GuiEscape:
56GuiClose:
    Gui Destroy
return

2Tab5:
Gui, 57: Add, CheckBox, x8 y9 w169 h28 vCheck15 Checked%Check15%, Учитывать в счетчике
Gui, 57: Add, CheckBox, x8 y41 w169 h28 vCheck45 Checked%Check45%, Использовать Enter
Gui, 57: Add, Button, x7 y72 w171 h23 g2TabBox5, Сохранить
Gui, 57: Add, GroupBox, x6 y2 w172 h37
Gui, 57: Add, GroupBox, x6 y34 w172 h37
Gui, 57: Show, w184 h99, Admin-Binder by Notoriuz
return
57GuiEscape:
57GuiClose:
    Gui Destroy
return

2Tab6:
Gui, 58: Add, CheckBox, x8 y9 w169 h28 vCheck16 Checked%Check16%, Учитывать в счетчике
Gui, 58: Add, CheckBox, x8 y41 w169 h28 vCheck46 Checked%Check46%, Использовать Enter
Gui, 58: Add, Button, x7 y72 w171 h23 g2TabBox6, Сохранить
Gui, 58: Add, GroupBox, x6 y2 w172 h37
Gui, 58: Add, GroupBox, x6 y34 w172 h37
Gui, 58: Show, w184 h99, Admin-Binder by Notoriuz
return
58GuiEscape:
58GuiClose:
    Gui Destroy
return

2Tab7:
Gui, 59: Add, CheckBox, x8 y9 w169 h28 vCheck17 Checked%Check17%, Учитывать в счетчике
Gui, 59: Add, CheckBox, x8 y41 w169 h28 vCheck47 Checked%Check47%, Использовать Enter
Gui, 59: Add, Button, x7 y72 w171 h23 g2TabBox7, Сохранить
Gui, 59: Add, GroupBox, x6 y2 w172 h37
Gui, 59: Add, GroupBox, x6 y34 w172 h37
Gui, 59: Show, w184 h99, Admin-Binder by Notoriuz
return
59GuiEscape:
59GuiClose:
    Gui Destroy
return

2Tab8:
Gui, 60: Add, CheckBox, x8 y9 w169 h28 vCheck18 Checked%Check18%, Учитывать в счетчике
Gui, 60: Add, CheckBox, x8 y41 w169 h28 vCheck48 Checked%Check48%, Использовать Enter
Gui, 60: Add, Button, x7 y72 w171 h23 g2TabBox8, Сохранить
Gui, 60: Add, GroupBox, x6 y2 w172 h37
Gui, 60: Add, GroupBox, x6 y34 w172 h37
Gui, 60: Show, w184 h99, Admin-Binder by Notoriuz
return
60GuiEscape:
60GuiClose:
    Gui Destroy
return

2Tab9:
Gui, 61: Add, CheckBox, x8 y9 w169 h28 vCheck19 Checked%Check19%, Учитывать в счетчике
Gui, 61: Add, CheckBox, x8 y41 w169 h28 vCheck49 Checked%Check49%, Использовать Enter
Gui, 61: Add, Button, x7 y72 w171 h23 g2TabBox9, Сохранить
Gui, 61: Add, GroupBox, x6 y2 w172 h37
Gui, 61: Add, GroupBox, x6 y34 w172 h37
Gui, 61: Show, w184 h99, Admin-Binder by Notoriuz
return
61GuiEscape:
61GuiClose:
    Gui Destroy
return

2Tab10:
Gui, 62: Add, CheckBox, x8 y9 w169 h28 vCheck20 Checked%Check20%, Учитывать в счетчике
Gui, 62: Add, CheckBox, x8 y41 w169 h28 vCheck50 Checked%Check50%, Использовать Enter
Gui, 62: Add, Button, x7 y72 w171 h23 g2TabBox10, Сохранить
Gui, 62: Add, GroupBox, x6 y2 w172 h37
Gui, 62: Add, GroupBox, x6 y34 w172 h37
Gui, 62: Show, w184 h99, Admin-Binder by Notoriuz
return
62GuiEscape:
62GuiClose:
    Gui Destroy
return

;---------------------------3GUI CHECKUP------------------------------

3Tab1:
Gui, 63: Add, CheckBox, x22 y6 w137 h37 vCheck21 Checked%Check21%, Учитывать в счетчике
Gui, 63: Add, GroupBox, x11 y-3 w161 h53
Gui, 63: Show, w185 h78, Admin-Binder by Notoriuz
Gui, 63: Add, Button, x10 y50 w163 h23 gSlowCom1, Сохранить
return
63GuiEscape:
63GuiClose:
    Gui Destroy
return

3Tab2:
Gui, 64: Add, CheckBox, x22 y6 w137 h37 vCheck22 Checked%Check22%, Учитывать в счетчике
Gui, 64: Add, GroupBox, x11 y-3 w161 h53
Gui, 64: Show, w185 h78, Admin-Binder by Notoriuz
Gui, 64: Add, Button, x10 y50 w163 h23 gSlowCom2, Сохранить
return
64GuiEscape:
64GuiClose:
    Gui Destroy
return

3Tab3:
Gui, 65: Add, CheckBox, x22 y6 w137 h37 vCheck23 Checked%Check23%, Учитывать в счетчике
Gui, 65: Add, GroupBox, x11 y-3 w161 h53
Gui, 65: Show, w185 h78, Admin-Binder by Notoriuz
Gui, 65: Add, Button, x10 y50 w163 h23 gSlowCom3, Сохранить
return
65GuiEscape:
65GuiClose:
    Gui Destroy
return

3Tab4:
Gui, 66: Add, CheckBox, x22 y6 w137 h37 vCheck24 Checked%Check24%, Учитывать в счетчике
Gui, 66: Add, GroupBox, x11 y-3 w161 h53
Gui, 66: Show, w185 h78, Admin-Binder by Notoriuz
Gui, 66: Add, Button, x10 y50 w163 h23 gSlowCom4, Сохранить
return
66GuiEscape:
66GuiClose:
    Gui Destroy
return

3Tab5:
Gui, 67: Add, CheckBox, x22 y6 w137 h37 vCheck25 Checked%Check25%, Учитывать в счетчике
Gui, 67: Add, GroupBox, x11 y-3 w161 h53
Gui, 67: Show, w185 h78, Admin-Binder by Notoriuz
Gui, 67: Add, Button, x10 y50 w163 h23 gSlowCom5, Сохранить
return
67GuiEscape:
67GuiClose:
    Gui Destroy
return

3Tab6:
Gui, 68: Add, CheckBox, x22 y6 w137 h37 vCheck26 Checked%Check26%, Учитывать в счетчике
Gui, 68: Add, GroupBox, x11 y-3 w161 h53
Gui, 68: Show, w185 h78, Admin-Binder by Notoriuz
Gui, 68: Add, Button, x10 y50 w163 h23 gSlowCom6, Сохранить
return
68GuiEscape:
68GuiClose:
    Gui Destroy
return

3Tab7:
Gui, 69: Add, CheckBox, x22 y6 w137 h37 vCheck27 Checked%Check27%, Учитывать в счетчике
Gui, 69: Add, GroupBox, x11 y-3 w161 h53
Gui, 69: Show, w185 h78, Admin-Binder by Notoriuz
Gui, 69: Add, Button, x10 y50 w163 h23 gSlowCom7, Сохранить
return
69GuiEscape:
69GuiClose:
    Gui Destroy
return

3Tab8:
Gui, 70: Add, CheckBox, x22 y6 w137 h37 vCheck28 Checked%Check28%, Учитывать в счетчике
Gui, 70: Add, GroupBox, x11 y-3 w161 h53
Gui, 70: Show, w185 h78, Admin-Binder by Notoriuz
Gui, 70: Add, Button, x10 y50 w163 h23 gSlowCom8, Сохранить
return
70GuiEscape:
70GuiClose:
    Gui Destroy
return

3Tab9:
Gui, 71: Add, CheckBox, x22 y6 w137 h37 vCheck29 Checked%Check29%, Учитывать в счетчике
Gui, 71: Add, GroupBox, x11 y-3 w161 h53
Gui, 71: Show, w185 h78, Admin-Binder by Notoriuz
Gui, 71: Add, Button, x10 y50 w163 h23 gSlowCom9, Сохранить
return
71GuiEscape:
71GuiClose:
    Gui Destroy
return

3Tab10:
Gui, 72: Add, CheckBox, x22 y6 w137 h37 vCheck30 Checked%Check30%, Учитывать в счетчике
Gui, 72: Add, GroupBox, x11 y-3 w161 h53
Gui, 72: Show, w185 h78, Admin-Binder by Notoriuz
Gui, 72: Add, Button, x10 y50 w163 h23 gSlowCom10, Сохранить
return
72GuiEscape:
72GuiClose:
    Gui Destroy
return

;---------------------------4GUI CHECKUP------------------------------

3Tab11:
Gui, 73: Add, CheckBox, x22 y6 w137 h37 vCheck54 Checked%Check54%, Учитывать в счетчике
Gui, 73: Add, GroupBox, x11 y-3 w161 h53
Gui, 73: Show, w185 h78, Admin-Binder by Notoriuz
Gui, 73: Add, Button, x10 y50 w163 h23 gSlowCom11, Сохранить
return
73GuiEscape:
73GuiClose:
    Gui Destroy
return

3Tab12:
Gui, 74: Add, CheckBox, x22 y6 w137 h37 vCheck55 Checked%Check55%, Учитывать в счетчике
Gui, 74: Add, GroupBox, x11 y-3 w161 h53
Gui, 74: Show, w185 h78, Admin-Binder by Notoriuz
Gui, 74: Add, Button, x10 y50 w163 h23 gSlowCom12, Сохранить
return
74GuiEscape:
74GuiClose:
    Gui Destroy
return

3Tab13:
Gui, 75: Add, CheckBox, x22 y6 w137 h37 vCheck56 Checked%Check56%, Учитывать в счетчике
Gui, 75: Add, GroupBox, x11 y-3 w161 h53
Gui, 75: Show, w185 h78, Admin-Binder by Notoriuz
Gui, 75: Add, Button, x10 y50 w163 h23 gSlowCom13, Сохранить
return
75GuiEscape:
75GuiClose:
    Gui Destroy
return

3Tab14:
Gui, 76: Add, CheckBox, x22 y6 w137 h37 vCheck57 Checked%Check57%, Учитывать в счетчике
Gui, 76: Add, GroupBox, x11 y-3 w161 h53
Gui, 76: Show, w185 h78, Admin-Binder by Notoriuz
Gui, 76: Add, Button, x10 y50 w163 h23 gSlowCom14, Сохранить
return
76GuiEscape:
76GuiClose:
    Gui Destroy
return

3Tab15:
Gui, 77: Add, CheckBox, x22 y6 w137 h37 vCheck58 Checked%Check58%, Учитывать в счетчике
Gui, 77: Add, GroupBox, x11 y-3 w161 h53
Gui, 77: Show, w185 h78, Admin-Binder by Notoriuz
Gui, 77: Add, Button, x10 y50 w163 h23 gSlowCom15, Сохранить
return
77GuiEscape:
77GuiClose:
    Gui Destroy
return

3Tab16:
Gui, 78: Add, CheckBox, x22 y6 w137 h37 vCheck59 Checked%Check59%, Учитывать в счетчике
Gui, 78: Add, GroupBox, x11 y-3 w161 h53
Gui, 78: Show, w185 h78, Admin-Binder by Notoriuz
Gui, 78: Add, Button, x10 y50 w163 h23 gSlowCom16, Сохранить
return
78GuiEscape:
78GuiClose:
    Gui Destroy
return

3Tab17:
Gui, 79: Add, CheckBox, x22 y6 w137 h37 vCheck60 Checked%Check60%, Учитывать в счетчике
Gui, 79: Add, GroupBox, x11 y-3 w161 h53
Gui, 79: Show, w185 h78, Admin-Binder by Notoriuz
Gui, 79: Add, Button, x10 y50 w163 h23 gSlowCom17, Сохранить
return
79GuiEscape:
79GuiClose:
    Gui Destroy
return

3Tab18:
Gui, 80: Add, CheckBox, x22 y6 w137 h37 vCheck61 Checked%Check61%, Учитывать в счетчике
Gui, 80: Add, GroupBox, x11 y-3 w161 h53
Gui, 80: Show, w185 h78, Admin-Binder by Notoriuz
Gui, 80: Add, Button, x10 y50 w163 h23 gSlowCom18, Сохранить
return
80GuiEscape:
80GuiClose:
    Gui Destroy
return

3Tab19:
Gui, 81: Add, CheckBox, x22 y6 w137 h37 vCheck62 Checked%Check62%, Учитывать в счетчике
Gui, 81: Add, GroupBox, x11 y-3 w161 h53
Gui, 81: Show, w185 h78, Admin-Binder by Notoriuz
Gui, 81: Add, Button, x10 y50 w163 h23 gSlowCom19, Сохранить
return
81GuiEscape:
81GuiClose:
    Gui Destroy
return

3Tab20:
Gui, 82: Add, CheckBox, x22 y6 w137 h37 vCheck63 Checked%Check63%, Учитывать в счетчике
Gui, 82: Add, GroupBox, x11 y-3 w161 h53
Gui, 82: Show, w185 h78, Admin-Binder by Notoriuz
Gui, 82: Add, Button, x10 y50 w163 h23 gSlowCom20, Сохранить
return
82GuiEscape:
82GuiClose:
    Gui Destroy
return

;---------------------------4GUI CHECKUP DOP------------------------------

3Tab21:
Gui, 86: Add, CheckBox, x22 y6 w137 h37 vCheck64 Checked%Check64%, Учитывать в счетчике
Gui, 86: Add, GroupBox, x11 y-3 w161 h53
Gui, 86: Show, w185 h78, Admin-Binder by Notoriuz
Gui, 86: Add, Button, x10 y50 w163 h23 gSlowCom21, Сохранить
return
86GuiEscape:
86GuiClose:
    Gui Destroy
return

3Tab22:
Gui, 87: Add, CheckBox, x22 y6 w137 h37 vCheck65 Checked%Check65%, Учитывать в счетчике
Gui, 87: Add, GroupBox, x11 y-3 w161 h53
Gui, 87: Show, w185 h78, Admin-Binder by Notoriuz
Gui, 87: Add, Button, x10 y50 w163 h23 gSlowCom22, Сохранить
return
87GuiEscape:
87GuiClose:
    Gui Destroy
return

3Tab23:
Gui, 88: Add, CheckBox, x22 y6 w137 h37 vCheck66 Checked%Check66%, Учитывать в счетчике
Gui, 88: Add, GroupBox, x11 y-3 w161 h53
Gui, 88: Show, w185 h78, Admin-Binder by Notoriuz
Gui, 88: Add, Button, x10 y50 w163 h23 gSlowCom23, Сохранить
return
88GuiEscape:
88GuiClose:
    Gui Destroy
return

3Tab24:
Gui, 89: Add, CheckBox, x22 y6 w137 h37 vCheck67 Checked%Check67%, Учитывать в счетчике
Gui, 89: Add, GroupBox, x11 y-3 w161 h53
Gui, 89: Show, w185 h78, Admin-Binder by Notoriuz
Gui, 89: Add, Button, x10 y50 w163 h23 gSlowCom24, Сохранить
return
89GuiEscape:
89GuiClose:
    Gui Destroy
return

3Tab25:
Gui, 90: Add, CheckBox, x22 y6 w137 h37 vCheck68 Checked%Check68%, Учитывать в счетчике
Gui, 90: Add, GroupBox, x11 y-3 w161 h53
Gui, 90: Show, w185 h78, Admin-Binder by Notoriuz
Gui, 90: Add, Button, x10 y50 w163 h23 gSlowCom25, Сохранить
return
90GuiEscape:
90GuiClose:
    Gui Destroy
return

3Tab26:
Gui, 91: Add, CheckBox, x22 y6 w137 h37 vCheck69 Checked%Check69%, Учитывать в счетчике
Gui, 91: Add, GroupBox, x11 y-3 w161 h53
Gui, 91: Show, w185 h78, Admin-Binder by Notoriuz
Gui, 91: Add, Button, x10 y50 w163 h23 gSlowCom26, Сохранить
return
91GuiEscape:
91GuiClose:
    Gui Destroy
return

3Tab27:
Gui, 92: Add, CheckBox, x22 y6 w137 h37 vCheck70 Checked%Check70%, Учитывать в счетчике
Gui, 92: Add, GroupBox, x11 y-3 w161 h53
Gui, 92: Show, w185 h78, Admin-Binder by Notoriuz
Gui, 92: Add, Button, x10 y50 w163 h23 gSlowCom27, Сохранить
return
92GuiEscape:
92GuiClose:
    Gui Destroy
return

3Tab28:
Gui, 93: Add, CheckBox, x22 y6 w137 h37 vCheck71 Checked%Check71%, Учитывать в счетчике
Gui, 93: Add, GroupBox, x11 y-3 w161 h53
Gui, 93: Show, w185 h78, Admin-Binder by Notoriuz
Gui, 93: Add, Button, x10 y50 w163 h23 gSlowCom28, Сохранить
return
93GuiEscape:
93GuiClose:
    Gui Destroy
return

3Tab29:
Gui, 94: Add, CheckBox, x22 y6 w137 h37 vCheck72 Checked%Check72%, Учитывать в счетчике
Gui, 94: Add, GroupBox, x11 y-3 w161 h53
Gui, 94: Show, w185 h78, Admin-Binder by Notoriuz
Gui, 94: Add, Button, x10 y50 w163 h23 gSlowCom29, Сохранить
return
94GuiEscape:
94GuiClose:
    Gui Destroy
return

3Tab30:
Gui, 95: Add, CheckBox, x22 y6 w137 h37 vCheck73 Checked%Check73%, Учитывать в счетчике
Gui, 95: Add, GroupBox, x11 y-3 w161 h53
Gui, 95: Show, w185 h78, Admin-Binder by Notoriuz
Gui, 95: Add, Button, x10 y50 w163 h23 gSlowCom30, Сохранить
return
95GuiEscape:
95GuiClose:
    Gui Destroy
return

3Tab31:
Gui, 96: Add, CheckBox, x22 y6 w137 h37 vCheck74 Checked%Check74%, Учитывать в счетчике
Gui, 96: Add, GroupBox, x11 y-3 w161 h53
Gui, 96: Show, w185 h78, Admin-Binder by Notoriuz
Gui, 96: Add, Button, x10 y50 w163 h23 gSlowCom31, Сохранить
return
96GuiEscape:
96GuiClose:
    Gui Destroy
return

3Tab32:
Gui, 97: Add, CheckBox, x22 y6 w137 h37 vCheck75 Checked%Check75%, Учитывать в счетчике
Gui, 97: Add, GroupBox, x11 y-3 w161 h53
Gui, 97: Show, w185 h78, Admin-Binder by Notoriuz
Gui, 97: Add, Button, x10 y50 w163 h23 gSlowCom32, Сохранить
return
97GuiEscape:
97GuiClose:
    Gui Destroy
return

3Tab33:
Gui, 98: Add, CheckBox, x22 y6 w137 h37 vCheck76 Checked%Check76%, Учитывать в счетчике
Gui, 98: Add, GroupBox, x11 y-3 w161 h53
Gui, 98: Show, w185 h78, Admin-Binder by Notoriuz
Gui, 98: Add, Button, x10 y50 w163 h23 gSlowCom33, Сохранить
return
98GuiEscape:
98GuiClose:
    Gui Destroy
return

3Tab34:
Gui, 99: Add, CheckBox, x22 y6 w137 h37 vCheck77 Checked%Check77%, Учитывать в счетчике
Gui, 99: Add, GroupBox, x11 y-3 w161 h53
Gui, 99: Show, w185 h78, Admin-Binder by Notoriuz
Gui, 99: Add, Button, x10 y50 w163 h23 gSlowCom34, Сохранить
return
99GuiEscape:
99GuiClose:
    Gui Destroy
return

3Tab35:
Gui, 1a: Add, CheckBox, x22 y6 w137 h37 vCheck78 Checked%Check78%, Учитывать в счетчике
Gui, 1a: Add, GroupBox, x11 y-3 w161 h53
Gui, 1a: Show, w185 h78, Admin-Binder by Notoriuz
Gui, 1a: Add, Button, x10 y50 w163 h23 gSlowCom35, Сохранить
return
1aGuiEscape:
1aGuiClose:
    Gui Destroy
return

3Tab36:
Gui, 2a: Add, CheckBox, x22 y6 w137 h37 vCheck79 Checked%Check79%, Учитывать в счетчике
Gui, 2a: Add, GroupBox, x11 y-3 w161 h53
Gui, 2a: Show, w185 h78, Admin-Binder by Notoriuz
Gui, 2a: Add, Button, x10 y50 w163 h23 gSlowCom36, Сохранить
return
2aGuiEscape:
2aGuiClose:
    Gui Destroy
return

;----------------------SaveSet---------------------------------------

SaveSet1:
Gui, Submit, NoHide
IniWrite, %MyEdit1%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit1
IniWrite, %MyEdit2%, %A_WorkingDir%\setting_edit.ini., Setup, MyEdit2
IniWrite, %MyEdit3%, %A_WorkingDir%\setting_edit.ini., Setup, MyEdit3
IniWrite, %MyEdit4%, %A_WorkingDir%\setting_edit.ini., Setup, MyEdit4
IniWrite, %MyEdit5%, %A_WorkingDir%\setting_edit.ini., Setup, MyEdit5
IniWrite, %Check%, %A_WorkingDir%\setting_check.ini, Setup, Check
IniWrite, %Check31%, %A_WorkingDir%\setting_check.ini, Setup, Check31
Gosub, Prok1
Gosub, Galka1
Gui Destroy
 return

SaveSet2:
Gui, Submit, NoHide
IniWrite, %MyEdit11%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit11
IniWrite, %MyEdit12%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit12
IniWrite, %MyEdit13%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit13
IniWrite, %MyEdit14%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit14
IniWrite, %MyEdit15%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit15
IniWrite, %Check2%, %A_WorkingDir%\setting_check.ini, Setup, Check2
IniWrite, %Check32%, %A_WorkingDir%\setting_check.ini, Setup, Check32
Gosub, Prok2
Gosub, Galka2
 Gui Destroy
 return

SaveSet3:
Gui, Submit, NoHide
IniWrite, %MyEdit21%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit21
IniWrite, %MyEdit22%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit22
IniWrite, %MyEdit23%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit23
IniWrite, %MyEdit24%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit24
IniWrite, %MyEdit25%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit25
IniWrite, %Check3%, %A_WorkingDir%\setting_check.ini, Setup, Check3
IniWrite, %Check33%, %A_WorkingDir%\setting_check.ini, Setup, Check33
Gosub, Prok3
Gosub, Galka3
 Gui Destroy
 return

SaveSet4:
Gui, Submit, NoHide
IniWrite, %MyEdit31%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit31
IniWrite, %MyEdit32%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit32
IniWrite, %MyEdit33%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit33
IniWrite, %MyEdit34%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit34
IniWrite, %MyEdit35%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit35
IniWrite, %Check4%, %A_WorkingDir%\setting_check.ini, Setup, Check4
IniWrite, %Check34%, %A_WorkingDir%\setting_check.ini, Setup, Check34
Gosub, Prok4
Gosub, Galka4
 Gui Destroy
 return

SaveSet5:
Gui, Submit, NoHide
IniWrite, %MyEdit41%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit41
IniWrite, %MyEdit42%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit42
IniWrite, %MyEdit43%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit43
IniWrite, %MyEdit44%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit44
IniWrite, %MyEdit45%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit45
IniWrite, %Check5%, %A_WorkingDir%\setting_check.ini, Setup, Check5
IniWrite, %Check35%, %A_WorkingDir%\setting_check.ini, Setup, Check35
Gosub, Prok5
Gosub, Galka5
 Gui Destroy
 return

SaveSet6:
Gui, Submit, NoHide
IniWrite, %MyEdit51%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit51
IniWrite, %MyEdit52%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit52
IniWrite, %MyEdit53%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit53
IniWrite, %MyEdit54%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit54
IniWrite, %MyEdit55%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit55
IniWrite, %Check6%, %A_WorkingDir%\setting_check.ini, Setup, Check6
IniWrite, %Check36%, %A_WorkingDir%\setting_check.ini, Setup, Check36
Gosub, Prok6
Gosub, Galka6
 Gui Destroy
 return

SaveSet7:
Gui, Submit, NoHide
IniWrite, %MyEdit61%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit61
IniWrite, %MyEdit62%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit62
IniWrite, %MyEdit63%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit63
IniWrite, %MyEdit64%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit64
IniWrite, %MyEdit65%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit65
IniWrite, %Check7%, %A_WorkingDir%\setting_check.ini, Setup, Check7
IniWrite, %Check37%, %A_WorkingDir%\setting_check.ini, Setup, Check37
Gosub, Prok7
Gosub, Galka7
 Gui Destroy
 return

SaveSet8:
Gui, Submit, NoHide
IniWrite, %MyEdit71%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit71
IniWrite, %MyEdit72%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit72
IniWrite, %MyEdit73%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit73
IniWrite, %MyEdit74%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit74
IniWrite, %MyEdit75%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit75
IniWrite, %Check8%, %A_WorkingDir%\setting_check.ini, Setup, Check8
IniWrite, %Check38%, %A_WorkingDir%\setting_check.ini, Setup, Check38
Gosub, Prok8
Gosub, Galka8
 Gui Destroy
 return

SaveSet9:
Gui, Submit, NoHide
IniWrite, %MyEdit81%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit81
IniWrite, %MyEdit82%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit82
IniWrite, %MyEdit83%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit83
IniWrite, %MyEdit84%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit84
IniWrite, %MyEdit85%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit85
IniWrite, %Check9%, %A_WorkingDir%\setting_check.ini, Setup, Check9
IniWrite, %Check39%, %A_WorkingDir%\setting_check.ini, Setup, Check39
Gosub, Prok9
Gosub, Galka9
Gui Destroy
 return

SaveSet10:
Gui, Submit, NoHide
IniWrite, %MyEdit91%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit91
IniWrite, %MyEdit92%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit92
IniWrite, %MyEdit93%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit93
IniWrite, %MyEdit94%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit94
IniWrite, %MyEdit95%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit95
IniWrite, %Check10%, %A_WorkingDir%\setting_check.ini, Setup, Check10
IniWrite, %Check40%, %A_WorkingDir%\setting_check.ini, Setup, Check40
Gosub, Prok10
Gosub, Galka10
Gui Destroy
 return
;----------------------INFO---------------------------------------
info:
Gui, 17: Show, w350 h110, Admin-Binder by Notoriuz
Gui, 17: Font
Gui, 17: Font, s9 Norm, Trebuchet MS
Gui, 17: Add, Text, x62 y5 w226 h23 +0x200, Важные ссылки ты найдешь только тут
Gui, 17: Font, s9 Norm, Trebuchet MS
Gui, 17: Add, Text, x13 y39 w98 h25 +0x200 +Center, Дискорд сервер -
Gui, 17: Font, s9 Norm, Trebuchet MS
Gui, 17: Add, Link, x115 y42 w40 h23, <a href="https://discord.gg/vjgVUdEd">ссылка</a>
Gui, 17: Font, s9 Norm, Trebuchet MS
Gui, 17: Add, Text, x230 y39 w30 h25 +0x200, FAQ -
Gui, 17: Font, s9 Norm, Trebuchet MS
Gui, 17: Add, Link, x265 y42 w40 h23, <a href="https://docs.google.com/document/d/16fgl6injDQAkyl8D9tBUQyczKLDj6OXe3RrwiHujWu0/edit?usp=sharing">ссылка</a>
Gui, 17: Font, s9 Norm, Trebuchet MS
Gui, 17: Add, Text, x50 y74 w240 h25 +0x200 +Center, Дискорд разработчика - NoFunny#2002
Gui, 17: Font
Gui, 17: Add, GroupBox, x44 y-3 w260 h36
Gui, 17: Add, GroupBox, x6 y31 w160 h36
Gui, 17: Add, GroupBox, x55 y65 w230 h36
Gui, 17: Add, GroupBox, x200 y31 w140 h36
return
17GuiEscape:
17GuiClose:
    Gui Destroy
return

faqr:
Run, https://docs.google.com/document/d/16fgl6injDQAkyl8D9tBUQyczKLDj6OXe3RrwiHujWu0/edit?usp=sharing
TrayTip, FAQ, Сейчас откроется ссылка в вашем браузере!, , 16
return

;------------------ Выдача наказаний --------------------------------------------------------------------

PassAdm:
Gui, 84: Add, Edit, x16 y32 w120 h21 +Password vpassword, %password%
Gui, 84: Add, Text, x16 y8 w120 h23 +0x200 +Center, Введите пароль
Gui, 84: Add, Button, x16 y64 w120 h23 gCheckPassAdm1, Проверить
Gui, 84: Add, GroupBox, x11 y3 w132 h91

Gui, 84: Show, w150 h99
Return
84GuiEscape:
84GuiClose:
    Gui Destroy
return

CheckPassAdm1:
Gui, Submit, NoHide
IniWrite, %password%, %A_WorkingDir%\setting.ini , Setup, password
Gosub, CheckPassAdm2
Gui, 84: Destroy
return

CheckPassAdm2:
Loop, {
  if (errorlevel = 1)
return

  if (password = "delperro") {
run, %A_WorkingDir%/app/vidacha_%buildverbrow%.exe
    return
  }
 else if (password != "delperro") {
TrayTip, Warning, Пароль - %password% не верный., , 16
return
  }
}

DopGui:

Gui, 85: Add, GroupBox, x109 y5 w417 h404 +Center, Действие
Gui, 85: Add, GroupBox, x7 y5 w99 h404 +Center, Комбинация

Gui, 85: Add, Edit, x10 y24 w92 h21 vCommand21, %Command21%
Gui, 85: Add, Edit, x10 y48 w92 h21 vCommand22, %Command22%
Gui, 85: Add, Edit, x10 y72 w92 h21 vCommand23, %Command23%
Gui, 85: Add, Edit, x10 y96 w92 h21 vCommand24, %Command24%
Gui, 85: Add, Edit, x10 y120 w92 h21 vCommand25, %Command25%
Gui, 85: Add, Edit, x10 y144 w92 h21 vCommand26, %Command26%
Gui, 85: Add, Edit, x10 y168 w92 h21 vCommand27, %Command27%
Gui, 85: Add, Edit, x10 y192 w92 h21 vCommand28, %Command28%
Gui, 85: Add, Edit, x10 y216 w92 h21 vCommand29, %Command29%
Gui, 85: Add, Edit, x10 y240 w92 h21 vCommand30, %Command30%
Gui, 85: Add, Edit, x10 y264 w92 h21 vCommand31, %Command31%
Gui, 85: Add, Edit, x10 y288 w92 h21 vCommand32, %Command32%
Gui, 85: Add, Edit, x10 y312 w92 h21 vCommand33, %Command33%
Gui, 85: Add, Edit, x10 y336 w92 h21 vCommand34, %Command34%
Gui, 85: Add, Edit, x10 y360 w92 h21 vCommand35, %Command35%
Gui, 85: Add, Edit, x10 y384 w92 h21 vCommand36, %Command36%

Gui, 85: Add, Edit, x113 y24 w408 h21 vComDev21, %ComDev21%
Gui, 85: Add, Edit, x113 y48 w408 h21 vComDev22, %ComDev22%
Gui, 85: Add, Edit, x113 y72 w408 h21 vComDev23, %ComDev23%
Gui, 85: Add, Edit, x113 y96 w408 h21 vComDev24, %ComDev24%
Gui, 85: Add, Edit, x113 y120 w408 h21 vComDev25, %ComDev25%
Gui, 85: Add, Edit, x113 y144 w408 h21 vComDev26, %ComDev26%
Gui, 85: Add, Edit, x113 y192 w408 h21 vComDev27, %ComDev27%
Gui, 85: Add, Edit, x113 y240 w408 h21 vComDev28, %ComDev28%
Gui, 85: Add, Edit, x113 y216 w408 h21 vComDev29, %ComDev29%
Gui, 85: Add, Edit, x113 y168 w408 h21 vComDev30, %ComDev30%
Gui, 85: Add, Edit, x113 y264 w408 h21 vComDev31, %ComDev31%
Gui, 85: Add, Edit, x113 y360 w408 h21 vComDev32, %ComDev32%
Gui, 85: Add, Edit, x113 y336 w408 h21 vComDev33, %ComDev33%
Gui, 85: Add, Edit, x113 y312 w408 h21 vComDev34, %ComDev34%
Gui, 85: Add, Edit, x113 y288 w408 h21 vComDev35, %ComDev35%
Gui, 85: Add, Edit, x113 y384 w408 h21 vComDev36, %ComDev36%

Gui, 85: Add, Button, x528 y24 w73 h23 g3Tab21, Настроить
Gui, 85: Add, Button, x528 y72 w73 h23 g3Tab22, Настроить
Gui, 85: Add, Button, x528 y48 w73 h23 g3Tab23, Настроить
Gui, 85: Add, Button, x528 y96 w73 h23 g3Tab24, Настроить
Gui, 85: Add, Button, x528 y120 w73 h23 g3Tab25, Настроить
Gui, 85: Add, Button, x528 y144 w73 h23 g3Tab26, Настроить
Gui, 85: Add, Button, x528 y168 w73 h23 g3Tab27, Настроить
Gui, 85: Add, Button, x528 y192 w73 h23 g3Tab28, Настроить
Gui, 85: Add, Button, x528 y216 w73 h23 g3Tab29, Настроить
Gui, 85: Add, Button, x528 y240 w73 h23 g3Tab30, Настроить
Gui, 85: Add, Button, x528 y264 w73 h23 g3Tab31, Настроить
Gui, 85: Add, Button, x528 y288 w73 h23 g3Tab32, Настроить
Gui, 85: Add, Button, x528 y336 w73 h23 g3Tab33, Настроить
Gui, 85: Add, Button, x528 y312 w73 h23 g3Tab34, Настроить
Gui, 85: Add, Button, x528 y360 w73 h23 g3Tab35, Настроить
Gui, 85: Add, Button, x528 y384 w73 h23 g3Tab36, Настроить

Gui, 85: Add, Button, x528 y408 w73 h20 gDopSave, Сохранить

Gui, 85: Show, w607 h430, Дополнительные бинды.

return
85GuiEscape:
85GuiClose:
    Gui Destroy
return

DopSave:
Gosub, AllSave
Gui, 85: Destroy
return

;----------------------Сохранение + Очистка + START---------------------------------------
AllSave:
Gui, Submit, NoHide

Loop, 10
{
IniWrite, % MyHotKey%A_index%, %A_WorkingDir%\setting_1tab.ini, Setup, Bind%A_index%
IniWrite, % MySett%A_index%, %A_WorkingDir%\setting_1tab.ini, Setup, Kolvo%A_index%
IniWrite, % MyText%A_index%, %A_WorkingDir%\setting_1tab.ini, Setup, MyText%A_index%
IniWrite, % My2HotKey%A_index%, %A_WorkingDir%\setting_2tab.ini, Setup, 2Bind%A_index%
IniWrite, % My2Edit%A_index%, %A_WorkingDir%\setting_2tab.ini, Setup, 2MyText%A_index%
}

IniWrite, %Check%, %A_WorkingDir%\setting_check.ini, Setup, Check

Loop, 80
{
IniWrite, % Check%A_index%, %A_WorkingDir%\setting_check.ini, Setup, Check%A_index%
}

Loop, 36
{
IniWrite, % ComDev%A_index%, %A_WorkingDir%\setting_3tab.ini, Setup, 3Comand%A_index%
IniWrite, % Command%A_index%, %A_WorkingDir%\setting_3tab.ini, Setup, 3BindComand%A_index%
}

IniWrite, %HotLogin1%, %A_WorkingDir%\setting.ini, Setup, HotLogin1
IniWrite, %HotLogin2%, %A_WorkingDir%\setting.ini, Setup, HotLogin2
IniWrite, %HotLogin3%, %A_WorkingDir%\setting.ini, Setup, HotLogin3
IniWrite, %AutoLogin1%, %A_WorkingDir%\setting.ini, Setup, AutoLogin1
IniWrite, %password%, %A_WorkingDir%\setting.ini, Setup, password

TrayTip, Сохранение..., Данные были сохранены!, , 16
return


FullClear:
TrayTip, Проверка файлов, Ожидайте... Сейчас будут заменены все отсутствующие файлы.`nСкрипт перезагрузится автоматически., , 16
;-------------------------------------------------------------------------------------------------------------
FileRemoveDir, %A_WorkingDir%\app\gui
FileRemoveDir, %A_WorkingDir%\app

FileDelete, %A_WorkingDir%\pravilaband.ini
FileDelete, %A_WorkingDir%\pravilagos.ini
FileDelete, %A_WorkingDir%\pravilamafiy.ini
FileDelete, %A_WorkingDir%\pravilap.ini
FileDelete, %A_WorkingDir%\pravilas.ini

FileDelete, %A_WorkingDir%\app\gui\browser-osob.png
FileDelete, %A_WorkingDir%\app\vidacha_%buildverbrow%.exe

FileDelete, %A_WorkingDir%\setting_check.ini
FileDelete, %A_WorkingDir%\setting_3tab.ini
FileDelete, %A_WorkingDir%\setting_2tab.ini
FileDelete, %A_WorkingDir%\setting_1tab.ini
FileDelete, %A_WorkingDir%\setting_edit.ini
FileDelete, %A_WorkingDir%\setting.ini
HideTrayTip()
Gosub, Counter13
return

Start:
Gui, Submit, NoHide

Hotkey, %MyHotKey1%, key, on, useerrorlevel
Hotkey, %MyHotKey2%, key2, on, useerrorlevel
Hotkey, %MyHotKey3%, key3, on, useerrorlevel
Hotkey, %MyHotKey4%, key4, on, useerrorlevel
Hotkey, %MyHotKey5%, key5, on, useerrorlevel
Hotkey, %MyHotKey6%, key6, on, useerrorlevel
Hotkey, %MyHotKey7%, key7, on, useerrorlevel
Hotkey, %MyHotKey8%, key8, on, useerrorlevel
Hotkey, %MyHotKey9%, key9, on, useerrorlevel
Hotkey, %MyHotKey10%, key10, on, useerrorlevel
Hotkey, %My2HotKey1%, key11, on, useerrorlevel
Hotkey, %My2HotKey2%, key12, on, useerrorlevel
Hotkey, %My2HotKey3%, key13, on, useerrorlevel
Hotkey, %My2HotKey4%, key14, on, useerrorlevel
Hotkey, %My2HotKey5%, key15, on, useerrorlevel
Hotkey, %My2HotKey6%, key16, on, useerrorlevel
Hotkey, %My2HotKey7%, key17, on, useerrorlevel
Hotkey, %My2HotKey8%, key18, on, useerrorlevel
Hotkey, %My2HotKey9%, key19, on, useerrorlevel
Hotkey, %My2HotKey10%, key20, on, useerrorlevel
Hotkey, %HotLogin1%, key21, on, useerrorlevel
Hotkey, %HotLogin2%, key22, on, useerrorlevel
Hotkey, %HotLogin3%, key23, on, useerrorlevel
Loop, 10
{
Gosub, 2TabBox%A_index%
}


Loop, 10
{
Gosub, Prok%A_index%
}

Loop, 20
{
Gosub, Galka%A_index%
}

Loop, 36
{
Gosub, SlowCom%A_index%
}

Gosub, mouse1
Gosub, mouse2
Gosub, mouse3
Gosub, mouse4
Gosub, mouse5
Gosub, hudlub
Gosub, hudrep
Gui Hide
TrayTip Admin-Binder by Notoriuz, Я теперь спрятался тут. Нажми ПКМ чтобы развернуть.

Loop, 36
{
    if (ComDev%A_index%)
    {
        if ComDev%A_index% != ERROR)
            Hotstring(":Xo:" Command%A_index%, "ComDev" A_index)
    }
}

return

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

;--------------------REPORT COUNTER-------------------
otobrep:
return

Clear:
Counter := 0
IniWrite, %Counter%, %A_WorkingDir%\setting.ini, Setup, ReportsOld
Gosub, Counter13
return

Counter12:
    GuiControlGet, %Counter%
    GuiControlGet, %Counter2%
    Counter := Counter + 1
    Counter2 := Counter2 + 1
    GuiControl,, Counter, %Counter%
    GuiControl,, Counter2, %Counter2%
IniWrite, %Counter%, %A_WorkingDir%\setting.ini, Setup, ReportsOld
Gosub, hudlub

return

hudlub:

if hudih1 = 100
{
Gui, 3a: +LastFound +AlwaysOnTop -Caption +ToolWindow  ; +ToolWindow avoids a taskbar button and an alt-tab menu item.
Gui, 3a: Color, cWhite
Gui, 3a: Font, Intro
Gui, 3a: Font, s7 ; Set a large font size (32-point).
Gui, 3a: Font, q1
Gui, 3a: Font, w700
Gui, 3a: Add, Text, x8 y10 cRed, REPS: %Counter%
Gui, 3a: Add, Text, x8 y30 cRed, SESSION: %Counter2%
Gui, 3a: Show, x1750 y150 NoActivate
WinSet, TransColor, %CustomColor% 140
}
else
{
}
return

Counter13:
reload
return


hudrep:
if hudih2 = 100
{
Gui, 3b: +LastFound +AlwaysOnTop -Caption +ToolWindow  ; +ToolWindow avoids a taskbar button and an alt-tab menu item.
Gui, 3b: Color, cWhite
Gui, 3b: Font, Intro
Gui, 3b: Font, s7 ; Set a large font size (32-point).
Gui, 3b: Font, q1
Gui, 3b: Font, w700

Gui, 3b: Add, Text, x12 y10 cRed, %MyHotKey1% %MyText1%
Gui, 3b: Add, Text, x12 y30 cRed, %MyHotKey2% %MyText2%
Gui, 3b: Add, Text, x12 y50 cRed, %MyHotKey3% %MyText3%
Gui, 3b: Add, Text, x12 y70 cRed, %MyHotKey4% %MyText4%
Gui, 3b: Add, Text, x12 y90 cRed, %MyHotKey5% %MyText5%
Gui, 3b: Add, Text, x12 y110 cRed, %MyHotKey6% %MyText6%
Gui, 3b: Add, Text, x12 y130 cRed, %MyHotKey7% %MyText7%
Gui, 3b: Add, Text, x12 y150 cRed, %MyHotKey8% %MyText8%
Gui, 3b: Add, Text, x12 y170 cRed, %MyHotKey9% %MyText9%
Gui, 3b: Add, Text, x12 y190 cRed, %MyHotKey10% %MyText10%

Gui, 3b: Add, Text, x12 y210 cRed, %My2Hotkey1% %My2Edit1%
Gui, 3b: Add, Text, x12 y230 cRed, %My2Hotkey2% %My2Edit2%
Gui, 3b: Add, Text, x12 y250 cRed, %My2Hotkey3% %My2Edit3%
Gui, 3b: Add, Text, x12 y270 cRed, %My2Hotkey4% %My2Edit4%
Gui, 3b: Add, Text, x12 y290 cRed, %My2Hotkey5% %My2Edit5%
Gui, 3b: Add, Text, x12 y310 cRed, %My2Hotkey6% %My2Edit6%
Gui, 3b: Add, Text, x12 y330 cRed, %My2Hotkey7% %My2Edit7%
Gui, 3b: Add, Text, x12 y350 cRed, %My2Hotkey8% %My2Edit8%
Gui, 3b: Add, Text, x12 y370 cRed, %My2Hotkey9% %My2Edit9%
Gui, 3b: Add, Text, x12 y380 cRed, %My2Hotkey10% %My2Edit10%

Gui, 3b: Add, Text, x12 y410 cRed, %Command1% %ComDev1%
Gui, 3b: Add, Text, x12 y430 cRed, %Command2% %ComDev2%
Gui, 3b: Add, Text, x12 y450 cRed, %Command3% %ComDev3%
Gui, 3b: Add, Text, x12 y470 cRed, %Command4% %ComDev4%
Gui, 3b: Add, Text, x12 y490 cRed, %Command5% %ComDev5%
Gui, 3b: Add, Text, x12 y510 cRed, %Command6% %ComDev6%
Gui, 3b: Add, Text, x12 y530 cRed, %Command7% %ComDev7%
Gui, 3b: Add, Text, x12 y550 cRed, %Command8% %ComDev8%
Gui, 3b: Add, Text, x12 y570 cRed, %Command9% %ComDev9%
Gui, 3b: Add, Text, x12 y590 cRed, %Command10% %ComDev10%
;Gui, 3b: Add, Text, x12 y610 cRed, %Command11% %ComDev11%
;Gui, 3b: Add, Text, x12 y630 cRed, %Command12% %ComDev12%
;Gui, 3b: Add, Text, x12 y650 cRed, %Command13% %ComDev13%
;Gui, 3b: Add, Text, x12 y670 cRed, %Command14% %ComDev14%
;Gui, 3b: Add, Text, x12 y690 cRed, %Command15% %ComDev15%
;Gui, 3b: Add, Text, x12 y710 cRed, %Command16% %ComDev16%
;Gui, 3b: Add, Text, x12 y730 cRed, %Command17% %ComDev17%
;Gui, 3b: Add, Text, x12 y750 cRed, %Command18% %ComDev18%
;Gui, 3b: Add, Text, x12 y770 cRed, %Command19% %ComDev19%
;Gui, 3b: Add, Text, x12 y790 cRed, %Command20% %ComDev20%
Gui, 3b: Show, x1750 y198 NoActivate
WinSet, TransColor, %CustomColor% 140
}
else
{
}
return
;-------------ОСНОВНЫЕ БИНДЫ------------
key:
Gosub, cProk1
Word1 = %MyEdit1%
Word2 = %MyEdit2%
Word3 = %MyEdit3%
Word4 = %MyEdit4%
Word5 = %MyEdit5%

Min := 1
Max := MySett1

      RandWords := ""
   Loop 1
   {
      Random N, %Min%, %Max%
      RandWords .= Word%N%
   }
SendMessage, 0x50,, 0x4190419,, A
   Send %RandWords%
Gosub, cGalka1
Return

key2:
Gosub, cProk2
Word1 = %MyEdit11%
Word2 = %MyEdit12%
Word3 = %MyEdit13%
Word4 = %MyEdit14%
Word5 = %MyEdit15%

Min := 1
Max := MySett2

      RandWords2 := ""
   Loop 1
   {
      Random N, %Min%, %Max%
      RandWords2 .= Word%N%
   }
SendMessage, 0x50,, 0x4190419,, A
  Sendinput, %RandWords2%
Gosub, cGalka2
Return

key3:
Gosub, cProk3
Word1 = %MyEdit21%
Word2 = %MyEdit22%
Word3 = %MyEdit23%
Word4 = %MyEdit24%
Word5 = %MyEdit25%

Min := 1
Max := MySett3

      RandWords3 := ""
   Loop 1
   {
      Random N, %Min%, %Max%
      RandWords3 .= Word%N%
   }
SendMessage, 0x50,, 0x4190419,, A
  Sendinput, %RandWords3%
Gosub, cGalka3
Return
return

key4:
Gosub, cProk4
Word1 = %MyEdit31%
Word2 = %MyEdit32%
Word3 = %MyEdit33%
Word4 = %MyEdit34%
Word5 = %MyEdit35%

Min := 1
Max := MySett4

      RandWords4 := ""
   Loop 1
   {
      Random N, %Min%, %Max%
      RandWords4 .= Word%N%
   }
SendMessage, 0x50,, 0x4190419,, A
  Sendinput, %RandWords4%
Gosub, cGalka4
Return

key5:
Gosub, cProk5
Word1 = %MyEdit41%
Word2 = %MyEdit42%
Word3 = %MyEdit43%
Word4 = %MyEdit44%
Word5 = %MyEdit45%

Min := 1
Max := MySett5

      RandWords5 := ""
   Loop 1
   {
      Random N, %Min%, %Max%
      RandWords5 .= Word%N%
   }
SendMessage, 0x50,, 0x4190419,, A
  Sendinput, %RandWords5%
Gosub, cGalka5
Return

key6:
Gosub, cProk6
Word1 = %MyEdit51%
Word2 = %MyEdit52%
Word3 = %MyEdit53%
Word4 = %MyEdit54%
Word5 = %MyEdit55%

Min := 1
Max := MySett6

      RandWords6 := ""
   Loop 1
   {
      Random N, %Min%, %Max%
      RandWords6 .= Word%N%
   }
SendMessage, 0x50,, 0x4190419,, A
  Sendinput, %RandWords6%
Gosub, cGalka6
Return

key7:
Gosub, cProk7
Word1 = %MyEdit61%
Word2 = %MyEdit62%
Word3 = %MyEdit63%
Word4 = %MyEdit64%
Word5 = %MyEdit65%

Min := 1
Max := MySett7

      RandWords7 := ""
   Loop 1
   {
      Random N, %Min%, %Max%
      RandWords7 .= Word%N%
   }
SendMessage, 0x50,, 0x4190419,, A
  Sendinput, %RandWords7%
Gosub, cGalka7
Return

key8:
Gosub, cProk8
Word1 = %MyEdit71%
Word2 = %MyEdit72%
Word3 = %MyEdit73%
Word4 = %MyEdit74%
Word5 = %MyEdit75%

Min := 1
Max := MySett8

      RandWords8 := ""
   Loop 1
   {
      Random N, %Min%, %Max%
      RandWords8 .= Word%N%
   }
SendMessage, 0x50,, 0x4190419,, A
  Sendinput, %RandWords8%
Gosub, cGalka8
Return

key9:
Gosub, cProk9
Word1 = %MyEdit81%
Word2 = %MyEdit82%
Word3 = %MyEdit83%
Word4 = %MyEdit84%
Word5 = %MyEdit85%

Min := 1
Max := MySett9

      RandWords9 := ""
   Loop 1
   {
      Random N, %Min%, %Max%
      RandWords9 .= Word%N%
   }
SendMessage, 0x50,, 0x4190419,, A
  Sendinput, %RandWords9%
Gosub, cGalka9
Return

key10:
Gosub, cProk10
Word1 = %MyEdit91%
Word2 = %MyEdit92%
Word3 = %MyEdit93%
Word4 = %MyEdit94%
Word5 = %MyEdit95%

Min := 1
Max := MySett10

      RandWords10 := ""
   Loop 1
   {
      Random N, %Min%, %Max%
      RandWords10 .= Word%N%
   }
SendMessage, 0x50,, 0x4190419,, A
  Sendinput, %RandWords10%
Gosub, cGalka10
Return

;-----------------------------------------------tab2--------------------------

key11:
Gosub, c2TabBox1
SendMessage, 0x50,, 0x4190419,, A
Sendinput, %My2Edit1%
Gosub, cGalka11
return

key12:
Gosub, c2TabBox2
SendMessage, 0x50,, 0x4190419,, A
Sendinput, %My2Edit2%
Gosub, cGalka12
return

key13:
Gosub, c2TabBox3
SendMessage, 0x50,, 0x4190419,, A
Sendinput, %My2Edit3%
Gosub, cGalka13
return

key14:
Gosub, c2TabBox4
SendMessage, 0x50,, 0x4190419,, A
Sendinput, %My2Edit4%
Gosub, cGalka14
return

key15:
Gosub, c2TabBox5
SendMessage, 0x50,, 0x4190419,, A
Sendinput, %My2Edit5%
Gosub, cGalka15
return

key16:
Gosub, c2TabBox6
SendMessage, 0x50,, 0x4190419,, A
Sendinput, %My2Edit6%
Gosub, cGalka16
return

key17:
Gosub, c2TabBox7
SendMessage, 0x50,, 0x4190419,, A
Sendinput, %My2Edit7%
Gosub, cGalka17
return

key18:
Gosub, c2TabBox8
SendMessage, 0x50,, 0x4190419,, A
Sendinput, %My2Edit8%
Gosub, cGalka18
return

key19:
Gosub, c2TabBox9
SendMessage, 0x50,, 0x4190419,, A
Sendinput, %My2Edit9%
Gosub, cGalka19
return

key20:
Gosub, c2TabBox10
SendMessage, 0x50,, 0x4190419,, A
Sendinput, %My2Edit10%
Gosub, cGalka20
return

key21:
SendMessage, 0x50,, 0x4190419,, A
sleep 500
Sendinput, {F6}
sleep 500
Sendinput, {F6}/alogin13{enter}
sleep 500
Sendinput, {Sc029}
sleep 1000
Sendinput, %AutoLogin1%{enter}
sleep 1000
Sendinput, hp{enter}
sleep 1000
Sendinput, {Sc029}
sleep 500
Sendinput, {F4}
Return

key22:
Sendinput, {Enter}
Gosub, Counter12
Return

key23:
Gui, Submit, NoHide
if openbr > 0
{
Gosub, sifinder
openbr = 0
}
else
{
Gui 5b: Destroy
openbr = 1
}
return

;----------------vCheck--------------------
Prok1:
Gui, Submit, NoHide
if Check > 0
{
ac := 100
}
else
{
ac := 0
}
return

cProk1:
if ac = 100
{
Gosub, Counter12
}
else
{
}
return

;----------------vCheck2--------------------

Prok2:
Gui, Submit, NoHide
if Check2 > 0
{
ab := 100
}
else
{
ab := 0
}
return

cProk2:
if ab = 100
{
Gosub, Counter12
}
else
{
}
return

;----------------vCheck3--------------------

Prok3:
Gui, Submit, NoHide
if Check3 > 0
{
ad := 100
}
else
{
ad := 0
}
return

cProk3:
if ad = 100
{
Gosub, Counter12
}
else
{
}
return

;----------------vCheck4--------------------

Prok4:
Gui, Submit, NoHide
if Check4 > 0
{
afe := 100
}
else
{
afe := 0
}
return

cProk4:
if afe = 100
{
Gosub, Counter12
}
else
{
}
return

;----------------vCheck5--------------------

Prok5:
Gui, Submit, NoHide
if Check5 > 0
{
agd := 100
}
else
{
agd := 0
}
return

cProk5:
if agd = 100
{
Gosub, Counter12
}
else
{
}
return

;----------------vCheck6--------------------

Prok6:
Gui, Submit, NoHide
if Check6 > 0
{
ajv := 100
}
else
{
ajv := 0
}
return

cProk6:
if ajv = 100
{
Gosub, Counter12
}
else
{
}
return

;----------------vCheck7--------------------

Prok7:
Gui, Submit, NoHide
if Check7 > 0
{
aje := 100
}
else
{
aje := 0
}
return

cProk7:
if aje = 100
{
Gosub, Counter12
}
else
{
}
return

;----------------vCheck8--------------------

Prok8:
Gui, Submit, NoHide
if Check8 > 0
{
ajh := 100
}
else
{
ajh := 0
}
return

cProk8:
if ajh = 100
{
Gosub, Counter12
}
else
{
}
return

;----------------vCheck9--------------------

Prok9:
Gui, Submit, NoHide
if Check9 > 0
{
ajj := 100
}
else
{
ajj := 0
}
return

cProk9:
if ajj = 100
{
Gosub, Counter12
}
else
{
}
return

;----------------vCheck10--------------------

Prok10:
Gui, Submit, NoHide
if Check10 > 0
{
ajq := 100
}
else
{
ajq := 0
}
return

cProk10:
if ajq = 100
{
Gosub, Counter12
}
else
{
}
return

;----------------2tabguicheckbox1--------------------

2TabBox1:
Gui, Submit, NoHide
if Check11 > 0
{
gvw := 100
}
else
{
gvw := 0
}
IniWrite, %Check11%, %A_WorkingDir%\setting_check.ini, Setup, Check11
IniWrite, %Check41%, %A_WorkingDir%\setting_check.ini, Setup, Check41
Gui, 53: Destroy
return

c2TabBox1:
if gvw = 100
{
Gosub, Counter12
}
else
{
}
return

;----------------2tabguicheckbox2--------------------

2TabBox2:
Gui, Submit, NoHide
if Check12 > 0
{
gve := 100
}
else
{
gve := 0
}
IniWrite, %Check12%, %A_WorkingDir%\setting_check.ini, Setup, Check12
IniWrite, %Check42%, %A_WorkingDir%\setting_check.ini, Setup, Check42
Gui, 54: Destroy
return

c2TabBox2:
if gve = 100
{
Gosub, Counter12
}
else
{
}
return

;----------------2tabguicheckbox3--------------------

2TabBox3:
Gui, Submit, NoHide
if Check13 > 0
{
gvq := 100
}
else
{
gvq := 0
}
IniWrite, %Check13%, %A_WorkingDir%\setting_check.ini, Setup, Check13
IniWrite, %Check43%, %A_WorkingDir%\setting_check.ini, Setup, Check43
Gui, 55: Destroy
return

c2TabBox3:
if gvq = 100
{
Gosub, Counter12
}
else
{
}
return

;----------------2tabguicheckbox4--------------------

2TabBox4:
Gui, Submit, NoHide
if Check14 > 0
{
gpl := 100
}
else
{
gpl := 0
}
IniWrite, %Check14%, %A_WorkingDir%\setting_check.ini, Setup, Check14
IniWrite, %Check44%, %A_WorkingDir%\setting_check.ini, Setup, Check44
Gui, 56: Destroy
return

c2TabBox4:
if gpl = 100
{
Gosub, Counter12
}
else
{
}
return

;----------------2tabguicheckbox5--------------------

2TabBox5:
Gui, Submit, NoHide
if Check15 > 0
{
gpc := 100
}
else
{
gpc := 0
}
IniWrite, %Check15%, %A_WorkingDir%\setting_check.ini, Setup, Check15
IniWrite, %Check45%, %A_WorkingDir%\setting_check.ini, Setup, Check45
Gui, 57: Destroy
return

c2TabBox5:
if gpc = 100
{
Gosub, Counter12
}
else
{
}
return

;----------------2tabguicheckbox6--------------------

2TabBox6:
Gui, Submit, NoHide
if Check16 > 0
{
gpzx := 100
}
else
{
gpzx := 0
}
IniWrite, %Check16%, %A_WorkingDir%\setting_check.ini, Setup, Check16
IniWrite, %Check46%, %A_WorkingDir%\setting_check.ini, Setup, Check46
Gui, 58: Destroy
return

c2TabBox6:
if gpzx = 100
{
Gosub, Counter12
}
else
{
}
return

;----------------2tabguicheckbox7--------------------

2TabBox7:
Gui, Submit, NoHide
if Check17 > 0
{
pzx := 100
}
else
{
pzx := 0
}
IniWrite, %Check17%, %A_WorkingDir%\setting_check.ini, Setup, Check17
IniWrite, %Check47%, %A_WorkingDir%\setting_check.ini, Setup, Check47
Gui, 59: Destroy
return

c2TabBox7:
if pzx = 100
{
Gosub, Counter12
}
else
{
}
return

;----------------2tabguicheckbox8--------------------

2TabBox8:
Gui, Submit, NoHide
if Check18 > 0
{
pzg := 100
}
else
{
pzg := 0
}
IniWrite, %Check18%, %A_WorkingDir%\setting_check.ini, Setup, Check18
IniWrite, %Check48%, %A_WorkingDir%\setting_check.ini, Setup, Check48
Gui, 60: Destroy
return

c2TabBox8:
if pzg = 100
{
Gosub, Counter12
}
else
{
}
return

;----------------2tabguicheckbox9--------------------

2TabBox9:
Gui, Submit, NoHide
if Check19 > 0
{
pzq := 100
}
else
{
pzq := 0
}
IniWrite, %Check19%, %A_WorkingDir%\setting_check.ini, Setup, Check19
IniWrite, %Check49%, %A_WorkingDir%\setting_check.ini, Setup, Check49
Gui, 61: Destroy
return

c2TabBox9:
if pzq = 100
{
Gosub, Counter12
}
else
{
}
return

;----------------2tabguicheckbox10--------------------

2TabBox10:
Gui, Submit, NoHide
if Check20 > 0
{
pz := 100
}
else
{
pz := 0
}
IniWrite, %Check20%, %A_WorkingDir%\setting_check.ini, Setup, Check20
IniWrite, %Check50%, %A_WorkingDir%\setting_check.ini, Setup, Check50
Gui, 62: Destroy
return

c2TabBox10:
if pz = 100
{
Gosub, Counter12
}
else
{
}
return

;----------------3TABGUI-Inter1--------------------

SlowCom1:
Gui, Submit, NoHide
if Check21 > 0
{
hg1 := 100
}
else
{
hg1 := 0
}
IniWrite, %Check21%, %A_WorkingDir%\setting_check.ini, Setup, Check21
Gui, 63: Destroy
return

сSlowCom1:
if hg1 = 100
{
Gosub, Counter12
}
else
{
}
return

;-------------------------

SlowCom2:
Gui, Submit, NoHide
if Check22 > 0
{
hbg1 := 100
}
else
{
hbg1 := 0
}
IniWrite, %Check22%, %A_WorkingDir%\setting_check.ini, Setup, Check22
Gui, 64: Destroy
return

сSlowCom2:
if hbg1 = 100
{
Gosub, Counter12
}
else
{
}
return

;-------------------------

SlowCom3:
Gui, Submit, NoHide
if Check23 > 0
{
gf1 := 100
}
else
{
gf1 := 0
}
IniWrite, %Check23%, %A_WorkingDir%\setting_check.ini, Setup, Check23
Gui, 65: Destroy
return

сSlowCom3:
if gf1 = 100
{
Gosub, Counter12
}
else
{
}
return

;-------------------------

SlowCom4:
Gui, Submit, NoHide
if Check24 > 0
{
bv1 := 100
}
else
{
bv1 := 0
}
IniWrite, %Check24%, %A_WorkingDir%\setting_check.ini, Setup, Check24
Gui, 66: Destroy
return

сSlowCom4:
if bv1 = 100
{
Gosub, Counter12
}
else
{
}
return

;-------------------------

SlowCom5:
Gui, Submit, NoHide
if Check25 > 0
{
bgh1 := 100
}
else
{
bgh1 := 0
}
IniWrite, %Check25%, %A_WorkingDir%\setting_check.ini, Setup, Check25
Gui, 67: Destroy
return

сSlowCom5:
if bgh1 = 100
{
Gosub, Counter12
}
else
{
}
return

;-------------------------

SlowCom6:
Gui, Submit, NoHide
if Check26 > 0
{
bgq11 := 100
}
else
{
bgq11 := 0
}
IniWrite, %Check26%, %A_WorkingDir%\setting_check.ini, Setup, Check26
Gui, 68: Destroy
return

сSlowCom6:
if bgq11 = 100
{
Gosub, Counter12
}
else
{
}
return

;-------------------------

SlowCom7:
Gui, Submit, NoHide
if Check27 > 0
{
hgx1 := 100
}
else
{
hgx1 := 0
}
IniWrite, %Check27%, %A_WorkingDir%\setting_check.ini, Setup, Check27
Gui, 69: Destroy
return

сSlowCom7:
if hgx1 = 100
{
Gosub, Counter12
}
else
{
}
return

;-------------------------

SlowCom8:
Gui, Submit, NoHide
if Check28 > 0
{
jhr1 := 100
}
else
{
jhr1 := 0
}
IniWrite, %Check28%, %A_WorkingDir%\setting_check.ini, Setup, Check28
Gui, 70: Destroy
return

сSlowCom8:
if jhr1 = 100
{
Gosub, Counter12
}
else
{
}
return

;-------------------------

SlowCom9:
Gui, Submit, NoHide
if Check29 > 0
{
gfg4 := 100
}
else
{
gfg4 := 0
}
IniWrite, %Check29%, %A_WorkingDir%\setting_check.ini, Setup, Check29
Gui, 71: Destroy
return

сSlowCom9:
if gfg4 = 100
{
Gosub, Counter12
}
else
{
}
return

;-------------------------

SlowCom10:
Gui, Submit, NoHide
if Check30 > 0
{
gfgnbv1 := 100
}
else
{
gfgnbv1 := 0
}
IniWrite, %Check30%, %A_WorkingDir%\setting_check.ini, Setup, Check30
Gui, 72: Destroy
return

сSlowCom10:
if gfgnbv1 = 100
{
Gosub, Counter12
}
else
{
}
return

;-------------------------

SlowCom11:
Gui, Submit, NoHide
if Check54 > 0
{
gbvqc1 := 100
}
else
{
gbvqc1 := 0
}
IniWrite, %Check54%, %A_WorkingDir%\setting_check.ini, Setup, Check54
Gui, 73: Destroy
return

сSlowCom11:
if gbvqc1 = 100
{
Gosub, Counter12
}
else
{
}
return

;-------------------------

SlowCom12:
Gui, Submit, NoHide
if Check55 > 0
{
gbs11 := 100
}
else
{
gbs11 := 0
}
IniWrite, %Check55%, %A_WorkingDir%\setting_check.ini, Setup, Check55
Gui, 74: Destroy
return

сSlowCom12:
if gbs11 = 100
{
Gosub, Counter12
}
else
{
}
return

;-------------------------

SlowCom13:
Gui, Submit, NoHide
if Check56 > 0
{
gbs12 := 100
}
else
{
gbs12 := 0
}
IniWrite, %Check56%, %A_WorkingDir%\setting_check.ini, Setup, Check56
Gui, 75: Destroy
return

сSlowCom13:
if gbs12 = 100
{
Gosub, Counter12
}
else
{
}
return

;-------------------------

SlowCom14:
Gui, Submit, NoHide
if Check57 > 0
{
gbs13 := 100
}
else
{
gbs13 := 0
}
IniWrite, %Check57%, %A_WorkingDir%\setting_check.ini, Setup, Check57
Gui, 76: Destroy
return

сSlowCom14:
if gbs13 = 100
{
Gosub, Counter12
}
else
{
}
return

;-------------------------

SlowCom15:
Gui, Submit, NoHide
if Check58 > 0
{
gbs14 := 100
}
else
{
gbs14 := 0
}
IniWrite, %Check58%, %A_WorkingDir%\setting_check.ini, Setup, Check58
Gui, 77: Destroy
return

сSlowCom15:
if gbs14 = 100
{
Gosub, Counter12
}
else
{
}
return

;-------------------------

SlowCom16:
Gui, Submit, NoHide
if Check59 > 0
{
gbs15 := 100
}
else
{
gbs15 := 0
}
IniWrite, %Check59%, %A_WorkingDir%\setting_check.ini, Setup, Check59
Gui, 78: Destroy
return

сSlowCom16:
if gbs15 = 100
{
Gosub, Counter12
}
else
{
}
return

;-------------------------

SlowCom17:
Gui, Submit, NoHide
if Check60 > 0
{
gbs16 := 100
}
else
{
gbs16 := 0
}
IniWrite, %Check60%, %A_WorkingDir%\setting_check.ini, Setup, Check60
Gui, 79: Destroy
return

сSlowCom17:
if gbs16 = 100
{
Gosub, Counter12
}
else
{
}
return

;-------------------------

SlowCom18:
Gui, Submit, NoHide
if Check61 > 0
{
gbs17 := 100
}
else
{
gbs17 := 0
}
IniWrite, %Check61%, %A_WorkingDir%\setting_check.ini, Setup, Check61
Gui, 80: Destroy
return

сSlowCom18:
if gbs17 = 100
{
Gosub, Counter12
}
else
{
}
return

;-------------------------

SlowCom19:
Gui, Submit, NoHide
if Check62 > 0
{
gbs18 := 100
}
else
{
gbs18 := 0
}
IniWrite, %Check62%, %A_WorkingDir%\setting_check.ini, Setup, Check62
Gui, 81: Destroy
return

сSlowCom19:
if gbs18 = 100
{
Gosub, Counter12
}
else
{
}
return

;-------------------------

SlowCom20:
Gui, Submit, NoHide
if Check63 > 0
{
gbs19 := 100
}
else
{
gbs19 := 0
}
IniWrite, %Check63%, %A_WorkingDir%\setting_check.ini, Setup, Check63
Gui, 82: Destroy
return

сSlowCom20:
if gbs19 = 100
{
Gosub, Counter12
}
else
{
}
return

;-------------------------

SlowCom21:
Gui, Submit, NoHide
if Check64 > 0
{
bang21 := 100
}
else
{
bang21 := 0
}
IniWrite, %Check64%, %A_WorkingDir%\setting_check.ini, Setup, Check64
Gui, 86: Destroy
return

сSlowCom21:
if bang21 = 100
{
Gosub, Counter12
}
else
{
}
return

;-------------------------

SlowCom22:
Gui, Submit, NoHide
if Check65 > 0
{
bang22 := 100
}
else
{
bang22 := 0
}
IniWrite, %Check65%, %A_WorkingDir%\setting_check.ini, Setup, Check65
Gui, 87: Destroy
return

сSlowCom22:
if bang22 = 100
{
Gosub, Counter12
}
else
{
}
return

;-------------------------

SlowCom23:
Gui, Submit, NoHide
if Check66 > 0
{
bang23 := 100
}
else
{
bang23 := 0
}
IniWrite, %Check66%, %A_WorkingDir%\setting_check.ini, Setup, Check66
Gui, 88: Destroy
return

сSlowCom23:
if bang23 = 100
{
Gosub, Counter12
}
else
{
}
return

;-------------------------

SlowCom24:
Gui, Submit, NoHide
if Check67 > 0
{
bang24 := 100
}
else
{
bang24 := 0
}
IniWrite, %Check67%, %A_WorkingDir%\setting_check.ini, Setup, Check67
Gui, 89: Destroy
return

сSlowCom24:
if bang24 = 100
{
Gosub, Counter12
}
else
{
}
return

;-------------------------

SlowCom25:
Gui, Submit, NoHide
if Check68 > 0
{
bang25 := 100
}
else
{
bang25 := 0
}
IniWrite, %Check68%, %A_WorkingDir%\setting_check.ini, Setup, Check68
Gui, 90: Destroy
return

сSlowCom25:
if bang25 = 100
{
Gosub, Counter12
}
else
{
}
return

;-------------------------

SlowCom26:
Gui, Submit, NoHide
if Check69 > 0
{
bang26 := 100
}
else
{
bang26 := 0
}
IniWrite, %Check69%, %A_WorkingDir%\setting_check.ini, Setup, Check69
Gui, 91: Destroy
return

сSlowCom26:
if bang26= 100
{
Gosub, Counter12
}
else
{
}
return

;-------------------------

SlowCom27:
Gui, Submit, NoHide
if Check70 > 0
{
bang27 := 100
}
else
{
bang27 := 0
}
IniWrite, %Check70%, %A_WorkingDir%\setting_check.ini, Setup, Check70
Gui, 92: Destroy
return

сSlowCom27:
if bang27 = 100
{
Gosub, Counter12
}
else
{
}
return

;-------------------------

SlowCom28:
Gui, Submit, NoHide
if Check71 > 0
{
bang28 := 100
}
else
{
bang28 := 0
}
IniWrite, %Check71%, %A_WorkingDir%\setting_check.ini, Setup, Check71
Gui, 93: Destroy
return

сSlowCom28:
if bang28 = 100
{
Gosub, Counter12
}
else
{
}
return

;-------------------------

SlowCom29:
Gui, Submit, NoHide
if Check72 > 0
{
bang29 := 100
}
else
{
bang29 := 0
}
IniWrite, %Check72%, %A_WorkingDir%\setting_check.ini, Setup, Check72
Gui, 94: Destroy
return

сSlowCom29:
if bang29 = 100
{
Gosub, Counter12
}
else
{
}
return

;-------------------------

SlowCom30:
Gui, Submit, NoHide
if Check73 > 0
{
bang30 := 100
}
else
{
bang30 := 0
}
IniWrite, %Check73%, %A_WorkingDir%\setting_check.ini, Setup, Check73
Gui, 95: Destroy
return

сSlowCom30:
if bang30 = 100
{
Gosub, Counter12
}
else
{
}
return

;-------------------------

SlowCom31:
Gui, Submit, NoHide
if Check74 > 0
{
bang31 := 100
}
else
{
bang31 := 0
}
IniWrite, %Check74%, %A_WorkingDir%\setting_check.ini, Setup, Check74
Gui, 96: Destroy
return

сSlowCom31:
if bang31 = 100
{
Gosub, Counter12
}
else
{
}
return

;-------------------------

SlowCom32:
Gui, Submit, NoHide
if Check75 > 0
{
bang32 := 100
}
else
{
bang32 := 0
}
IniWrite, %Check75%, %A_WorkingDir%\setting_check.ini, Setup, Check75
Gui, 97: Destroy
return

сSlowCom32:
if bang32 = 100
{
Gosub, Counter12
}
else
{
}
return

;-------------------------

SlowCom33:
Gui, Submit, NoHide
if Check76 > 0
{
bang33 := 100
}
else
{
bang33 := 0
}
IniWrite, %Check76%, %A_WorkingDir%\setting_check.ini, Setup, Check76
Gui, 98: Destroy
return

сSlowCom33:
if bang33 = 100
{
Gosub, Counter12
}
else
{
}
return

;-------------------------

SlowCom34:
Gui, Submit, NoHide
if Check77 > 0
{
bang34 := 100
}
else
{
bang34 := 0
}
IniWrite, %Check77%, %A_WorkingDir%\setting_check.ini, Setup, Check77
Gui, 99: Destroy
return

сSlowCom34:
if bang34 = 100
{
Gosub, Counter12
}
else
{
}
return

;-------------------------

SlowCom35:
Gui, Submit, NoHide
if Check78 > 0
{
bang35 := 100
}
else
{
bang35 := 0
}
IniWrite, %Check78%, %A_WorkingDir%\setting_check.ini, Setup, Check78
Gui, 1a: Destroy
return

сSlowCom35:
if bang35 = 100
{
Gosub, Counter12
}
else
{
}
return

;-------------------------

SlowCom36:
Gui, Submit, NoHide
if Check79 > 0
{
bang36 := 100
}
else
{
bang36 := 0
}
IniWrite, %Check79%, %A_WorkingDir%\setting_check.ini, Setup, Check79
Gui, 2a: Destroy
return

сSlowCom36:
if bang36 = 100
{
Gosub, Counter12
}
else
{
}
return



;-------------ENTER/SPACE 1--------------
Galka1:
Gui, Submit, NoHide
if Check31 > 0
{
hjh := 100
}
else
{
hjh := 0
}
return

cGalka1:
if hjh = 100
{
SendInput {Enter}
}
else
{
SendInput {Space}
}
return
;-------------ENTER/SPACE 2--------------
Galka2:
Gui, Submit, NoHide
if Check32 > 0
{
hjg := 100
}
else
{
hjg := 0
}
return

cGalka2:
if hjg = 100
{
SendInput {Enter}
}
else
{
SendInput {Space}
}
return

;-------------ENTER/SPACE 3--------------

Galka3:
Gui, Submit, NoHide
if Check33 > 0
{
hjgvce := 100
}
else
{
hjgvce := 0
}
return

cGalka3:
if hjgvce = 100
{
SendInput {Enter}
}
else
{
SendInput {Space}
}
return

;-------------ENTER/SPACE 4--------------

Galka4:
Gui, Submit, NoHide
if Check34 > 0
{
hjgvcb := 100
}
else
{
hjgvcb := 0
}
return

cGalka4:
if hjgvcb = 100
{
SendInput {Enter}
}
else
{
SendInput {Space}
}
return

;-------------ENTER/SPACE 5--------------

Galka5:
Gui, Submit, NoHide
if Check35 > 0
{
hjgvc := 100
}
else
{
hjgvc := 0
}
return

cGalka5:
if hjgvc = 100
{
SendInput {Enter}
}
else
{
SendInput {Space}
}
return

;-------------ENTER/SPACE 6--------------

Galka6:
Gui, Submit, NoHide
if Check36 > 0
{
hjny := 100
}
else
{
hjny := 0
}
return

cGalka6:
if hjny = 100
{
SendInput {Enter}
}
else
{
SendInput {Space}
}
return

;-------------ENTER/SPACE 7--------------

Galka7:
Gui, Submit, NoHide
if Check37 > 0
{
hjnb := 100
}
else
{
hjnb := 0
}
return

cGalka7:
if hjnb = 100
{
SendInput {Enter}
}
else
{
SendInput {Space}
}
return

;-------------ENTER/SPACE 8--------------

Galka8:
Gui, Submit, NoHide
if Check38 > 0
{
hjngg := 100
}
else
{
hjngg := 0
}
return

cGalka8:
if hjngg = 100
{
SendInput {Enter}
}
else
{
SendInput {Space}
}
return

;-------------ENTER/SPACE 9--------------

Galka9:
Gui, Submit, NoHide
if Check39 > 0
{
hjng := 100
}
else
{
hjng := 0
}
return

cGalka9:
if hjng = 100
{
SendInput {Enter}
}
else
{
SendInput {Space}
}
return

;-------------ENTER/SPACE 10--------------

Galka10:
Gui, Submit, NoHide
if Check40 > 0
{
hjn := 100
}
else
{
hjn := 0
}
return

cGalka10:
if hjn = 100
{
SendInput {Enter}
}
else
{
SendInput {Space}
}
return

;-------------ENTER/SPACE 2 1--------------

Galka11:
Gui, Submit, NoHide
if Check41 > 0
{
normvcs := 100
}
else
{
normvcs := 0
}
return

cGalka11:
if normvcs = 100
{
SendInput {Enter}
}
else
{
SendInput {Space}
}
return

;-------------ENTER/SPACE 2 2--------------

Galka12:
Gui, Submit, NoHide
if Check42 > 0
{
normxvj := 100
}
else
{
normxvj := 0
}
return

cGalka12:
if normxvj = 100
{
SendInput {Enter}
}
else
{
SendInput {Space}
}
return

;-------------ENTER/SPACE 2 3--------------

Galka13:
Gui, Submit, NoHide
if Check43 > 0
{
normfd := 100
}
else
{
normfd := 0
}
return

cGalka13:
if normfd = 100
{
SendInput {Enter}
}
else
{
SendInput {Space}
}
return

;-------------ENTER/SPACE 2 4--------------

Galka14:
Gui, Submit, NoHide
if Check44 > 0
{
norgxz := 100
}
else
{
norgxz := 0
}
return

cGalka14:
if norgxz = 100
{
SendInput {Enter}
}
else
{
SendInput {Space}
}
return

;-------------ENTER/SPACE 2 5--------------

Galka15:
Gui, Submit, NoHide
if Check45 > 0
{
norgxq := 100
}
else
{
norgxq := 0
}
return

cGalka15:
if norgxq = 100
{
SendInput {Enter}
}
else
{
SendInput {Space}
}
return

;-------------ENTER/SPACE 2 6--------------

Galka16:
Gui, Submit, NoHide
if Check46 > 0
{
norgbf := 100
}
else
{
norgbf := 0
}
return

cGalka16:
if norgbf = 100
{
SendInput {Enter}
}
else
{
SendInput {Space}
}
return

;-------------ENTER/SPACE 2 7--------------

Galka17:
Gui, Submit, NoHide
if Check47 > 0
{
norgw := 100
}
else
{
norgw := 0
}
return

cGalka17:
if norgw = 100
{
SendInput {Enter}
}
else
{
SendInput {Space}
}
return

;-------------ENTER/SPACE 2 8--------------

Galka18:
Gui, Submit, NoHide
if Check48 > 0
{
norggw := 100
}
else
{
norggw := 0
}
return

cGalka18:
if norggw = 100
{
SendInput {Enter}
}
else
{
SendInput {Space}
}
return

;-------------ENTER/SPACE 2 9--------------

Galka19:
Gui, Submit, NoHide
if Check49 > 0
{
norgg := 100
}
else
{
norgg := 0
}
return

cGalka19:
if norgg = 100
{
SendInput {Enter}
}
else
{
SendInput {Space}
}
return

;-------------ENTER/SPACE 2 10--------------

Galka20:
Gui, Submit, NoHide
if Check50 > 0
{
norg := 100
}
else
{
norg := 0
}
return

cGalka20:
if norg = 100
{
SendInput {Enter}
}
else
{
SendInput {Space}
}
return

;-------------СOMDEV-------------

ComDev1:
gosub, сSlowCom1
SendMessage, 0x50, , 0x4190419, , A
SendInput, % %A_ThisLabel%
return

ComDev2:
gosub, сSlowCom2
SendMessage, 0x50, , 0x4190419, , A
SendInput, % %A_ThisLabel%
return

ComDev3:
gosub, сSlowCom3
SendMessage, 0x50, , 0x4190419, , A
SendInput, % %A_ThisLabel%
return

ComDev4:
gosub, сSlowCom4
SendMessage, 0x50, , 0x4190419, , A
SendInput, % %A_ThisLabel%
return

ComDev5:
gosub, сSlowCom5
SendMessage, 0x50, , 0x4190419, , A
SendInput, % %A_ThisLabel%
return

ComDev6:
gosub, сSlowCom6
SendMessage, 0x50, , 0x4190419, , A
SendInput, % %A_ThisLabel%
return

ComDev7:
gosub, сSlowCom7
SendMessage, 0x50, , 0x4190419, , A
SendInput, % %A_ThisLabel%
return

ComDev8:
gosub, сSlowCom8
SendMessage, 0x50, , 0x4190419, , A
SendInput, % %A_ThisLabel%
return

ComDev9:
gosub, сSlowCom9
SendMessage, 0x50, , 0x4190419, , A
SendInput, % %A_ThisLabel%
return

ComDev10:
gosub, сSlowCom10
SendMessage, 0x50, , 0x4190419, , A
SendInput, % %A_ThisLabel%
return

ComDev11:
gosub, сSlowCom11
SendMessage, 0x50, , 0x4190419, , A
SendInput, % %A_ThisLabel%
return

ComDev12:
gosub, сSlowCom12
SendMessage, 0x50, , 0x4190419, , A
SendInput, % %A_ThisLabel%
return

ComDev13:
gosub, сSlowCom13
SendMessage, 0x50, , 0x4190419, , A
SendInput, % %A_ThisLabel%
return

ComDev14:
gosub, сSlowCom14
SendMessage, 0x50, , 0x4190419, , A
SendInput, % %A_ThisLabel%
return

ComDev15:
gosub, сSlowCom15
SendMessage, 0x50, , 0x4190419, , A
SendInput, % %A_ThisLabel%
return

ComDev16:
gosub, сSlowCom16
SendMessage, 0x50, , 0x4190419, , A
SendInput, % %A_ThisLabel%
return

ComDev17:
gosub, сSlowCom17
SendMessage, 0x50, , 0x4190419, , A
SendInput, % %A_ThisLabel%
return

ComDev18:
gosub, сSlowCom18
SendMessage, 0x50, , 0x4190419, , A
SendInput, % %A_ThisLabel%
return

ComDev19:
gosub, сSlowCom19
SendMessage, 0x50, , 0x4190419, , A
SendInput, % %A_ThisLabel%
return

ComDev20:
gosub, сSlowCom20
SendMessage, 0x50, , 0x4190419, , A
SendInput, % %A_ThisLabel%
return

ComDev21:
gosub, сSlowCom21
SendMessage, 0x50, , 0x4190419, , A
SendInput, % %A_ThisLabel%
return

ComDev22:
gosub, сSlowCom22
SendMessage, 0x50, , 0x4190419, , A
SendInput, % %A_ThisLabel%
return

ComDev23:
gosub, сSlowCom23
SendMessage, 0x50, , 0x4190419, , A
SendInput, % %A_ThisLabel%
return

ComDev24:
gosub, сSlowCom24
SendMessage, 0x50, , 0x4190419, , A
SendInput, % %A_ThisLabel%
return

ComDev25:
gosub, сSlowCom25
SendMessage, 0x50, , 0x4190419, , A
SendInput, % %A_ThisLabel%
return

ComDev26:
gosub, сSlowCom26
SendMessage, 0x50, , 0x4190419, , A
SendInput, % %A_ThisLabel%
return

ComDev27:
gosub, сSlowCom27
SendMessage, 0x50, , 0x4190419, , A
SendInput, % %A_ThisLabel%
return

ComDev28:
gosub, сSlowCom28
SendMessage, 0x50, , 0x4190419, , A
SendInput, % %A_ThisLabel%
return

ComDev29:
gosub, сSlowCom29
SendMessage, 0x50, , 0x4190419, , A
SendInput, % %A_ThisLabel%
return

ComDev30:
gosub, сSlowCom30
SendMessage, 0x50, , 0x4190419, , A
SendInput, % %A_ThisLabel%
return

ComDev31:
gosub, сSlowCom31
SendMessage, 0x50, , 0x4190419, , A
SendInput, % %A_ThisLabel%
return

ComDev32:
gosub, сSlowCom32
SendMessage, 0x50, , 0x4190419, , A
SendInput, % %A_ThisLabel%
return

ComDev33:
gosub, сSlowCom33
SendMessage, 0x50, , 0x4190419, , A
SendInput, % %A_ThisLabel%
return

ComDev34:
gosub, сSlowCom34
SendMessage, 0x50, , 0x4190419, , A
SendInput, % %A_ThisLabel%
return

ComDev35:
gosub, сSlowCom35
SendMessage, 0x50, , 0x4190419, , A
SendInput, % %A_ThisLabel%
return

ComDev36:
gosub, сSlowCom36
SendMessage, 0x50, , 0x4190419, , A
SendInput, % %A_ThisLabel%
return

;---------------------MOUSE---------------------------

mouse1:
Gui, Submit, NoHide
if Check51 > 0
{
Hotkey, XButton1, XButton1, on
Hotkey, XButton2, XButton2, on
run = 0
}
else
{
Hotkey, XButton1, XButton1, off
Hotkey, XButton2, XButton2, off
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

mouse2:
Gui, Submit, NoHide
if Check52 > 0
{
Hotkey, MButton, MButton, on
run = 0
}
else
{
Hotkey, MButton, MButton, off
run = 1
}
return

MButton:
Send, !^c
return

mouse3:
Gui, Submit, NoHide
if Check53 > 0
{
Hotkey, WheelDown, WheelDown, on
Hotkey, WheelUp, WheelUp, on
run = 0
}
else
{
Hotkey, WheelDown, WheelDown, off
Hotkey, WheelUp, WheelUp, off
run = 1
}
return

WheelDown:
Send, !^d
return

WheelUp:
Send, !^e
return

mouse4:
Gui, Submit, NoHide
if Check80 > 0
{
hudih1 = 100
}
else
{
hudih1 = 0
Gui, 3a: Destroy
}
return

mouse5:
Gui, Submit, NoHide
if Check1 > 0
{
hudih2 = 100
}
else
{
hudih2 = 0
Gui, 3b: Destroy
}
return
;----------------------------------------------------------

bitiyfail:
Gui 1s: Add, Text, x18 y6 w246 h64 +Center, Обнаружены битые/отсутствующие файлы настроек. `nВыберите ваш сервер и нажмите "GO".
Gui 1s: Add, ListBox, x56 y58 w165 h54 vChoice, Del Perro|Richman|Strawberry|Rockford
Gui 1s: Add, Button, x223 y57 w50 h44 gAction, GO
Gui 1s: Show, w276 h113, Warning...
Return
1sGuiEscape:
1sGuiClose:
    Gui Destroy
return

Action:
;Gui, Submit ; or
Gui, Submit, NoHide   ; if you don't want to hide the gui-window after an action
If (Choice = "Del Perro")
    Gosub, delperrof
If (Choice = "Richman")
    MsgBox, Richman
If (Choice = "Strawberry")
    MsgBox, Strawberry
If (Choice = "Rockford")
    MsgBox, Rockford
return

delperrof:
TrayTip, Проверка файлов, Ожидайте... Сейчас будут заменены все отсутствующие файлы.`nСкрипт перезагрузится автоматически., , 16
;-------------------------------------------------------------------------------------------------------------
IfNotExist, %A_WorkingDir%\app
FileCreateDir, %A_WorkingDir%\app

IfNotExist, %A_WorkingDir%\app\gui
FileCreateDir, %A_WorkingDir%\app\gui


FileDelete, %A_WorkingDir%\pravilaband.ini
FileDelete, %A_WorkingDir%\pravilagos.ini
FileDelete, %A_WorkingDir%\pravilamafiy.ini
FileDelete, %A_WorkingDir%\pravilap.ini
FileDelete, %A_WorkingDir%\pravilas.ini

FileDelete, %A_WorkingDir%\app\gui\browser-osob.png
FileDelete, %A_WorkingDir%\app\vidacha_%buildverbrow%.exe

FileDelete, %A_WorkingDir%\buttons\button_cancel.png
FileDelete, %A_WorkingDir%\buttons\button_info.png
FileDelete, %A_WorkingDir%\buttons\load_checkupd.png
FileDelete, %A_WorkingDir%\buttons\load_downupd.png
FileDelete, %A_WorkingDir%\buttons\load_error.png
FileDelete, %A_WorkingDir%\buttons\load_obnar.png
FileDelete, %A_WorkingDir%\buttons\load_startupd.png

FileDelete, %A_WorkingDir%\setting_check.ini
FileDelete, %A_WorkingDir%\setting_3tab.ini
FileDelete, %A_WorkingDir%\setting_2tab.ini
FileDelete, %A_WorkingDir%\setting_1tab.ini
FileDelete, %A_WorkingDir%\setting_edit.ini
FileDelete, %A_WorkingDir%\setting.ini
HideTrayTip()
Sleep 1000
;---------------------------------------------------------
URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/pravilaband.ini, %A_WorkingDir%\app\gui\pravilaband.ini
URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/pravilagos.ini, %A_WorkingDir%\app\gui\pravilagos.ini
URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master\pravilamafiy.ini, %A_WorkingDir%\app\gui\pravilamafiy.ini
URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/pravilap.ini, %A_WorkingDir%\app\gui\pravilap.ini
URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/pravilas.ini, %A_WorkingDir%\app\gui\pravilas.ini

URLDownloadToFile, https://i.imgur.com/UgSpGQi.png, %A_WorkingDir%\app\gui\browser-osob.png

URLDownloadToFile, https://i.imgur.com/rKeMmEg.png, %A_WorkingDir%\buttons\button_cancel.png
URLDownloadToFile, https://i.imgur.com/y7cbOYZ.png, %A_WorkingDir%\buttons\button_info.png
URLDownloadToFile, https://i.imgur.com/Ttn9mIp.png, %A_WorkingDir%\buttons\load_checkupd.png
URLDownloadToFile, https://i.imgur.com/KWfYOQ3.png, %A_WorkingDir%\buttons\load_downupd.png
URLDownloadToFile, https://i.imgur.com/mSFNoVV.png, %A_WorkingDir%\buttons\load_error.png
URLDownloadToFile, https://i.imgur.com/jTZzK47.png, %A_WorkingDir%\buttons\load_obnar.png
URLDownloadToFile, https://i.imgur.com/8FIWqY9.png, %A_WorkingDir%\buttons\load_startupd.png

URLDownloadToFile, https://drive.google.com/uc?export=download&confirm=no_antivirus&id=11kz0wXP-pyFAdn1DvvbegqkvnyTcgW8K, %A_WorkingDir%\app\vidacha_%buildverbrow%.exe
;---------------------------------------------------------
URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/setting_check_v9.ini, %A_WorkingDir%\setting_check.ini
URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/setting_3tab_v9.ini, %A_WorkingDir%\setting_3tab.ini
URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/setting_2tab_v9.ini, %A_WorkingDir%\setting_2tab.ini
URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/setting_1tab_v9.ini, %A_WorkingDir%\setting_1tab.ini
URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/setting_edit_v9.ini, %A_WorkingDir%\setting_edit.ini
URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/setting_v9.ini, %A_WorkingDir%\setting.ini
Sleep 3000
;----------------------------------------------------------
Gosub, Counter13
Return


HideTrayTip() {
    TrayTip  ; Attempt to hide it the normal way.
    if SubStr(A_OSVersion,1,3) = "10." {
        Menu Tray, NoIcon
        Sleep 200  ; It may be necessary to adjust this sleep.
        Menu Tray, Icon
    }
}

;----------------------------------------------------------
sifinder:
ES_NOHIDESEL := 256  ; показывает выделение текста в Edit при неактивном окне
EM_SETSEL := 0x00B1  ; установка выделения
EM_SCROLLCARET := 0xB7  ; сделать видимым выделенный текст
EM_GETSEL := 0xB0  ; извлечь позицию каретки ввода
VarSetCapacity(start, 4), VarSetCapacity(end, 4)

Gui 5b: +HWNDhGUIMain +AlwaysOnTop
SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit1%
SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit2%
SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit3%
SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit4%
SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit5%
Gosub, Sebi

Gui 5b: Add, Tab3, x0 y0 w620 h430, Правила проекта| Сервера| Гос| Банд| Мафий|Карта особ| TP особы

Gui 5b: Tab, 1
Gui 5b: Add, Button, x310 y407 w50 h20 gFin1, Поиск
Gui 5b: Add, Edit, x3 y24 w614 h383 +Multi +ReadOnly vMainEdit1 hwndhMainEdit1 %ES_NOHIDESEL%, %Text%

Gui 5b: Tab, 2 
Gui 5b: Add, Button, x310 y407 w50 h20 gFin2, Поиск
Gui 5b: Add, Edit, x3 y24 w614 h383 +Multi +ReadOnly vMainEdit2 hwndhMainEdit2 %ES_NOHIDESEL%, %AText%

Gui 5b: Tab, 3 
Gui 5b: Add, Button, x310 y407 w50 h20 gFin3, Поиск
Gui 5b: Add, Edit, x3 y24 w614 h383 +Multi +ReadOnly vMainEdit3 hwndhMainEdit3 %ES_NOHIDESEL%, %BText%

Gui 5b: Tab, 4
Gui 5b: Add, Button, x310 y407 w50 h20 gFin4, Поиск
Gui 5b: Add, Edit, x3 y24 w614 h383 +Multi +ReadOnly vMainEdit4 hwndhMainEdit4 %ES_NOHIDESEL%, %CText%

Gui 5b: Tab, 5
Gui 5b: Add, Button, x310 y407 w50 h20 gFin5, Поиск
Gui 5b: Add, Edit, x3 y24 w614 h383 +Multi +ReadOnly vMainEdit5 hwndhMainEdit5 %ES_NOHIDESEL%, %DText%

Gui 5b: Tab, 6 
Gui 5b: Add, Picture, x0 y22 w620 h409, %A_WorkingDir%\app\gui\browser-osob.png

Gui 5b: Tab, 7
Gui 5b: Add, GroupBox, x4 y23 w167 h38
Gui 5b: Add, GroupBox, x4 y60 w167 h38
Gui 5b: Add, GroupBox, x4 y96 w167 h38
Gui 5b: Add, GroupBox, x4 y132 w167 h38
Gui 5b: Add, GroupBox, x4 y168 w167 h38
Gui 5b: Add, GroupBox, x4 y203 w167 h38
Gui 5b: Add, GroupBox, x4 y238 w167 h38
Gui 5b: Add, GroupBox, x4 y274 w167 h38
Gui 5b: Add, GroupBox, x4 y311 w167 h38
Gui 5b: Add, GroupBox, x5 y347 w167 h38
Gui 5b: Add, GroupBox, x176 y23 w167 h38
Gui 5b: Add, GroupBox, x174 y60 w167 h38
Gui 5b: Add, GroupBox, x174 y96 w167 h38
Gui 5b: Add, GroupBox, x174 y132 w167 h38
Gui 5b: Add, GroupBox, x174 y168 w167 h38
Gui 5b: Add, GroupBox, x174 y203 w167 h38
Gui 5b: Add, GroupBox, x174 y238 w167 h38
Gui 5b: Add, GroupBox, x174 y274 w167 h38
Gui 5b: Add, GroupBox, x174 y311 w167 h38
Gui 5b: Add, GroupBox, x174 y347 w167 h38
Gui 5b: Add, GroupBox, x348 y23 w167 h38
Gui 5b: Add, GroupBox, x346 y60 w167 h38
Gui 5b: Add, GroupBox, x346 y96 w167 h38
Gui 5b: Add, GroupBox, x346 y132 w167 h38
Gui 5b: Add, GroupBox, x347 y168 w167 h38
Gui 5b: Add, GroupBox, x346 y203 w167 h38
Gui 5b: Add, GroupBox, x346 y238 w167 h38
Gui 5b: Add, GroupBox, x346 y274 w167 h38
Gui 5b: Add, GroupBox, x346 y311 w167 h38
Gui 5b: Add, GroupBox, x346 y347 w167 h38
;-----------------------------------------------
Gui 5b: Add, Text, x7 y33 w56 h23 +0x200, Особа №1
Gui 5b: Add, Text, x7 y69 w56 h23 +0x200, Особа №2
Gui 5b: Add, Text, x7 y106 w56 h23 +0x200, Особа №3
Gui 5b: Add, Text, x7 y142 w56 h23 +0x200, Особа №4
Gui 5b: Add, Text, x7 y178 w56 h23 +0x200, Особа №5
Gui 5b: Add, Text, x7 y213 w56 h23 +0x200, Особа №6
Gui 5b: Add, Text, x8 y248 w56 h23 +0x200, Особа №7
Gui 5b: Add, Text, x7 y283 w56 h23 +0x200, Особа №8
Gui 5b: Add, Text, x7 y320 w56 h23 +0x200, Особа №9
Gui 5b: Add, Text, x8 y357 w61 h23 +0x200, Особа №10
Gui 5b: Add, Text, x179 y33 w66 h23 +0x200, Особа №11
Gui 5b: Add, Text, x179 y69 w61 h23 +0x200, Особа №12
Gui 5b: Add, Text, x179 y106 w69 h23 +0x200, Особа №13
Gui 5b: Add, Text, x179 y142 w63 h23 +0x200, Особа №14
Gui 5b: Add, Text, x179 y178 w62 h23 +0x200, Особа №15
Gui 5b: Add, Text, x179 y213 w63 h23 +0x200, Особа №16
Gui 5b: Add, Text, x179 y248 w59 h23 +0x200, Особа №17
Gui 5b: Add, Text, x179 y284 w62 h23 +0x200, Особа №18
Gui 5b: Add, Text, x179 y320 w59 h23 +0x200, Особа №19
Gui 5b: Add, Text, x179 y357 w61 h23 +0x200, Особа №20
Gui 5b: Add, Text, x353 y33 w60 h23 +0x200, Особа №21
Gui 5b: Add, Text, x353 y69 w59 h23 +0x200, Особа №22
Gui 5b: Add, Text, x353 y106 w58 h23 +0x200, Особа №23
Gui 5b: Add, Text, x353 y142 w60 h23 +0x200, Особа №24
Gui 5b: Add, Text, x353 y178 w62 h23 +0x200, Особа №25
Gui 5b: Add, Text, x353 y213 w59 h23 +0x200, Особа №26
Gui 5b: Add, Text, x353 y248 w61 h23 +0x200, Особа №27
Gui 5b: Add, Text, x353 y283 w60 h23 +0x200, Особа №28
Gui 5b: Add, Text, x353 y320 w59 h23 +0x200, Особа №29
Gui 5b: Add, Text, x353 y357 w61 h23 +0x200, Особа №30

Gui 5b: Add, Button, x68 y33 w48 h23 ggoto1, GOTO
Gui 5b: Add, Button, x120 y33 w48 h23 gcopy1, COPY

Gui 5b: Add, Button, x68 y70 w48 h23 ggoto2, GOTO
Gui 5b: Add, Button, x118 y70 w48 h23 gcopy2, COPY

Gui 5b: Add, Button, x68 y106 w48 h23 ggoto3, GOTO
Gui 5b: Add, Button, x118 y106 w48 h23 gcopy3, COPY

Gui 5b: Add, Button, x68 y142 w48 h23 ggoto4, GOTO
Gui 5b: Add, Button, x118 y142 w48 h23 gcopy4, COPY

Gui 5b: Add, Button, x68 y178 w48 h23 ggoto5, GOTO
Gui 5b: Add, Button, x118 y178 w48 h23 gcopy5, COPY

Gui 5b: Add, Button, x68 y213 w48 h23 ggoto6, GOTO
Gui 5b: Add, Button, x118 y213 w48 h23 gcopy6, COPY

Gui 5b: Add, Button, x68 y248 w48 h23 ggoto7, GOTO
Gui 5b: Add, Button, x118 y248 w48 h23 gcopy7, COPY

Gui 5b: Add, Button, x68 y283 w48 h23 ggoto8, GOTO
Gui 5b: Add, Button, x118 y283 w48 h23 gcopy8, COPY

Gui 5b: Add, Button, x68 y320 w48 h23 ggoto9, GOTO
Gui 5b: Add, Button, x118 y320 w48 h23 gcopy9, COPY

Gui 5b: Add, Button, x68 y357 w48 h23 ggoto10, GOTO
Gui 5b: Add, Button, x118 y357 w48 h23 gcopy10, COPY
;-----------------------------------------------

Gui 5b: Add, Button, x242 y33 w48 h23 ggoto11, GOTO
Gui 5b: Add, Button, x292 y33 w48 h23 gcopy11, COPY

Gui 5b: Add, Button, x242 y70 w48 h23 ggoto12, GOTO
Gui 5b: Add, Button, x292 y70 w48 h23 gcopy12, COPY

Gui 5b: Add, Button, x242 y106 w48 h23 ggoto13, GOTO
Gui 5b: Add, Button, x292 y106 w48 h23 gcopy13, COPY

Gui 5b: Add, Button, x242 y142 w48 h23 ggoto14, GOTO
Gui 5b: Add, Button, x292 y142 w48 h23 gcopy14, COPY

Gui 5b: Add, Button, x242 y178 w48 h23 ggoto15, GOTO
Gui 5b: Add, Button, x292 y178 w48 h23 gcopy15, COPY

Gui 5b: Add, Button, x242 y213 w48 h23 ggoto16, GOTO
Gui 5b: Add, Button, x292 y213 w48 h23 gcopy16, COPY

Gui 5b: Add, Button, x242 y248 w48 h23 ggoto17, GOTO
Gui 5b: Add, Button, x292 y248 w48 h23 gcopy17, COPY

Gui 5b: Add, Button, x242 y283 w48 h23 ggoto18, GOTO
Gui 5b: Add, Button, x292 y283 w48 h23 gcopy18, COPY

Gui 5b: Add, Button, x242 y320 w48 h23 ggoto19, GOTO
Gui 5b: Add, Button, x292 y320 w48 h23 gcopy19, COPY

Gui 5b: Add, Button, x242 y357 w48 h23 ggoto20, GOTO
Gui 5b: Add, Button, x292 y357 w48 h23 gcopy20, COPY
;-----------------------------------------
Gui 5b: Add, Button, x414 y33 w48 h23 ggoto21, GOTO
Gui 5b: Add, Button, x463 y33 w48 h23 gcopy21, COPY

Gui 5b: Add, Button, x414 y70 w48 h23 ggoto22, GOTO
Gui 5b: Add, Button, x463 y70 w48 h23 gcopy22, COPY

Gui 5b: Add, Button, x414 y106 w48 h23 ggoto23, GOTO
Gui 5b: Add, Button, x463 y106 w48 h23 gcopy23, COPY

Gui 5b: Add, Button, x414 y142 w48 h23 ggoto24, GOTO
Gui 5b: Add, Button, x463 y142 w48 h23 gcopy24, COPY

Gui 5b: Add, Button, x414 y178 w48 h23 ggoto25, GOTO
Gui 5b: Add, Button, x463 y178 w48 h23 gcopy25, COPY

Gui 5b: Add, Button, x414 y213 w48 h23 ggoto26, GOTO
Gui 5b: Add, Button, x463 y213 w48 h23 gcopy26, COPY

Gui 5b: Add, Button, x414 y248 w48 h23 ggoto27, GOTO
Gui 5b: Add, Button, x463 y248 w48 h23 gcopy27, COPY

Gui 5b: Add, Button, x414 y283 w48 h23 ggoto28, GOTO
Gui 5b: Add, Button, x463 y283 w48 h23 gcopy28, COPY

Gui 5b: Add, Button, x414 y320 w48 h23 ggoto29, GOTO
Gui 5b: Add, Button, x463 y320 w48 h23 gcopy29, COPY

Gui 5b: Add, Button, x414 y357 w48 h23 ggoto30, GOTO
Gui 5b: Add, Button, x463 y357 w48 h23 gcopy30, COPY

Gui 5b: Add, Text, x48 y387 w338 h24 +0x200, COPY - Копирует форму для передачи координат (set_gps id coord)
Gui 5b: Add, Text, x48 y405 w338 h24 +0x200, GOTO - Копирует форму для телепорта по координатам (tpc coord)
Gui 5b: Add, Text, x395 y395 w120 h24, Используйте CTRL + V            в консоль.
Gui 5b: Show, w620 h430, Браузер Admin-Binder by Notoriuz
return
5bGuiEscape:
5bGuiClose:
    Gui Destroy
return

;-----------------------------------------------------------------------------------

Fin1:
Gui 5bv: +Owner1 -MaximizeBox -MinimizeBox -DPIScale +HWNDhGUIFind +AlwaysOnTop
Gui 5bv: Add, Text, ym+5, Что:
Gui 5bv: Add, Edit, x+25 yp-5 w284 vFind hwndhFind
Gui 5bv: Add, Button, x+10 yp gGoSearch1, Найти далее
Gui 5bv: Add, Button, xp y+5 wp gCancel1, Отмена
Gui 5bv: Add, Checkbox, vLoop y+0 xm Checked, Зациклить поиск
Gui 5bv: Add, Checkbox, vSens y+10 xp, С учетом регистра
Gui 5bv: Add, GroupBox, x+10 yp-35 h55, Направление
Gui 5bv: Add, Radio, xp+10 yp+25 vDirectUp, Вверх
Gui 5bv: Add, Radio, x+15 Checked, Вниз 
Gui 5bv: Show, , Найти 
return
5bvGuiEscape:
5bvGuiClose:
    Gui Destroy
return

SearchEdit1: 
Gosub, GoSearch1
    Gui, 5bv: Show, , Найти 
    Return
    
Cancel1:
    Gui, 5bv: Hide
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
Gui, 5bv: Destroy
SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit1%
Gosub, Fin1
 }
    SendMessage, EM_SETSEL, f-1, f+StrLen(Find)-1, , ahk_id %hMainEdit1%
    SendMessage, EM_SCROLLCARET,,,, ahk_id %hMainEdit1%
    Return
;-----------------------------------------------------------------------------------

Fin2:
Gui, 5bc: +Owner1 -MaximizeBox -MinimizeBox -DPIScale +HWNDhGUIFind +AlwaysOnTop
Gui, 5bc: Add, Text, ym+5, Что:
Gui, 5bc: Add, Edit, x+25 yp-5 w284 vFind11 hwndhFind11
Gui, 5bc: Add, Button, x+10 yp gGoSearch2, Найти далее
Gui, 5bc: Add, Button, xp y+5 wp gCancel2, Отмена
Gui, 5bc: Add, Checkbox, vLoop11 y+0 xm Checked, Зациклить поиск
Gui, 5bc: Add, Checkbox, vSens11 y+10 xp, С учетом регистра
Gui, 5bc: Add, GroupBox, x+10 yp-35 h55, Направление
Gui, 5bc: Add, Radio, xp+10 yp+25 vDirectUp11, Вверх
Gui, 5bc: Add, Radio, x+15 Checked, Вниз 
Gui, 5bc: Show, , Найти 
return
5bcGuiEscape:
5bcGuiClose:
    Gui Destroy
return

SearchEdit2: 
Gosub, GoSearch2
    Gui, 5bc: Show, , Найти 
    Return
    
Cancel2:
    Gui, 5bc: Hide
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
Gui, 5bc: Destroy
SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit2%
Gosub, Fin2
    }
    SendMessage, EM_SETSEL, f-1, f+StrLen(Find11)-1, , ahk_id %hMainEdit2%
    SendMessage, EM_SCROLLCARET,,,, ahk_id %hMainEdit2%
    Return

;-----------------------------------------------------------------------------------

Fin3:
Gui, 5be: +Owner1 -MaximizeBox -MinimizeBox -DPIScale +HWNDhGUIFind +AlwaysOnTop
Gui, 5be: Add, Text, ym+5, Что:
Gui, 5be: Add, Edit, x+25 yp-5 w284 vbFind hwndhbFind
Gui, 5be: Add, Button, x+10 yp gGoSearch3, Найти далее
Gui, 5be: Add, Button, xp y+5 wp gCancel3, Отмена
Gui, 5be: Add, Checkbox, vbLoop y+0 xm Checked, Зациклить поиск
Gui, 5be: Add, Checkbox, vbSens y+10 xp, С учетом регистра
Gui, 5be: Add, GroupBox, x+10 yp-35 h55, Направление
Gui, 5be: Add, Radio, xp+10 yp+25 vbDirectUp, Вверх
Gui, 5be: Add, Radio, x+15 Checked, Вниз 
Gui, 5be: Show, , Найти 
return
5beGuiEscape:
5beGuiClose:
    Gui Destroy
return

SearchEdit3: 
Gosub, GoSearch3
    Gui, 5be: Show, , Найти 
    Return
    
Cancel3:
    Gui, 5be: Hide
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
Gui, 5be: Destroy
SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit3%
Gosub, Fin3
    }
    SendMessage, EM_SETSEL, f-1, f+StrLen(bFind)-1, , ahk_id %hMainEdit3%
    SendMessage, EM_SCROLLCARET,,,, ahk_id %hMainEdit3%
    Return


;----------------------------------------------------------------------------------------------------------

Fin4:
Gui, 5c1: +Owner1 -MaximizeBox -MinimizeBox -DPIScale +HWNDhGUIFind +AlwaysOnTop
Gui, 5c1: Add, Text, ym+5, Что:
Gui, 5c1: Add, Edit, x+25 yp-5 w284 veFind hwndheFind
Gui, 5c1: Add, Button, x+10 yp gGoSearch4, Найти далее
Gui, 5c1: Add, Button, xp y+5 wp gCancel4, Отмена
Gui, 5c1: Add, Checkbox, veLoop y+0 xm Checked, Зациклить поиск
Gui, 5c1: Add, Checkbox, veSens y+10 xp, С учетом регистра
Gui, 5c1: Add, GroupBox, x+10 yp-35 h55, Направление
Gui, 5c1: Add, Radio, xp+10 yp+25 veDirectUp, Вверх
Gui, 5c1: Add, Radio, x+15 Checked, Вниз 
Gui, 5c1: Show, , Найти 
return
5c1GuiEscape:
5c1GuiClose:
    Gui Destroy
return

SearchEdit4: 
Gosub, GoSearch4
    Gui, 5c1: Show, , Найти 
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
Gui, 5c1: Destroy
SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit4%
Gosub, Fin4
    }
    SendMessage, EM_SETSEL, f-1, f+StrLen(eFind)-1, , ahk_id %hMainEdit4%
    SendMessage, EM_SCROLLCARET,,,, ahk_id %hMainEdit4%
    Return


Cancel4:
    Gui, 5c1: Hide
    Return


;----------------------------------------------------------------------------------------------------------

Fin5:
Gui, 6c1: +Owner1 -MaximizeBox -MinimizeBox -DPIScale +HWNDhGUIFind +AlwaysOnTop
Gui, 6c1: Add, Text, ym+5, Что:
Gui, 6c1: Add, Edit, x+25 yp-5 w284 vqFind hwndhqFind
Gui, 6c1: Add, Button, x+10 yp gGoSearch5, Найти далее
Gui, 6c1: Add, Button, xp y+5 wp gCancel5, Отмена
Gui, 6c1: Add, Checkbox, vqLoop y+0 xm Checked, Зациклить поиск
Gui, 6c1: Add, Checkbox, vqSens y+10 xp, С учетом регистра
Gui, 6c1: Add, GroupBox, x+10 yp-35 h55, Направление
Gui, 6c1: Add, Radio, xp+10 yp+25 vqDirectUp, Вверх
Gui, 6c1: Add, Radio, x+15 Checked, Вниз 
Gui, 6c1: Show, , Найти 
return
6c1GuiEscape:
6c1GuiClose:
    Gui Destroy
return

SearchEdit5: 
Gosub, GoSearch5
    Gui, 6c1: Show, , Найти 
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
Gui, 6c1: Destroy
SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit5%
Gosub, Fin5
    }
    SendMessage, EM_SETSEL, f-1, f+StrLen(qFind)-1, , ahk_id %hMainEdit5%
    SendMessage, EM_SCROLLCARET,,,, ahk_id %hMainEdit5%
    Return


Cancel5:
    Gui, 6c1: Hide
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

Text = %Text1%`n%Text2%`n%Text3%`n%Text4%`n%Text5%`n%Text6%`n%Text7%`n%Text8%`n%Text9%`n%Text10%`n%Text11%`n%Text12%`n%Text13%`n%Text14%`n%Text15%`n%Text16%`n%Text17%`n%Text18%`n%Text19%`n%Text20%`n%Text21%`n%Text22%`n%Text23%`n%Text24%`n%Text25%`n%Text26%`n%Text27%`n%Text28%`n%Text29%`n%Text30%`n%Text31%`n%Text32%`n%Text33%`n%Text34%`n%Text35%`n%Text36%`n%Text37%`n%Text39%`n%Text39%`n%Text40%`n%Text41%`n%Text42%`n%Text43%`n%Text44%`n%Text45%`n%Text46%`n%Text47%`n%Text48%`n%Text49%`n%Text50%`n%Text51%`n%Text52%`n%Text53%`n%Text54%`n%Text55%`n%Text56%`n%Text57%`n%Text58%`n%Text59%`n%Text60%`n%Text61%`n%Text62%`n%Text63%`n%Text64%`n%Text65%`n%Text66%`n%Text67%`n%Text68%`n%Text69%`n%Text70%`n%Text71%`n%Text72%`n%Text73%`n%Text74%`n%Text75%`n%Text76%`n%Text77%`n%Text78%`n%Text79%`n%Text80%`n%Text81%`n%Text82%`n%Text83%`n%Text84%`n%Text85%`n%Text86%`n%Text87%`n%Text88%`n%Text89%`n%Text90%`n%Text91%`n%Text92%`n%Text93%`n%Text94%`n%Text95%`n%Text96%`n%Text97%`n%Text98%`n%Text99%`n%Text100%`n%Text101%`n%Text102%`n%Text103%`n%Text104%`n%Text105%`n%Text106%`n%Text107%`n%Text108%`n%Text109%`n%Text110%`n%Text111%`n%Text112%`n%Text113%`n%Text114%`n%Text115%`n%Text116%`n%Text117%`n%Text118%`n%Text119%`n%Text120%`n%Text121%`n%Text122%`n%Text123%`n%Text124%`n%Text125%`n%Text126%`n%Text127%`n%Text128%`n%Text129%`n%Text130%`n%Text131%`n%Text132%`n%Text133%`n%Text134%`n%Text135%`n%Text136%`n%Text137%`n%Text138%`n%Text139%`n%Text140%`n%Text141%`n%Text142%`n%Text143%`n%Text144%`n%Text145%`n%Text146%`n%Text147%`n%Text148%`n%Text149%`n%Text150%`n%Text151%`n%Text152%`n%Text153%`n%Text154%`n%Text155%`n%Text156%`n%Text157%`n%Text158%`n%Text159%`n%Text160%`n%Text161%`n%Text163%`n%Text163%`n%Text164%`n%Text165%`n%Text166%`n%Text167%`n%Text168%`n%Text169%`n%Text170%`n%Text171%`n%Text173%`n%Text174%`n%Text175%`n%Text176%`n%Text177%`n%Text178%`n%Text179%`n%Text180%`n%Text181%`n%Text182%`n%Text183%`n%Text184%`n%Text185%`n%Text186%`n%Text187%`n%Text188%`n%Text189%`n%Text190%`n%Text191%`n%Text192%`n%Text193%`n%Text194%`n%Text195%`n%Text196%`n%Text197%`n%Text198%`n%Text199%`n%Text200%`n%Text201%`n%Text202%

AText = %AText1%`n%AText2%`n%AText3%`n%AText4%`n%AText5%`n%AText6%`n%AText7%`n%AText8%`n%AText9%`n%AText10%`n%AText11%`n%AText12%`n%AText13%`n%AText14%`n%AText15%`n%AText16%`n%AText17%`n%AText18%`n%AText19%`n%AText20%`n%AText21%`n%AText22%`n%AText23%`n%AText24%`n%AText25%`n%AText26%`n%AText27%`n%AText28%

BText = %BText1%`n%BText2%`n%BText3%`n%BText4%`n%BText5%`n%BText6%`n%BText7%`n%BText8%`n%BText9%`n%BText10%`n%BText11%`n%BText12%`n%BText13%`n%BText14%`n%BText15%`n%BText16%`n%BText17%`n%BText18%`n%BText19%`n%BText20%`n%BText21%`n%BText22%`n%BText23%`n%BText24%`n%BText25%`n%BText26%`n%BText27%`n%BText28%`n%BText29%`n%BText30%`n%BText31%`n%BText32%`n%BText33%`n%BText34%`n%BText35%`n%BText36%`n%BText37%`n%BText39%`n%BText39%`n%Tex40%`n%BText41%`n%BText42%`n%BText43%`n%BText44%`n%BText45%`n%BText46%`n%BText47%`n%BText48%`n%BText49%`n%BText50%`n%BText51%`n%BText52%`n%BText53%`n%BText54%`n%BText55%`n%BText56%`n%BText57%`n%BText58%`n%BText59%`n%BText60%`n%BText61%`n%BText62%`n%BText63%`n%BText64%`n%BText65%`n%BText66%`n%BText67%`n%BText68%`n%BText69%`n%BText70%`n%BText71%`n%BText72%`n%BText73%`n%BText74%`n%BText75%`n%BText76%`n%BText77%`n%BText78%`n%BText79%`n%BText80%`n%BText81%`n%BText82%`n%BText83%`n%BText84%`n%BText85%`n%BText86%`n%BText87%`n%BText88%`n%BText89%`n%BText90%`n%BText91%`n%BText92%`n%BText93%`n%BText94%`n%BText95%`n%BText96%`n%BText97%`n%BText98%`n%BText99%`n%BText100%`n%BText101%`n%BText102%`n%BText103%`n%BText104%`n%BText105%`n%BText106%`n%BText107%`n%BText108%`n%BText109%`n%BText110%`n%BText111%`n%BText112%`n%BText113%`n%BText114%`n%BText115%`n%BText116%`n%BText117%`n%BText118%`n%BText119%`n%BText120%`n%BText121%`n%BText122%`n%BText123%`n%BText124%`n%BText125%`n%BText126%`n%BText127%`n%BText128%`n%BText129%`n%BText130%`n%BText131%`n%BText132%`n%BText133%`n%BText134%`n%BText135%`n%BText136%`n%BText137%`n%BText138%`n%BText139%`n%BText140%`n%BText141%`n%Tex142%`n%BText143%`n%BText144%`n%BText145%`n%BText146%`n%BText147%`n%BText148%`n%BText149%`n%BText150%`n%BText151%`n%BText152%`n%BText153%`n%BText154%`n%BText155%`n%BText156%`n%BText157%`n%BText158%`n%BText159%`n%BText160%`n%BText161%`n%BText163%`n%BText163%`n%BText164%`n%BText165%`n%BText166%`n%BText167%`n%BText168%`n%BText169%`n%BText170%`n%BText171%`n%BText173%`n%BText174%`n%BText175%`n%BText176%`n%BText177%`n%BText178%`n%BText179%`n%BText180%`n%BText181%`n%BText182%`n%BText183%`n%BText184%`n%BText185%`n%BText186%`n%BText187%`n%BText188%`n%BText189%`n%BText190%`n%BText191%`n%BText192%`n%BText193%`n%BText194%`n%BText195%`n%BText196%`n%BText197%`n%BText198%`n%BText199%`n%BText200%`n%BText201%`n%BText202%`n%BText203%`n%BText204%`n%BText205%`n%BText206%`n%BText207%`n%BText208%`n%BText209%`n%BText210%`n%BText211%`n%BText212%`n%BText213%`n%BText214%`n%BText215%`n%BText216%`n%BText217%`n%BText218%`n%BText219%`n%BText220%`n%BText221%`n%BText222%`n%BText223%`n%BText224%`n%BText225%`n%BText226%`n%BText227%`n%BText228%`n%BText229%`n%BText230%`n%BText231%`n%BText232%`n%BText233%`n%BText234%`n%BText235%`n%BText236%`n%BText237%`n%BText238%`n%BText239%`n%BText240%`n%BText241%`n%BText242%`n%BText243%`n%BText244%`n%BText245%`n%BText246%`n%BText247%`n%BText248%`n%BText249%`n%BText250%`n%BText251%`n%BText252%`n%BText253%`n%BText254%`n%BText255%`n%BText256%`n%BText257%`n%BText258%`n%BText259%`n%BText260%`n%BText261%

CText = %CText1%`n%CText2%`n%CText3%`n%CText4%`n%CText5%`n%CText6%`n%CText7%`n%CText8%`n%CText9%`n%CText10%`n%CText11%`n%CText12%`n%CText13%`n%CText14%`n%CText15%`n%CText16%`n%CText17%`n%CText18%`n%CText19%`n%CText20%`n%CText21%`n%CText22%`n%CText23%`n%CText24%`n%CText25%`n%CText26%`n%CText27%`n%CText28%`n%CText29%`n%CText30%`n%CText31%`n%CText32%`n%CText33%`n%CText34%`n%CText35%`n%CText36%`n%CText37%`n%CText39%`n%CText39%`n%Tex40%`n%CText41%`n%CText42%`n%CText43%`n%CText44%`n%CText45%`n%CText46%`n%CText47%`n%CText48%`n%CText49%`n%CText50%`n%CText51%`n%CText52%`n%CText53%`n%CText54%`n%CText55%`n%CText56%`n%CText57%`n%CText58%`n%CText59%`n%CText60%`n%CText61%`n%CText62%`n%CText63%`n%CText64%`n%CText65%`n%CText66%`n%CText67%`n%CText68%`n%CText69%`n%CText70%`n%CText71%`n%CText72%`n%CText73%`n%CText74%`n%CText75%`n%CText76%`n%CText77%`n%CText78%`n%CText79%`n%CText80%`n%CText81%`n%CText82%`n%CText83%`n%CText84%`n%CText85%`n%CText86%`n%CText87%`n%CText88%`n%CText89%`n%CText90%`n%CText91%`n%CText92%`n%CText93%`n%CText94%`n%CText95%`n%CText96%`n%CText97%`n%CText98%`n%CText99%`n%CText100%`n%CText101%`n%CText102%`n%CText103%`n%CText104%`n%CText105%`n%CText106%`n%CText107%`n%CText108%`n%CText109%`n%CText110%`n%CText111%`n%CText112%`n%CText113%`n%CText114%`n%CText115%`n%CText116%`n%CText117%`n%CText118%`n%CText119%`n%CText120%`n%CText121%`n%CText122%`n%CText123%`n%CText124%`n%CText125%`n%CText126%`n%CText127%`n%CText128%`n%CText129%`n%CText130%`n%CText131%`n%CText132%`n%CText133%`n%CText134%`n%CText135%`n%CText136%`n%CText137%`n%CText138%`n%CText139%`n%CText140%`n%CText141%`n%Tex142%`n%CText143%`n%CText144%`n%CText145%`n%CText146%`n%CText147%`n%CText148%`n%CText149%`n%CText150%`n%CText151%`n%CText152%`n%CText153%`n%CText154%`n%CText155%`n%CText156%`n%CText157%`n%CText158%`n%CText159%`n%CText160%`n%CText161%`n%CText163%`n%CText163%`n%CText164%`n%CText165%`n%CText166%`n%CText167%`n%CText168%`n%CText169%`n%CText170%`n%CText171%`n%CText173%`n%CText174%`n%CText175%`n%CText176%`n%CText177%`n%CText178%`n%CText179%`n%CText180%`n%CText181%`n%CText182%`n%CText183%`n%CText184%`n%CText185%`n%CText186%`n%CText187%`n%CText188%`n%CText189%`n%CText190%`n%CText191%`n%CText192%`n%CText193%`n%CText194%`n%CText195%`n%CText196%`n%CText197%`n%CText198%`n%CText199%`n%CText200%`n%CText201%`n%CText202%`n%CText203%`n%CText204%`n%CText205%`n%CText206%`n%CText207%`n%CText208%`n%CText209%`n%CText210%`n%CText211%`n%CText212%`n%CText213%`n%CText214%`n%CText215%`n%CText216%`n%CText217%`n%CText218%`n%CText219%`n%CText220%`n%CText221%`n%CText222%`n%CText223%`n%CText224%`n%CText225%`n%CText226%`n%CText227%`n%CText228%`n%CText229%`n%CText230%`n%CText231%`n%CText232%`n%CText233%`n%CText234%`n%CText235%`n%CText236%`n%CText237%`n%CText238%`n%CText239%`n%CText240%`n%CText241%`n%CText242%`n%CText243%`n%CText244%`n%CText245%`n%CText246%`n%CText247%`n%CText248%`n%CText249%`n%CText250%

DText = %DText1%`n%DText2%`n%DText3%`n%DText4%`n%DText5%`n%DText6%`n%DText7%`n%DText8%`n%DText9%`n%DText10%`n%DText11%`n%DText12%`n%DText13%`n%DText14%`n%DText15%`n%DText16%`n%DText17%`n%DText18%`n%DText19%`n%DText20%`n%DText21%`n%DText22%`n%DText23%`n%DText24%`n%DText25%`n%DText26%`n%DText27%`n%DText28%`n%DText29%`n%DText30%`n%DText31%`n%DText32%`n%DText33%`n%DText34%`n%DText35%`n%DText36%`n%DText37%`n%DText39%`n%DText39%`n%Tex40%`n%DText41%`n%DText42%`n%DText43%`n%DText44%`n%DText45%`n%DText46%`n%DText47%`n%DText48%`n%DText49%`n%DText50%`n%DText51%`n%DText52%`n%DText53%`n%DText54%`n%DText55%`n%DText56%`n%DText57%`n%DText58%`n%DText59%`n%DText60%`n%DText61%`n%DText62%`n%DText63%`n%DText64%`n%DText65%`n%DText66%`n%DText67%`n%DText68%`n%DText69%`n%DText70%`n%DText71%`n%DText72%`n%DText73%`n%DText74%`n%DText75%`n%DText76%`n%DText77%`n%DText78%`n%DText79%`n%DText80%`n%DText81%`n%DText82%`n%DText83%`n%DText84%`n%DText85%`n%DText86%`n%DText87%`n%DText88%`n%DText89%`n%DText90%`n%DText91%`n%DText92%`n%DText93%`n%DText94%`n%DText95%`n%DText96%`n%DText97%`n%DText98%`n%DText99%`n%DText100%`n%DText101%`n%DText102%`n%DText103%`n%DText104%`n%DText105%`n%DText106%`n%DText107%`n%DText108%`n%DText109%`n%DText110%`n%DText111%`n%DText112%

GuiControl,, AText, %AText%
GuiControl,, BText, %BText%
GuiControl,, CText, %CText%
GuiControl,, DText, %DText%
GuiControl,, Text, %Text%
return


;---------------------------------------------------------------------------------
goto1:
clipboard = tpc -1135.29, 375.56, 70.11
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

goto2:
clipboard = tpc -1806.19, 439.39, 127.93
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

goto3:
clipboard = tpc -834.32, 114.14, 56.21
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

goto4:
clipboard = tpc 228.25, 765.94, 204.56
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

goto5:
clipboard = tpc -1188.68, 289.34, 70.50
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

goto6:
clipboard = tpc -1549.18, -87.88, 55.72
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

goto7:
clipboard = tpc -1579.00, -33.85, 56.94
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

goto8:
clipboard = tpc -1462.32, -32.05, 55.54
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

goto9:
clipboard = tpc -2584.95, 1913.73, 166.90
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

goto10:
clipboard = tpc -1516.86, 852.00, 181.20
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

goto11:
clipboard = tpc 3313.22, 5175.29, 18.81
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

goto12:
clipboard = tpc -712.52, -1298.13, 5.01
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

goto13:
clipboard = tpc -1274.98, 496.90, 97.04
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

goto14:
clipboard = tpc -1025.39, 360.01, 71.31
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

goto15:
clipboard = tpc -882.32, 365.56, 84.64
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

goto16:
clipboard = tpc -877.60, 306.26, 82.09
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

goto17:
clipboard = tpc -701.00, 647.72, 154.53
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

goto18:
clipboard = tpc -1040.43, 222.49, 63.27
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

goto19:
clipboard = tpc -997.97, 156.94, 60.83
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

goto20:
clipboard = tpc -951.94, 195.32, 67.43
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

goto21:
clipboard = tpc -903.10, 191.32, 69.17
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

goto22:
clipboard = tpc -969.00, 124.09, 55.95
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

goto23:
clipboard = tpc -837.51, -25.94, 40.20
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

goto24:
clipboard = tpc -883.74, 39.66, 49.47
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

goto25:
clipboard = tpc -1732.53, 380.27, 88.98
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

goto26:
clipboard = tpc -1863.78, 309.64, 88.94
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

goto27:
clipboard = tpc -1874.37, 201.60, 85.13
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

goto28:
clipboard = tpc -1344.88, 481.11, 101.58
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

goto29:
clipboard = tpc -1897.34, 132.56, 80.94
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

goto30:
clipboard = tpc -2797.85, 1431.46, 99.35
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return
;-------------------------------------------------------


copy1:
clipboard = set_gps id -1135.29, 375.56, 70.11
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

copy2:
clipboard = set_gps id -1806.19, 439.39, 127.93
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

copy3:
clipboard = set_gps id -834.32, 114.14, 56.21
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

copy4:
clipboard = set_gps id 228.25, 765.94, 204.56
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

copy5:
clipboard = set_gps id -1188.68, 289.34, 70.50
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

copy6:
clipboard = set_gps id -1549.18, -87.88, 55.72
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

copy7:
clipboard = set_gps id -1579.00, -33.85, 56.94
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

copy8:
clipboard = set_gps id -1462.32, -32.05, 55.54
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

copy9:
clipboard = set_gps id -2584.95, 1913.73, 166.90
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

copy10:
clipboard = set_gps id -1516.86, 852.00, 181.20
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

copy11:
clipboard = set_gps id 3313.22, 5175.29, 18.81
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

copy12:
clipboard = set_gps id -712.52, -1298.13, 5.01
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

copy13:
clipboard = set_gps id -1274.98, 496.90, 97.04
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

copy14:
clipboard = set_gps id -1025.39, 360.01, 71.31
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

copy15:
clipboard = set_gps id -882.32, 365.56, 84.64
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

copy16:
clipboard = set_gps id -877.60, 306.26, 82.09
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

copy17:
clipboard = set_gps id -701.00, 647.72, 154.53
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

copy18:
clipboard = set_gps id -1040.43, 222.49, 63.27
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

copy19:
clipboard = set_gps id -997.97, 156.94, 60.83
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

copy20:
clipboard = set_gps id -951.94, 195.32, 67.43
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

copy21:
clipboard = set_gps id -903.10, 191.32, 69.17
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

copy22:
clipboard = set_gps id -969.00, 124.09, 55.95
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

copy23:
clipboard = set_gps id -837.51, -25.94, 40.20
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

copy24:
clipboard = set_gps id -883.74, 39.66, 49.47
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

copy25:
clipboard = set_gps id -1732.53, 380.27, 88.98
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

copy26:
clipboard = set_gps id -1863.78, 309.64, 88.94
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

copy27:
clipboard = set_gps id -1874.37, 201.60, 85.13
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

copy28:
clipboard = set_gps id -1344.88, 481.11, 101.58
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

copy29:
clipboard = set_gps id -1897.34, 132.56, 80.94
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

copy30:
clipboard = set_gps id -2797.85, 1431.46, 99.35
Gui 5b: Destroy
Sendinput, {Sc029}
openbr = 1
return

