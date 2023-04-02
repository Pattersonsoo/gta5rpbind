Return
StartFullGui:
Gosub, ReadFileSript
Gui, Own: Destroy
;-----------------------------------------------------------------------
;-----------------------ОТРИСОВКА ОСНОВНОГО GUI------------------------
Gui, Own: Add, Button, x10 y372 w116 h23 gFullClear, Удалить настройки
Gui, Own: Add, Button, x10 y400 w116 h23 gAllSave, Сохранить настройки
Gui, Own: Add, Button, x131 y372 w103 h51 gStart, Запустить биндер

Gui, Own: Add, Text, x489 y371 w59 h41, Репортов отвечено
Gui, Own: Add, Text, x540 y378 w15 h16, -
Gui, Own: Add, Text, x545 y380 w45 h10 +0x200 vCounter, %Counter%
Gui, Own: Add, Text, x999 y999 w45 h10 +0x200 vCounter2, %Counter2%
Gui, Own: Add, Button, x487 y399 w85 h23 gClear, Изменить
Gui, Own: Add, GroupBox, x482 y362 w95 h67

Gui, Own: Add, Text, x-34 y362 w715 h2 +0x10
Gui, Own: Add, Button, x272 y372 w80 h24 gfaqr, FAQ
Gui, Own: Add, Button, x272 y400 w80 h24 ginfo, INFO
Gui, Own: Add, GroupBox, x265 y362 w94 h67
Gui, Own: Add, GroupBox, x6 y362 w233 h67

Gui, Own: Add, Tab, x0 y0 w600 h362, Основное|Свой бинд|Быстрый ответ [1]|Быстрый ответ [2]|Настройки ; Строка выбора
Gui, Own: Tab, 1 ; Вкладка основное

Gui, Own: Add, Hotkey, x16 y44 w82 h21 vMyHotKey1, %MyHotKey1%
Gui, Own: Add, Hotkey, x16 y76 w82 h21 vMyHotKey2, %MyHotKey2%
Gui, Own: Add, Hotkey, x16 y108 w82 h21 vMyHotKey3, %MyHotKey3%
Gui, Own: Add, Hotkey, x16 y140 w82 h21 vMyHotKey4, %MyHotKey4%
Gui, Own: Add, Hotkey, x16 y172 w82 h21 vMyHotKey5, %MyHotKey5%
Gui, Own: Add, Hotkey, x16 y204 w82 h21 vMyHotKey6, %MyHotKey6%
Gui, Own: Add, Hotkey, x16 y236 w82 h21 vMyHotKey7, %MyHotKey7%
Gui, Own: Add, Hotkey, x16 y268 w82 h21 vMyHotKey8, %MyHotKey8%
Gui, Own: Add, Hotkey, x16 y300 w82 h21 vMyHotKey9, %MyHotKey9%
Gui, Own: Add, Hotkey, x16 y332 w82 h21 vMyHotKey10, %MyHotKey10%
Gui, Own: Add, GroupBox, x8 y25 w98 h334 +Center -Background, Комбинация

Gui, Own: Add, Edit, x128 y44 w59 h21 vMySett1, %MySett1%
Gui, Own: Add, Edit, x128 y76 w59 h21 vMySett2, %MySett2%
Gui, Own: Add, Edit, x128 y108 w59 h21 vMySett3, %MySett3%
Gui, Own: Add, Edit, x128 y140 w59 h21 vMySett4, %MySett4%
Gui, Own: Add, Edit, x128 y172 w59 h21 vMySett5, %MySett5%
Gui, Own: Add, Edit, x128 y204 w59 h21 vMySett6, %MySett6%
Gui, Own: Add, Edit, x128 y236 w59 h21 vMySett7, %MySett7%
Gui, Own: Add, Edit, x128 y268 w59 h21 vMySett8, %MySett8%
Gui, Own: Add, Edit, x128 y300 w59 h21 vMySett9, %MySett9%
Gui, Own: Add, Edit, x128 y332 w59 h21 vMySett10, %MySett10%
Gui, Own: Add, GroupBox, x113 y25 w86 h334 +Center -Background, Кол-во вариантов

Gui, Own: Add, Edit, x217 y44 w120 h21 vMyText1, %MyText1%
Gui, Own: Add, Edit, x216 y76 w120 h21 vMyText2, %MyText2%
Gui, Own: Add, Edit, x216 y108 w120 h21 vMyText3, %MyText3%
Gui, Own: Add, Edit, x216 y140 w120 h21 vMyText4, %MyText4%
Gui, Own: Add, Edit, x216 y172 w120 h21 vMyText5, %MyText5%
Gui, Own: Add, Edit, x216 y204 w120 h21 vMyText6, %MyText6%
Gui, Own: Add, Edit, x216 y236 w120 h21 vMyText7, %MyText7%
Gui, Own: Add, Edit, x216 y268 w120 h21 vMyText8, %MyText8%
Gui, Own: Add, Edit, x216 y300 w120 h21 vMyText9, %MyText9%
Gui, Own: Add, Edit, x216 y332 w120 h21 vMyText10, %MyText10%
Gui, Own: Add, GroupBox, x208 y25 w135 h334 +Center -Background, Примечание

Gui, Own: Add, Button, x352 y44 w80 h23 gSett1, Настроить
Gui, Own: Add, Button, x352 y76 w80 h23 gSett2, Настроить
Gui, Own: Add, Button, x352 y108 w80 h23 gSett3, Настроить
Gui, Own: Add, Button, x352 y140 w80 h23 gSett4, Настроить
Gui, Own: Add, Button, x352 y172 w80 h23 gSett5, Настроить
Gui, Own: Add, Button, x352 y204 w80 h23 gSett6, Настроить
Gui, Own: Add, Button, x352 y236 w80 h23 gSett7, Настроить
Gui, Own: Add, Button, x352 y268 w80 h23 gSett8, Настроить
Gui, Own: Add, Button, x352 y300 w80 h23 gSett9, Настроить
Gui, Own: Add, Button, x352 y332 w80 h23 gSett10, Настроить
Gui, Own: Add, GroupBox, x349 y25 w86 h334 +Center -Background, Настройки

Gui, Own: Add, Button, x440 y30 w80 h41 gSubSettVidacha, Бинд быстрых наказаний
Gui, Own: Tab, 2  ; Вкладка свой бинд

Gui, Own: Add, Hotkey, x16 y40 w85 h21 vMy2HotKey1, %My2HotKey1%
Gui, Own: Add, Hotkey, x16 y72 w85 h21 vMy2HotKey2, %My2HotKey2%
Gui, Own: Add, Hotkey, x16 y104 w85 h21 vMy2HotKey3, %My2HotKey3%
Gui, Own: Add, Hotkey, x16 y136 w85 h21 vMy2HotKey4, %My2HotKey4%
Gui, Own: Add, Hotkey, x16 y168 w85 h21 vMy2HotKey5, %My2HotKey5%
Gui, Own: Add, Hotkey, x16 y200 w85 h21 vMy2HotKey6, %My2HotKey6%
Gui, Own: Add, Hotkey, x16 y232 w85 h21 vMy2HotKey7, %My2HotKey7%
Gui, Own: Add, Hotkey, x16 y264 w85 h21 vMy2HotKey8, %My2HotKey8%
Gui, Own: Add, Hotkey, x16 y296 w85 h21 vMy2HotKey9, %My2HotKey9%
Gui, Own: Add, Hotkey, x16 y328 w85 h21 vMy2HotKey10, %My2HotKey10%

Gui, Own: Add, Edit, x112 y40 w400 h21 vMy2Edit1, %My2Edit1%
Gui, Own: Add, Edit, x112 y72 w400 h21 vMy2Edit2, %My2Edit2%
Gui, Own: Add, Edit, x112 y104 w400 h21 vMy2Edit3, %My2Edit3%
Gui, Own: Add, Edit, x112 y136 w400 h21 vMy2Edit4, %My2Edit4%
Gui, Own: Add, Edit, x112 y168 w400 h21 vMy2Edit5, %My2Edit5%
Gui, Own: Add, Edit, x112 y200 w400 h21 vMy2Edit6, %My2Edit6%
Gui, Own: Add, Edit, x112 y232 w400 h21 vMy2Edit7, %My2Edit7%
Gui, Own: Add, Edit, x112 y264 w400 h21 vMy2Edit8, %My2Edit8%
Gui, Own: Add, Edit, x112 y296 w400 h21 vMy2Edit9, %My2Edit9%
Gui, Own: Add, Edit, x112 y328 w400 h21 vMy2Edit10, %My2Edit10%

Gui, Own: Add, Button, x520 y39 w73 h23 g2Tab1, Настроить
Gui, Own: Add, Button, x520 y71 w73 h23 g2Tab2, Настроить
Gui, Own: Add, Button, x520 y103 w73 h23 g2Tab3, Настроить
Gui, Own: Add, Button, x520 y135 w73 h23 g2Tab4, Настроить
Gui, Own: Add, Button, x520 y167 w73 h23 g2Tab5, Настроить
Gui, Own: Add, Button, x520 y199 w73 h23 g2Tab6, Настроить
Gui, Own: Add, Button, x520 y231 w73 h23 g2Tab7, Настроить
Gui, Own: Add, Button, x520 y263 w73 h23 g2Tab8, Настроить
Gui, Own: Add, Button, x520 y295 w73 h23 g2Tab9, Настроить
Gui, Own: Add, Button, x520 y327 w73 h23 g2Tab10, Настроить

Gui, Own: Add, GroupBox, x8 y24 w99 h334 +Center, Комбинация
Gui, Own: Add, GroupBox, x108 y24 w408 h334 +Center, Действие
Gui, Own: Add, GroupBox, x518 y24 w78 h334 +Center -Background, Настройки
Gui, Own: Tab, 3 ; Вкладка Быстрый ответ [1]

Gui, Own: Add, Edit, x16 y40 w85 h21 vCommand1, %Command1%
Gui, Own: Add, Edit, x16 y72 w85 h21 vCommand2, %Command2%
Gui, Own: Add, Edit, x16 y104 w85 h21 vCommand3, %Command3%
Gui, Own: Add, Edit, x16 y136 w85 h21 vCommand4, %Command4%
Gui, Own: Add, Edit, x16 y168 w85 h21 vCommand5, %Command5%
Gui, Own: Add, Edit, x16 y200 w85 h21 vCommand6, %Command6%
Gui, Own: Add, Edit, x16 y232 w85 h21 vCommand7, %Command7%
Gui, Own: Add, Edit, x16 y264 w85 h21 vCommand8, %Command8%
Gui, Own: Add, Edit, x16 y296 w85 h21 vCommand9, %Command9%
Gui, Own: Add, Edit, x16 y328 w85 h21 vCommand10, %Command10%

Gui, Own: Add, Edit, x112 y40 w400 h21 vComDev1, %ComDev1%
Gui, Own: Add, Edit, x112 y72 w400 h21 vComDev2, %ComDev2%
Gui, Own: Add, Edit, x112 y104 w400 h21 vComDev3, %ComDev3%
Gui, Own: Add, Edit, x112 y136 w400 h21 vComDev4, %ComDev4%
Gui, Own: Add, Edit, x112 y168 w400 h21 vComDev5, %ComDev5%
Gui, Own: Add, Edit, x112 y200 w400 h21 vComDev6, %ComDev6%
Gui, Own: Add, Edit, x112 y232 w400 h21 vComDev7, %ComDev7%
Gui, Own: Add, Edit, x112 y264 w400 h21 vComDev8, %ComDev8%
Gui, Own: Add, Edit, x112 y296 w400 h21 vComDev9, %ComDev9%
Gui, Own: Add, Edit, x112 y328 w400 h21 vComDev10, %ComDev10%

Gui, Own: Add, Button, x520 y39 w73 h23 g3Tab1, Настроить
Gui, Own: Add, Button, x520 y71 w73 h23 g3Tab2, Настроить
Gui, Own: Add, Button, x520 y103 w73 h23 g3Tab3, Настроить
Gui, Own: Add, Button, x520 y135 w73 h23 g3Tab4, Настроить
Gui, Own: Add, Button, x520 y167 w73 h23 g3Tab5, Настроить
Gui, Own: Add, Button, x520 y199 w73 h23 g3Tab6, Настроить
Gui, Own: Add, Button, x520 y231 w73 h23 g3Tab7, Настроить
Gui, Own: Add, Button, x520 y263 w73 h23 g3Tab8, Настроить
Gui, Own: Add, Button, x520 y295 w73 h23 g3Tab9, Настроить
Gui, Own: Add, Button, x520 y327 w73 h23 g3Tab10, Настроить

Gui, Own: Add, GroupBox, x8 y24 w99 h334 +Center, Комбинация
Gui, Own: Add, GroupBox, x108 y24 w408 h334 +Center, Действие
Gui, Own: Add, GroupBox, x518 y24 w78 h334 +Center -Background, Настройки

Gui, Own: Tab, 4 ; Вкладка Быстрый ответ [2]

Gui, Own: Add, Edit, x16 y40 w85 h21 vCommand11, %Command11%
Gui, Own: Add, Edit, x16 y72 w85 h21 vCommand12, %Command12%
Gui, Own: Add, Edit, x16 y104 w85 h21 vCommand13, %Command13%
Gui, Own: Add, Edit, x16 y136 w85 h21 vCommand14, %Command14%
Gui, Own: Add, Edit, x16 y168 w85 h21 vCommand15, %Command15%
Gui, Own: Add, Edit, x16 y200 w85 h21 vCommand16, %Command16%
Gui, Own: Add, Edit, x16 y232 w85 h21 vCommand17, %Command17%
Gui, Own: Add, Edit, x16 y264 w85 h21 vCommand18, %Command18%
Gui, Own: Add, Edit, x16 y296 w85 h21 vCommand19, %Command19%
Gui, Own: Add, Edit, x16 y328 w85 h21 vCommand20, %Command20%

Gui, Own: Add, Edit, x112 y40 w400 h21 vComDev11, %ComDev11%
Gui, Own: Add, Edit, x112 y72 w400 h21 vComDev12, %ComDev12%
Gui, Own: Add, Edit, x112 y104 w400 h21 vComDev13, %ComDev13%
Gui, Own: Add, Edit, x112 y136 w400 h21 vComDev14, %ComDev14%
Gui, Own: Add, Edit, x112 y168 w400 h21 vComDev15, %ComDev15%
Gui, Own: Add, Edit, x112 y200 w400 h21 vComDev16, %ComDev16%
Gui, Own: Add, Edit, x112 y232 w400 h21 vComDev17, %ComDev17%
Gui, Own: Add, Edit, x112 y264 w400 h21 vComDev18, %ComDev18%
Gui, Own: Add, Edit, x112 y296 w400 h21 vComDev19, %ComDev19%
Gui, Own: Add, Edit, x112 y328 w400 h21 vComDev20, %ComDev20%

Gui, Own: Add, Button, x520 y39 w73 h23 g3Tab11, Настроить
Gui, Own: Add, Button, x520 y71 w73 h23 g3Tab12, Настроить
Gui, Own: Add, Button, x520 y103 w73 h23 g3Tab13, Настроить
Gui, Own: Add, Button, x520 y135 w73 h23 g3Tab14, Настроить
Gui, Own: Add, Button, x520 y167 w73 h23 g3Tab15, Настроить
Gui, Own: Add, Button, x520 y199 w73 h23 g3Tab16, Настроить
Gui, Own: Add, Button, x520 y231 w73 h23 g3Tab17, Настроить
Gui, Own: Add, Button, x520 y263 w73 h23 g3Tab18, Настроить
Gui, Own: Add, Button, x520 y295 w73 h23 g3Tab19, Настроить
Gui, Own: Add, Button, x520 y327 w73 h23 g3Tab20, Настроить

Gui, Own: Add, Button, x370 y372 w103 h51 gDopGui, Дополнительные строки
Gui, Own: Add, GroupBox, x365 y362 w112 h67

Gui, Own: Add, GroupBox, x8 y24 w99 h334 +Center, Комбинация
Gui, Own: Add, GroupBox, x108 y24 w408 h334 +Center, Действие
Gui, Own: Add, GroupBox, x518 y24 w78 h334 +Center -Background, Настройки

Gui, Own: Tab, 5 ; Вкладка Настройки

Gui, Own: Add, Hotkey, x350 y33 w88 h21 vHotLogin1, %HotLogin1%
Gui, Own: Add, Edit, x440 y33 w120 h21 +Password vAutoLogin1, %AutoLogin1%
Gui, Own: Add, Text, x415 y54 w61 h13 +0x200 , Автологин
Gui, Own: Add, GroupBox, x346 y21 w218 h53

Gui, Own: Add, Hotkey, x400 y90 w88 h21 vHotLogin2, %HotLogin2%
Gui, Own: Add, Text, x355 y115 w200 h13 +0x200, Отправка репорта с учетом в счетчике
Gui, Own: Add, Button, x350 y87 w49 h30 gPeremove3, Настройки
Gui, Own: Add, GroupBox, x346 y78 w218 h53

Gui, Own: Add, Hotkey, x400 y140 w88 h21 vHotLogin3, %HotLogin3%
Gui, Own: Add, Text, x370 y165 w200 h13 +0x200, Открыть встроенный браузер
Gui, Own: Add, GroupBox, x346 y128 w218 h53

Gui, Own: Add, CheckBox, x16 y29 w200 h30 +Center vCheck51 Checked%Check51%, Использовать 1,2 Доп.Клавишу мыши
Gui, Own: Add, CheckBox, x16 y66 w200 h30 +Center vCheck52 Checked%Check52%, Использовать нажатие на колесико мыши
Gui, Own: Add, CheckBox, x16 y104 w200 h30 +Center vCheck53 Checked%Check53%, Использовать прокрут колеса мыши(вверх, вниз)
Gui, Own: Add, CheckBox, x16 y141 w200 h30 +Center vCheck80 Checked%Check80%, Отображать HUD репорта
Gui, Own: Add, CheckBox, x16 y180 w200 h30 +Center vCheck1 Checked%Check1%, Отображать HUD подсказок
Gui, Own: Add, GroupBox, x8 y21 w328 h40
Gui, Own: Add, GroupBox, x8 y59 w328 h40
Gui, Own: Add, GroupBox, x8 y97 w328 h40
Gui, Own: Add, GroupBox, x8 y134 w328 h40
Gui, Own: Add, GroupBox, x8 y172 w328 h40
Gui, Own: Add, Button, x230 y29 w100 h30 gmouse1, Сохранить
Gui, Own: Add, Button, x230 y67 w100 h30 gmouse2, Сохранить
Gui, Own: Add, Button, x230 y104 w100 h30 gmouse3, Сохранить

Gui, Own: Add, Button, x225 y141 w60 h30 gmouse4, Сохранить
Gui, Own: Add, Button, x285 y141 w49 h30 gPeremove1, Настройки

Gui, Own: Add, Button, x225 y180 w60 h30 gmouse5, Сохранить
Gui, Own: Add, Button, x285 y180 w49 h30 gPeremove2, Настройки

Gui, Own: Add, CheckBox, x16 y218 w210 h30 +Center vCheck82 Checked%Check82%, Автоматически использовать kickme в случае долгого афк
Gui, Own: Add, GroupBox, x8 y210 w328 h40
Gui, Own: Add, Button, x260 y218 w70 h30 gSetkickme, Настройки

Gui, Own: Add, CheckBox, x16 y258 w240 h30 +Center vCheck83 Checked%Check83%, Использовать окно с дополнительными кнопками в консоли
Gui, Own: Add, GroupBox, x8 y250 w328 h40
Gui, Own: Add, Button, x260 y258 w70 h30 gsett, Настройки

Gui, Own: Add, Button, x440 y327 w150 h30 gPassAdm, Авторизоваться как администратор

Gui, Own: Add, Button, x260 y330 w87 h23 gCounter13, Перезагрузить

Gui, Own: Add, Text, x30 y340, ATLOG: %HWID%

Gui, Own: Add, Button, x350 y327 w87 h30 gbitiyfail, Проверить файлы
Gui, Own: Show, w600 h430, Admin-Tools by Notoriuz

Return
OwnGuiEscape:
OwnGuiClose:
Gui, Own: Destroy
Gosub, StartApp
Return
;-----------------------------------------------------------------------
;-----------------------------------------------------------------------

CheckOwn:
Gui, Own: Destroy
Gui, StartApp: Destroy
MsgBox, 3, Выход из ATools!, Сохранить данные настроек?
IfMsgBox Yes
  {
  Gosub, AllSave
  Gosub, lala2
  }
IfMsgBox No
  {
  Gosub, lala2
  }
IfMsgBox Cancel
{
  Gosub, StartApp
}
Return
;-----------------------------------------------------------------------
;-----------------------------------------------------------------------


;----------------------INFO---------------------------------------
info:
;Gui, 17: Show, w350 h110, Admin-Tools by Notoriuz
;Gui, 17: Font
;Gui, 17: Font, s9 Norm, Trebuchet MS
;Gui, 17: Add, Text, x62 y5 w226 h23 +0x200, Важные ссылки ты найдешь только тут
;Gui, 17: Font, s9 Norm, Trebuchet MS
;Gui, 17: Add, Text, x13 y39 w98 h25 +0x200 +Center, Дискорд сервер -
;Gui, 17: Font, s9 Norm, Trebuchet MS
;Gui, 17: Add, Link, x115 y42 w40 h23, <a href="https://discord.gg/vjgVUdEd">ссылка</a>
;Gui, 17: Font, s9 Norm, Trebuchet MS
;Gui, 17: Add, Text, x230 y39 w30 h25 +0x200, FAQ -
;Gui, 17: Font, s9 Norm, Trebuchet MS
;Gui, 17: Add, Link, x265 y42 w40 h23, <a href="https://docs.google.com/document/d/16fgl6injDQAkyl8D9tBUQyczKLDj6OXe3RrwiHujWu0/edit?usp=sharing">ссылка</a>
;Gui, 17: Font, s9 Norm, Trebuchet MS
;Gui, 17: Add, Text, x50 y74 w240 h25 +0x200 +Center, Дискорд разработчика - NoFunny#2002
;Gui, 17: Font
;Gui, 17: Add, GroupBox, x44 y-3 w260 h36
;Gui, 17: Add, GroupBox, x6 y31 w160 h36
;Gui, 17: Add, GroupBox, x55 y65 w230 h36
;Gui, 17: Add, GroupBox, x200 y31 w140 h36
;return
;17GuiEscape:
;17GuiClose:
   ; Gui Destroy
Msgbox, В разработке!
return

;-----------------------------------------------------------------------
;-----------------------------------------------------------------------
;------------------ Выдача наказаний --------------------------------------

PassAdm:
Gui, 84: Add, Edit, x16 y32 w120 h21 +Password vpassword, %password%
Gui, 84: Add, Text, x16 y8 w120 h23 +0x200 +Center, Введите пароль
Gui, 84: Add, Button, x16 y64 w120 h23 gCheckPassAdm1, Проверить
Gui, 84: Add, GroupBox, x11 y3 w132 h91

Gui, 84: Show, w150 h99
Return
84GuiEscape:
84GuiClose:
    Gui, 84: Destroy
return


DopGui:
Gui, Own: Destroy
Gui, 85: Add, GroupBox, x109 y5 w417 h404 +Center, Действие
Gui, 85: Add, GroupBox, x7 y5 w99 h404 +Center, Комбинация

Gui, 85: Add, Edit, x10 y24 w92 h21 vBindCommand1, %BindCommand1%
Gui, 85: Add, Edit, x10 y48 w92 h21 vBindCommand2, %BindCommand2%
Gui, 85: Add, Edit, x10 y72 w92 h21 vBindCommand3, %BindCommand3%
Gui, 85: Add, Edit, x10 y96 w92 h21 vBindCommand4, %BindCommand4%
Gui, 85: Add, Edit, x10 y120 w92 h21 vBindCommand5, %BindCommand5%
Gui, 85: Add, Edit, x10 y144 w92 h21 vBindCommand6, %BindCommand6%
Gui, 85: Add, Edit, x10 y168 w92 h21 vBindCommand7, %BindCommand7%
Gui, 85: Add, Edit, x10 y192 w92 h21 vBindCommand8, %BindCommand8%
Gui, 85: Add, Edit, x10 y216 w92 h21 vBindCommand9, %BindCommand9%
Gui, 85: Add, Edit, x10 y240 w92 h21 vBindCommand10, %BindCommand10%
Gui, 85: Add, Edit, x10 y264 w92 h21 vBindCommand11, %BindCommand11%
Gui, 85: Add, Edit, x10 y288 w92 h21 vBindCommand12, %BindCommand12%
Gui, 85: Add, Edit, x10 y312 w92 h21 vBindCommand13, %BindCommand13%
Gui, 85: Add, Edit, x10 y336 w92 h21 vBindCommand14, %BindCommand14%
Gui, 85: Add, Edit, x10 y360 w92 h21 vBindCommand15, %BindCommand15%
Gui, 85: Add, Edit, x10 y384 w92 h21 vBindCommand16, %BindCommand16%

Gui, 85: Add, Edit, x113 y24 w408 h21 vBindComDev1, %BindComDev1%
Gui, 85: Add, Edit, x113 y48 w408 h21 vBindComDev2, %BindComDev2%
Gui, 85: Add, Edit, x113 y72 w408 h21 vBindComDev3, %BindComDev3%
Gui, 85: Add, Edit, x113 y96 w408 h21 vBindComDev4, %BindComDev4%
Gui, 85: Add, Edit, x113 y120 w408 h21 vBindComDev5, %BindComDev5%
Gui, 85: Add, Edit, x113 y144 w408 h21 vBindComDev6, %BindComDev6%
Gui, 85: Add, Edit, x113 y168 w408 h21 vBindComDev7, %BindComDev7%
Gui, 85: Add, Edit, x113 y192 w408 h21 vBindComDev8, %BindComDev8%
Gui, 85: Add, Edit, x113 y216 w408 h21 vBindComDev9, %BindComDev9%
Gui, 85: Add, Edit, x113 y240 w408 h21 vBindComDev10, %BindComDev10%
Gui, 85: Add, Edit, x113 y264 w408 h21 vBindComDev11, %BindComDev11%
Gui, 85: Add, Edit, x113 y288 w408 h21 vBindComDev12, %BindComDev12%
Gui, 85: Add, Edit, x113 y312 w408 h21 vBindComDev13, %BindComDev13%
Gui, 85: Add, Edit, x113 y336 w408 h21 vBindComDev14, %BindComDev14%
Gui, 85: Add, Edit, x113 y360 w408 h21 vBindComDev15, %BindComDev15%
Gui, 85: Add, Edit, x113 y384 w408 h21 vBindComDev16, %BindComDev16%

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
    Gui, 85: Destroy
    Gosub, StartFullGui
return
;-----------------------------------------------------------------------
;-----------------------------------------------------------------------
;-----------------------------------------------------------------------

;--------------------Изменение количества репорта-------------------

Clear:
GuiControlGet, %Counter%
Bord := Counter
GuiControl,, Bord, %Bord%
Gui, CLR: Add, Button, x8 y8 w80 h23 gSet-1, -1
Gui, CLR: Add, Button, x88 y8 w80 h23 gSet-10, -10
Gui, CLR: Add, Button, x8 y32 w80 h23 gSet+1, +1
Gui, CLR: Add, Button, x88 y32 w80 h23 gSet+10, +10
Gui, CLR: Add, Button, x8 y56 w161 h23 gSet0, Обнулить
Gui, CLR: Add, Text, x192 y8 w120 h34, Количество репортов после редактирования
Gui, CLR: Add, Text, x224 y37 w41 h23 +0x200 +Border +Center vBord, %Bord%
Gui, CLR: Add, Button, x208 y62 w80 h23 gBordSave, Применить
Gui, CLR: Add, GroupBox, x3 y-3 w171 h90
Gui, CLR: Add, GroupBox, x176 y-3 w145 h90

Gui, CLR: Show, w326 h91, Корректировка репорта
Return
CLRGuiEscape:
CLRGuiClose:
    Gui Destroy
Return

;-----------------------------------------------------------------------
;-----------------------------------------------------------------------
;-----------------------------------------------------------------------
hudlabstart:
labsett := 1
SetTimer, hudlub, 4000
Return

hudrepstart:
repsett := 1
SetTimer, hudrep, 4000
Return

hudhelpstart:
Helpsett := 1
SetTimer, HelpCoord, 4000
Return

hudlub: ; Счетчик репорта HUD
If WinActive("ahk_exe GTA5.exe")
  {
if labsett = 1
{
  if hudih1 = 100
    {
    Gui, 3a: +LastFound +AlwaysOnTop -Caption +ToolWindow +E0x20 ; +ToolWindow avoids a taskbar button and an alt-tab menu item.
    Gui, 3a: Font, Intro
    Gui, 3a: Font,, %MySliderFont1%
    Gui, 3a: Font, s%MySlider2% ; Set a large font size (32-point).
    Gui, 3a: Font, q1
    Gui, 3a: Font, w%MySlider3%
    Gui, 3a: Add, Text, xm ym c%Set1Color%, REPS: %Counter%
    Gui, 3a: Add, Text, xm ym+15 c%Set2Color%, SESSION: %Counter2%
    If Check85 > 0
      {
        Gui, 3a: Color, cWhite
    WinSet, TransColor, %CustomColor% %MySlider1%
      }
    else
      {
        Gui, 3a: Color, %FonSett1%
        WinSet, TransColor, %FonSett1% %MySlider1%
      }
      Gui, 3a: Show, x%xpos% y%ypos% NoActivate
labsett := 0
  }
}
else
labsett := 0
}
Else 
  {
labsett := 1
  Gui, 3a: Destroy
  }
return

hudrep: ; HUD подсказок
If WinActive("ahk_exe GTA5.exe")
  {
if repsett = 1
{
if hudih2 = 100
  {
  Gui, 3b: +LastFound +AlwaysOnTop -Caption +ToolWindow  +E0x20 ; +ToolWindow avoids a taskbar button and an alt-tab menu item.
  Gui, 3b: Font, Intro
  Gui, 3b: Font,, %MySliderFont2%
  Gui, 3b: Font, s%My2Slider2% ; Set a large font size (32-point).
  Gui, 3b: Font, q1
  Gui, 3b: Font, w%My2Slider3%
  Gui, 3b: Add, Text, xm ym c%2Set1Color%, %HelpText%

  If Check84 > 0
    {
      Gui, 3b: Color, cWhite
  WinSet, TransColor, %CustomColor% %My2Slider1%
    }
  else
    {
      Gui, 3b: Color, %FonSett2%
      WinSet, TransColor, %FonSett2% %My2Slider1%
    }

    Gui, 3b: Show, x%xpos1% y%ypos1% NoActivate
repsett := 0
  }
}
else
repsett := 0
}
Else 
  {
repsett := 1
  Gui, 3b: Destroy
  }
return

;-----------------------------------------------------------------------
;-----------------------------------------------------------------------
;-----------------------------------------------------------------------

Peremove1: ; Настройки HUD счетчика репорта
Gui, Own: Hide
Gui, HUD1: +AlwaysOnTop
Gui, HUD1: Add, Text, x13 y9 w54 h23 +0x200, Цвет №1
Gui, HUD1: Add, Text, x13 y45 w54 h23 +0x200, Цвет №2
Gui, HUD1: Add, ListBox, gPereSet1 x72 y6 w120 h30 vRepColor1, Красный|Зеленый|Синий|Жёлтый|Фиолетовый|Голубой|Черный|Белый
Gui, HUD1: Add, ListBox, gPereSet1 x72 y43 w120 h30 vRepColor2, Красный|Зеленый|Синий|Жёлтый|Фиолетовый|Голубой|Черный|Белый
Gui, HUD1: Add, Text, x13 y82 w54 h23 +0x200, Шрифт
Gui, HUD1: Add, ListBox, gPereSet1 x72 y80 w120 h30 vMySliderFont1, Arial|MS sans serif|Verdana|Arimo-Bold|Courier New|Impact|Tahoma|Times New Roman

Gui, HUD1: Add, GroupBox, x5 y34 w191 h42
Gui, HUD1: Add, GroupBox, x5 y72 w191 h42
Gui, HUD1: Add, GroupBox, x5 y-3 w191 h42

Gui, HUD1: Add, Text, x40 y120 w120 h23 +0x200 +Center, Прозрачность
Gui, HUD1: Add, Slider, gPereSet1 x10 y140 w181 h24 +NoTicks +0x40 vMySlider1 +Tooltip, %MySliderVid1%
Gui, HUD1: Add, GroupBox, x5 y110 w191 h55

Gui, HUD1: Add, Button, x304 y144 w80 h25 gSetPeremove1, Положение
Gui, HUD1: Add, Button, x392 y144 w80 h25 gSaveSetHUD1, Применить
Gui, HUD1: Add, Checkbox, x210 y144 vCheck85 Checked%Check85% +Center, Отображать`nфон

Gui, HUD1: Add, Text, x232 y16 w120 h23 +0x200 +Center, Размер шрифта
Gui, HUD1: Add, Slider, gPereSet1 x208 y40 w181 h24 +0x40 +NoTicks vMySlider2 +Tooltip, %MySliderVid2%
Gui, HUD1: Add, GroupBox, x200 y8 w191 h62
Gui, HUD1: Add, GroupBox, x200 y72 w191 h62
Gui, HUD1: Add, Slider, gPereSet1 x208 y104 w181 h24 +0x40 +NoTicks vMySlider3 +Tooltip, %MySliderVid3%
Gui, HUD1: Add, Text, x224 y80 w145 h23 +0x200 +Center, Насыщенность(жирность)

Gui, HUD1: Show, , Настройка HUD Репорта
return
HUD1GuiEscape:
HUD1GuiClose:
    Gui, 3a: Destroy
    Gui, HUD1: Destroy
    Gui, Own: Show
return


Peremove2: ; Настройка HUD подсказок
Gui, Own: Hide
Gui, HUD2: +AlwaysOnTop
Gui, HUD2: Add, Text, x13 y20 w54 h23 +0x200, Цвет №1
Gui, HUD2: Add, ListBox, gPereSet2 x72 y17 w120 h30 vRep2Color1, Красный|Зеленый|Синий|Жёлтый|Фиолетовый|Голубой|Черный|Белый
Gui, HUD2: Add, GroupBox, x5 y8 w191 h42

Gui, HUD2: Add, Text, x18 y55 w54 h23 +0x200, Шрифт
Gui, HUD2: Add, ListBox, gPereSet2 x72 y53 w120 h30 vMySliderFont2, Arial|MS sans serif|Verdana|Arimo-Bold|Courier New|Impact|Tahoma|Times New Roman
Gui, HUD2: Add, GroupBox, x5 y45 w191 h42

Gui, HUD2: Add, Text, x40 y90 w120 h23 +0x200 +Center, Прозрачность
Gui, HUD2: Add, Slider, gPereSet2 x10 y110 w181 h22 +NoTicks +0x40 vMy2Slider1 +Tooltip, %My2SliderVid1%
Gui, HUD2: Add, GroupBox, x5 y84 w191 h50

Gui, HUD2: Add, Button, x304 y144 w80 h25 gSetPeremove2, Положение
Gui, HUD2: Add, Button, x392 y144 w80 h25 gSaveSetHUD2, Применить
Gui, HUD2: Add, Button, x175 y144 w120 h25 gHelpButt, Настроить подсказки

Gui, HUD2: Add, Text, x232 y16 w120 h23 +0x200 +Center, Размер шрифта
Gui, HUD2: Add, Slider, gPereSet2 x208 y40 w181 h24 +0x40 +NoTicks vMy2Slider2 +Tooltip, %My2SliderVid2%
Gui, HUD2: Add, GroupBox, x200 y8 w191 h62
Gui, HUD2: Add, GroupBox, x200 y72 w191 h62
Gui, HUD2: Add, Slider, gPereSet2 x208 y104 w181 h24 +0x40 +NoTicks vMy2Slider3 +Tooltip, %My2SliderVid3%
Gui, HUD2: Add, Text, x224 y80 w145 h23 +0x200 +Center, Насыщенность(жирность)
Gui, HUD2: Add, Checkbox, x90 y144 vCheck84 Checked%Check84% +Center, Отображать`nфон
Gui, HUD2: Show, , Настройка HUD Подсказок
return
HUD2GuiEscape:
HUD2GuiClose:
    Gui, 3b: Destroy
    Gui, HUD2: Destroy
    Gui, Own: Show
return

Peremove3: ; Настройка OVERLAY Уведомления при нажатии ENTER
Gui, Own: Hide
Gui, HUD4: +AlwaysOnTop
Gui, HUD4: Add, Text, x13 y20 w54 h23 +0x200, Цвет №1
Gui, HUD4: Add, ListBox, gPereSet3 x72 y17 w120 h30 vRep3Color1, Красный|Зеленый|Синий|Жёлтый|Фиолетовый|Голубой|Черный|Белый
Gui, HUD4: Add, GroupBox, x5 y8 w191 h42

Gui, HUD4: Add, Text, x18 y55 w54 h23 +0x200, Шрифт
Gui, HUD4: Add, ListBox, gPereSet3 x72 y53 w120 h30 vMySliderFont3, Arial|MS sans serif|Verdana|Arimo-Bold|Courier New|Impact|Tahoma|Times New Roman
Gui, HUD4: Add, GroupBox, x5 y45 w191 h42

Gui, HUD4: Add, Text, x40 y90 w120 h23 +0x200 +Center, Прозрачность
Gui, HUD4: Add, Slider, gPereSet3 x10 y110 w181 h24 +NoTicks +0x40 vMy3Slider1 +Tooltip, %My3SliderVid1%
Gui, HUD4: Add, GroupBox, x5 y84 w191 h50

Gui, HUD4: Add, Button, x304 y144 w80 h25 gSetPeremove3, Положение
Gui, HUD4: Add, Button, x392 y144 w80 h25 gSaveSetHUD3, Применить
Gui, HUD4: Add, Checkbox, x80 y144 vCheck86 Checked%Check86% +Center, Отображать`nфон

Gui, HUD4: Add, CheckBox, x170 y144 +Center vCheck81 Checked%Check81%, Использовать`noverlay-yведомление

Gui, HUD4: Add, Text, x232 y16 w120 h23 +0x200 +Center, Размер шрифта
Gui, HUD4: Add, Slider, gPereSet3 x208 y40 w181 h24 +0x40 +NoTicks vMy3Slider2 +Tooltip, %My3SliderVid2%
Gui, HUD4: Add, GroupBox, x200 y8 w191 h62
Gui, HUD4: Add, GroupBox, x200 y72 w191 h62
Gui, HUD4: Add, Slider, gPereSet3 x208 y104 w181 h24 +0x40 +NoTicks vMy3Slider3 +Tooltip, %My3SliderVid3%
Gui, HUD4: Add, Text, x224 y80 w145 h23 +0x200 +Center, Насыщенность(жирность)
Gui, HUD4: Show, , Настройка функции отправки

Return
HUD4GuiEscape:
HUD4GuiClose:
  Gui, 3bb: Destroy
    Gui, HUD4: Destroy
    Gui, Own: Show
return

HelpButt: ; Настройка самого текста подсказок
Gosub, StartFullGui
Gui, HUD2: Destroy
Gui, HUD3: +AlwaysOnTop
Gui, HUD3: Add, Edit, x8 y8 w606 h379 vHelpText, %HelpText%
Gui, HUD3: Add, Button, x272 y392 w80 h23 gHelpSave, Cохранить
Gui, HUD3: Show, w620 h420, Настройка текста подсказки
WinMove, Настройка текста подсказки, , 1100, 450
return
HUD3GuiEscape:
HUD3GuiClose:
    Gui, HUD3: Destroy
    Gosub, Peremove2
return

;-----------------------------------------------------------------------
;-----------------------------------------------------------------------
;-----------------------------------------------------------------------

bitiyfail: ; Проверка файлов
Gui, Own: Hide
Gui 1s: Add, Text, x18 y6 w246 h64 +Center, В случае если найдены отсутствующие/неактуальные файлы выберите Ваш сервер и нажмите "GO".
Gui 1s: Add, ListBox, x56 y58 w165 h54 vChoice, Del Perro|Richman|Strawberry|Rockford
Gui 1s: Add, Button, x223 y57 w50 h44 gAction, GO
Gui 1s: Show, w276 h113, Warning...
Return
1sGuiEscape:
1sGuiClose:
    Gui Destroy
    Gui, Own: Show
return



;-----------------------------------------------------------------------
;-----------------------------------------------------------------------
;-----------------------------------------------------------------------

sifinder: ; Стартап браузера
#Include %a_temp%\AuLib\game-gui-browser-5.ahk
return

;-----------------------------------------------------------------------
;-----------------------------------------------------------------------
;-----------------------------------------------------------------------

Setkickme: ; Настройка кик в случае афк
Gui, kick1: +AlwaysOnTop
Gui, kick1: Add, Edit, x8 y56 w52 h21 vkicktime, %kicktime%
Gui, kick1: Add, Text, x4 y8 w173 h48 +Center, Укажите время, через которое в случае неактивности начнется таймер с уведомлением
Gui, kick1: Add, Text, x64 y53 w120 h23 +0x200, *указывать в минутах
Gui, kick1: Add, Button, x56 y80 w80 h23 gSavekick, Применить

Gui, kick1: Show, w183 h107, Настройки
Return
kick1GuiEscape:
kick1GuiClose:
    Gui Destroy
return

;-----------------------------------------------------------------------
;-----------------------------------------------------------------------
;-----------------------------------------------------------------------

HideTrayTip() { ; Прятать уведомление
    TrayTip  ; Attempt to hide it the normal way.
    if SubStr(A_OSVersion,1,3) = "10." {
        Menu Tray, NoIcon
        Sleep 200  ; It may be necessary to adjust this sleep.
        Menu Tray, Icon
    }
}


;-----------------------------------------------------------------------
;-----------------------------------------------------------------------
;-----------------------------------------------------------------------


WarningDiscord: ; ТЕГ В Дискорд если код не зареган
FormatTime, TimeString

url:="https://discord.com/api/webhooks/1085517933259804763/oUHLy3jWmtjMwUOL8hGRvfgE7q5ME7tuwJI5l8F3lONgzXBH5PJJIKdTRg0vzyGsUOkM" ; use the url from Discord webhook bot

getip := % UrlGET("https://ipv4.icanhazip.com")
getnagip := RegExReplace(getip,"\.? *(\n|\r)","")

postdata=
(
{
 "content": "<@&1063564868151672892>",
  "embeds": [
    {
  "title": "Обнаружена попытка запуска вне авторизации.",
      "description": "Предположительный код - %HWID%\nIP - ||%getnagip%||\n Текущее время - %TimeString%",
      "color": 16711680,
      "thumbnail": {
        "url": ""
      },
      "image": {
        "url": ""
      }
    }
  ]
}
) 
WebRequest := ComObjCreate("WinHttp.WinHttpRequest.5.1")
WebRequest.Open("POST", url, false)
WebRequest.SetRequestHeader("Content-Type", "application/json")
WebRequest.Send(postdata)

;---------------------------------------------------------------------------------------------------------------

UrlGET(URL) {
   HTTP := ComObjCreate("WinHttp.WinHttpRequest.5.1") 
   HTTP.Open("GET", URL, false)
   HTTP.Send()
   return HTTP.ResponseText
}
Return

;---------------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------------
;--------------------Меню наказаний-------------------------------------
;---------------------------------------------------------------------------------------------------------------
SubSettVidacha:
Gui, Own: Hide
Gui, AdMBind: Add, GroupBox, x16 y3 w83 h311 +Center, Команда
Gui, AdMBind: Add, Edit, x24 y24 w64 h21 vComAdm1, %ComAdm1%
Gui, AdMBind: Add, Edit, x24 y48 w64 h21 vComAdm2, %ComAdm2%
Gui, AdMBind: Add, Edit, x24 y72 w64 h21 vComAdm3, %ComAdm3%
Gui, AdMBind: Add, Edit, x24 y96 w64 h21 vComAdm4, %ComAdm4%
Gui, AdMBind: Add, Edit, x24 y120 w64 h21 vComAdm5, %ComAdm5%
Gui, AdMBind: Add, Edit, x24 y144 w64 h21 vComAdm6, %ComAdm6%
Gui, AdMBind: Add, Edit, x24 y168 w64 h21 vComAdm7, %ComAdm7%
Gui, AdMBind: Add, Edit, x24 y192 w64 h21 vComAdm8, %ComAdm8%
Gui, AdMBind: Add, Edit, x24 y216 w64 h21 vComAdm9, %ComAdm9%
Gui, AdMBind: Add, Edit, x24 y240 w64 h21 vComAdm10, %ComAdm10%
Gui, AdMBind: Add, Edit, x24 y264 w64 h21 vComAdm11, %ComAdm11%
Gui, AdMBind: Add, Edit, x24 y288 w64 h21 vComAdm12, %ComAdm12%
Gui, AdMBind: Add, GroupBox, x104 y2 w313 h311 +Center, Наказание
Gui, AdMBind: Add, Edit, x112 y24 w297 h21 vComAdmText1, %ComAdmText1%
Gui, AdMBind: Add, Edit, x112 y48 w297 h21 vComAdmText2, %ComAdmText2%
Gui, AdMBind: Add, Edit, x112 y72 w297 h21 vComAdmText3, %ComAdmText3%
Gui, AdMBind: Add, Edit, x112 y96 w297 h21 vComAdmText4, %ComAdmText4%
Gui, AdMBind: Add, Edit, x112 y120 w297 h21 vComAdmText5, %ComAdmText5%
Gui, AdMBind: Add, Edit, x112 y144 w297 h21 vComAdmText6, %ComAdmText6%
Gui, AdMBind: Add, Edit, x112 y168 w297 h21 vComAdmText7, %ComAdmText7%
Gui, AdMBind: Add, Edit, x112 y192 w297 h21 vComAdmText8, %ComAdmText8%
Gui, AdMBind: Add, Edit, x112 y216 w297 h21 vComAdmText9, %ComAdmText9%
Gui, AdMBind: Add, Edit, x112 y240 w297 h21 vComAdmText10, %ComAdmText10%
Gui, AdMBind: Add, Edit, x112 y264 w297 h21 vComAdmText11, %ComAdmText11%
Gui, AdMBind: Add, Edit, x112 y288 w297 h21 vComAdmText12, %ComAdmText12%

Gui, AdMBind: Add, Button, x120 y315 w140 h23 gPeremove5, Настройки подсказки
Gui, AdMBind: Add, Button, x263 y315 w80 h23 gHelpMSG, Help
Gui, AdMBind: Add, Button, x345 y315 w80 h23 gSaveCAdmd, Сохранить
Gui, AdMBind: Show, w430 h345, Настройка меню с выдачей наказаний
Return
AdMBindGuiEscape:
AdMBindGuiClose:
  Gui, AdMBind: Destroy
  Gui, Own: Show
Return

HelpMSG:
MsgBox,, Подсказка, Используйте "id" для указания ID игрока, "time" для времени наказания.`nПример: prison id time DM. Команда:dm`nИспользование: Вводим dm указываем id и время, Пример: dm 1 15
Return

HelpCoord:
My44GIniRead(VidachaText, "settings_abind.ini", "TextPodskazki", "Key", "MyError")
My44GIniRead(ByRef VidachaText, Filename, Section, Key, ByRef Default)
{
   loop
   {
      IniRead, Value, %Filename%, %Section%, %A_Index%|%Key%, %Default%
     If (Value = Default)
         break
      If A_Index = 1
        VidachaText := value 
      else
        VidachaText .= "`n" value
    }
}

If WinActive("ahk_exe GTA5.exe")
  {
if Helpsett = 1
{
      Gui, 3aa: +LastFound +AlwaysOnTop -Caption +ToolWindow +E0x20 ; +ToolWindow avoids a taskbar button and an alt-tab menu item.
      Gui, 3aa: Font, Intro
      Gui, 3aa: Font,, %MySliderFont5%
      Gui, 3aa: Font, s%My5Slider2% ; Set a large font size (32-point).
      Gui, 3aa: Font, q1
      Gui, 3aa: Font, w%My5Slider3%
      Gui, 3aa: Add, Text, xm ym c%5Set1Color%, %VidachaText%
      If Check87 > 0
        {
          Gui, 3aa: Color, cWhite
      WinSet, TransColor, %CustomColor% %My5Slider1%
        }
      else
        {
          Gui, 3aa: Color, %FonSett5%
          WinSet, TransColor, %FonSett5% %My5Slider1%
        }
        Gui, 3aa: Show, x%xpos3% y%ypos3% NoActivate
      Helpsett := 0
  }
  Else
  {
    Helpsett := 0
  Gui, 3aa: Destroy
  }
}
Else 
  {
    Helpsett := 1
  Gui, 3aa: Destroy
  }
Return


Peremove5: ; Настройка HUD подсказок
Gui, AdMBind: Hide
Gui, HUD4a: +AlwaysOnTop
Gui, HUD4a: Add, Text, x13 y20 w54 h23 +0x200, Цвет №1
Gui, HUD4a: Add, ListBox, gPereSet5 x72 y17 w120 h30 vRep5Color1, Красный|Зеленый|Синий|Жёлтый|Фиолетовый|Голубой|Черный|Белый
Gui, HUD4a: Add, GroupBox, x5 y8 w191 h42

Gui, HUD4a: Add, Text, x18 y55 w54 h23 +0x200, Шрифт
Gui, HUD4a: Add, ListBox, gPereSet5 x72 y53 w120 h30 vMySliderFont5, Arial|MS sans serif|Verdana|Arimo-Bold|Courier New|Impact|Tahoma|Times New Roman
Gui, HUD4a: Add, GroupBox, x5 y45 w191 h42

Gui, HUD4a: Add, Text, x40 y90 w120 h23 +0x200 +Center, Прозрачность
Gui, HUD4a: Add, Slider, gPereSet5 x10 y110 w181 h22 +NoTicks +0x40 vMy5Slider1 +Tooltip, %My5SliderVid1%
Gui, HUD4a: Add, GroupBox, x5 y84 w191 h50

Gui, HUD4a: Add, Button, x304 y144 w80 h25 gSetPeremove5, Положение
Gui, HUD4a: Add, Button, x392 y144 w80 h25 gSaveSetHUD5, Применить

Gui, HUD4a: Add, Text, x232 y16 w120 h23 +0x200 +Center, Размер шрифта
Gui, HUD4a: Add, Slider, gPereSet5 x208 y40 w181 h24 +0x40 +NoTicks vMy5Slider2 +Tooltip, %My5SliderVid2%
Gui, HUD4a: Add, GroupBox, x200 y8 w191 h62
Gui, HUD4a: Add, GroupBox, x200 y72 w191 h62
Gui, HUD4a: Add, Slider, gPereSet5 x208 y104 w181 h24 +0x40 +NoTicks vMy5Slider3 +Tooltip, %My5SliderVid3%
Gui, HUD4a: Add, Text, x224 y80 w145 h23 +0x200 +Center, Насыщенность(жирность)
Gui, HUD4a: Add, Checkbox, x90 y144 vCheck87 Checked%Check87% +Center, Отображать`nфон
Gui, HUD4a: Add, Checkbox, x190 y144 vCheck88 Checked%Check88% +Center, Использовать`nподсказки
Gui, HUD4a: Show, , Настройка HUD Подсказок
return
HUD4aGuiEscape:
HUD4aGuiClose:
    Gui, 3aa: Destroy
    Gui, HUD4a: Destroy
    Gui, AdMBind: Show
return

SaveCAdmd:
 Loop, 12
    {
        if (ComAdm%A_index%)
        {
            if ComAdm%A_index% != %A_Space%)
              VidachaText1 := ComAdm%A_index%
        }

        if (ComAdmText%A_index%)
          {
              if ComAdmText%A_index% not contains id time
                {
              VidachaText := VidachaText1 " id"
              IniWrite, %VidachaText%, %A_ScriptDir%\settings_abind.ini, TextPodskazki, %A_index%|Key
                }
                else 
                  {
                    VidachaText := VidachaText1 " id time"
                    IniWrite, %VidachaText%, %A_ScriptDir%\settings_abind.ini, TextPodskazki, %A_index%|Key
                  }
          }
          IniWrite, % ComAdm%A_Index%, %A_ScriptDir%\settings_abind.ini, Setup, ComAdm%A_Index%
          IniWrite, % ComAdmText%A_Index%, %A_ScriptDir%\settings_abind.ini, Setup, ComAdmText%A_Index%
    }

  Gui, AdMBind: Destroy
  Gui, Own: Show
Return

ComSell0:
Return

ComSell1:
Gui, Submit, NoHide
SendInput, %match1%%A_Space%
Input, UserInput1, V L9 C T15, {enter}
IfInString, ErrorLevel, EndKey:
  {
      RegexMatch(UserInput1, "(\d+$)", time1)
      RegexMatch(UserInput1, "(\d+)", id1)
      if ComAdmText1 not contains id time
          {
          AdmVidacha1 := RegExReplace(ComAdmText1,"id",id1)
          }
          else
          {
          AdmVidacha1 := RegExReplace(ComAdmText1,"id time",id1 A_Space time1)
          }
      Send ^a{Del}
      SendInput, %AdmVidacha1%
      return
  }
return

ComSell2:
Gui, Submit, NoHide
SendInput, %match2%%A_Space%
Input, UserInput2, V L9 C T15, {enter}
IfInString, ErrorLevel, EndKey:
{
  RegexMatch(UserInput2, "(\d+$)", time2)
  RegexMatch(UserInput2, "(\d+)", id2)
  if ComAdmText2 not contains id time
      {
      AdmVidacha2 := RegExReplace(ComAdmText2,"id",id2)
      }
      else
      {
      AdmVidacha2 := RegExReplace(ComAdmText2,"id time",id2 A_Space time2)
      }
  Send ^a{Del}
  SendInput, %AdmVidacha2%
  return
}
Return

ComSell3:
Gui, Submit, NoHide
SendInput, %match3%%A_Space%
Input, UserInput3, V L9 C T15, {enter}
IfInString, ErrorLevel, EndKey:
{
  RegexMatch(UserInput3, "(\d+$)", time3)
  RegexMatch(UserInput3, "(\d+)", id3)
  if ComAdmText3 not contains id time
      {
      AdmVidacha3 := RegExReplace(ComAdmText3,"id",id3)
      }
      else
      {
      AdmVidacha3 := RegExReplace(ComAdmText3,"id time",id3 A_Space time3)
      }
  Send ^a{Del}
  SendInput, %AdmVidacha3%
  return
}
Return

ComSell4:
Gui, Submit, NoHide
SendInput, %match4%%A_Space%
Input, UserInput4, V L9 C T15, {enter}
IfInString, ErrorLevel, EndKey:
{
  RegexMatch(UserInput4, "(\d+$)", time4)
  RegexMatch(UserInput4, "(\d+)", id4)
  if ComAdmText4 not contains id time
      {
      AdmVidacha4 := RegExReplace(ComAdmText4,"id",id4)
      }
      else
      {
      AdmVidacha4 := RegExReplace(ComAdmText4,"id time",id4 A_Space time4)
      }
  Send ^a{Del}
  SendInput, %AdmVidacha4%
  return
}
Return

ComSell5:
Gui, Submit, NoHide
SendInput, %match5%%A_Space%
Input, UserInput5, V L9 C T15, {enter}
IfInString, ErrorLevel, EndKey:
{
  RegexMatch(UserInput5, "(\d+$)", time5)
  RegexMatch(UserInput5, "(\d+)", id5)
  if ComAdmText5 not contains id time
      {
      AdmVidacha5 := RegExReplace(ComAdmText5,"id",id5)
      }
      else
      {
      AdmVidacha5 := RegExReplace(ComAdmText5,"id time",id5 A_Space time5)
      }
  
  Send ^a{Del}
  SendInput, %AdmVidacha5%
  return
}
Return

ComSell6:
Gui, Submit, NoHide
SendInput, %match6%%A_Space%
Input, UserInput6, V L9 C T15, {enter}
IfInString, ErrorLevel, EndKey:
{
  RegexMatch(UserInput6, "(\d+$)", time6)
  RegexMatch(UserInput6, "(\d+)", id6)
  if ComAdmText6 not contains id time
      {
      AdmVidacha6 := RegExReplace(ComAdmText6,"id",id6)
      }
      else
      {
      AdmVidacha6 := RegExReplace(ComAdmText6,"id time",id6 A_Space time6)
      }
  Send ^a{Del}
  SendInput, %AdmVidacha6%
  return
}
Return

ComSell7:
Gui, Submit, NoHide
SendInput, %match7%%A_Space%
Input, UserInput7, V L9 C T15, {enter}
IfInString, ErrorLevel, EndKey:
{
  RegexMatch(UserInput7, "(\d+$)", time7)
  RegexMatch(UserInput7, "(\d+)", id7)
  if ComAdmText7 not contains id time
      {
      AdmVidacha7 := RegExReplace(ComAdmText7,"id",id7)
      }
      else
      {
      AdmVidacha7 := RegExReplace(ComAdmText7,"id time",id7 A_Space time7)
      }
  Send ^a{Del}
  SendInput, %AdmVidacha7%
  return
}
Return

ComSell8:
Gui, Submit, NoHide
SendInput, %match8%%A_Space%
Input, UserInput8, V L9 C T15, {enter}
IfInString, ErrorLevel, EndKey:
{
  RegexMatch(UserInput8, "(\d+$)", time8)
  RegexMatch(UserInput8, "(\d+)", id8)
  if ComAdmText8 not contains id time
      {
      AdmVidacha8 := RegExReplace(ComAdmText8,"id",id8)
      }
      else
      {
      AdmVidacha8 := RegExReplace(ComAdmText8,"id time",id8 A_Space time8)
      }
  Send ^a{Del}
  SendInput, %AdmVidacha8%
  return
}
Return

ComSell9:
Gui, Submit, NoHide
SendInput, %match9%%A_Space%
Input, UserInput9, V L9 C T15, {enter}
IfInString, ErrorLevel, EndKey:
{
  RegexMatch(UserInput9, "(\d+$)", time9)
  RegexMatch(UserInput9, "(\d+)", id9)
  if ComAdmText9 not contains id time
      {
      AdmVidacha9 := RegExReplace(ComAdmText9,"id",id9)
      }
      else
      {
      AdmVidacha9 := RegExReplace(ComAdmText9,"id time",id9 A_Space time9)
      }
  Send ^a{Del}
  SendInput, %AdmVidacha9%
  return
}
Return

ComSell10:
Gui, Submit, NoHide
SendInput, %match10%%A_Space%
Input, UserInput10, V L9 C T15, {enter}
IfInString, ErrorLevel, EndKey:
{
  RegexMatch(UserInput10, "(\d+$)", time10)
  RegexMatch(UserInput10, "(\d+)", id10)
  if ComAdmText10 not contains id time
      {
      AdmVidacha10 := RegExReplace(ComAdmText10,"id",id10)
      }
      else
      {
      AdmVidacha10 := RegExReplace(ComAdmText10,"id time",id10 A_Space time10)
      }
  Send ^a{Del}
  SendInput, %AdmVidacha10%
  return
}
Return

ComSell11:
Gui, Submit, NoHide
SendInput, %match11%%A_Space%
Input, UserInput11, V L9 C T15, {enter}
IfInString, ErrorLevel, EndKey:
{
  RegexMatch(UserInput11, "(\d+$)", time11)
  RegexMatch(UserInput11, "(\d+)", id11)
  if ComAdmText11 not contains id time
      {
      AdmVidacha11 := RegExReplace(ComAdmText11,"id",id11)
      }
      else
      {
      AdmVidacha11 := RegExReplace(ComAdmText11,"id time",id11 A_Space time11)
      }
  Send ^a{Del}
  SendInput, %AdmVidacha11%
  return
}
Return

ComSell12:
Gui, Submit, NoHide
SendInput, %match12%%A_Space%
Input, UserInput12, V L9 C T15, {enter}
IfInString, ErrorLevel, EndKey:
{
  RegexMatch(UserInput12, "(\d+$)", time12)
  RegexMatch(UserInput12, "(\d+)", id12)
  if ComAdmText12 not contains id time
      {
      AdmVidacha12 := RegExReplace(ComAdmText12,"id",id12)
      }
      else
      {
      AdmVidacha12 := RegExReplace(ComAdmText12,"id time",id12 A_Space time12)
      }
  Send ^a{Del}
  SendInput, %AdmVidacha12%
  return
}
Return