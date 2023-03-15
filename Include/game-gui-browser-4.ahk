#SingleInstance Force
#NoEnv
StringCaseSense Locale

buildverbrow = 4

;-----------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------


osoba1 = -1135.29, 375.56, 70.11
osoba2 = -1806.19, 439.39, 127.93
osoba3 = -834.32, 114.14, 56.21
osoba4 = 228.25, 765.94, 204.56
osoba5 = -1188.68, 289.34, 70.50
osoba6 = -1549.18, -87.88, 55.72
osoba7 = -1579.00, -33.85, 56.94
osoba8 = -1462.32, -32.05, 55.54
osoba9 = -2584.95, 1913.73, 166.90
osoba10 = -1516.86, 852.00, 181.20
osoba11 = 3313.22, 5175.29, 18.81
osoba12 = -712.52, -1298.13, 5.01
osoba13 = -1274.98, 496.90, 97.04
osoba14 = -1025.39, 360.01, 71.31
osoba15 = -882.32, 365.56, 84.64
osoba16 = -877.60, 306.26, 82.09
osoba17 = -701.00, 647.72, 154.53
osoba18 = -1040.43, 222.49, 63.27
osoba19 = -997.97, 156.94, 60.83
osoba20 = -951.94, 195.32, 67.43
osoba21 = -903.10, 191.32, 69.17
osoba22 = -837.51, -25.94, 40.20
osoba23 = -969.00, 124.09, 55.95
osoba24 = -883.74, 39.66, 49.47
osoba25 = -1732.53, 380.27, 88.98
osoba26 = -1863.78, 309.64, 88.94
osoba27 = -1874.37, 201.60, 85.13
osoba28 = -1344.88, 481.11, 101.58
osoba29 = -1897.34, 132.56, 80.94
osoba30 = -2797.85, 1431.46, 99.35
;-----------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------


;-----------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------

My1GIniRead(pravila_dall, "gos-pravila\pravila_dall.ini", "Section", "Key", "MyError")
My1GIniRead(ByRef pravila_dall, Filename, Section, Key, ByRef Default)
{
   loop
   {
      IniRead, Value, %Filename%, %Section%, %A_Index%|%Key%, %Default%
     If (Value = Default)
         break
      If A_Index = 1
        pravila_dall := value 
      else
        pravila_dall .= "`n" value
    }
}

My2GIniRead(pravila_dfib, "gos-pravila\pravila_dfib.ini", "Section", "Key", "MyError")
My2GIniRead(ByRef pravila_dfib, Filename, Section, Key, ByRef Default)
{
   loop
   {
      IniRead, Value, %Filename%, %Section%, %A_Index%|%Key%, %Default%
     If (Value = Default)
         break
      If A_Index = 1
        pravila_dfib := value 
      else
        pravila_dfib .= "`n" value
    }
}

My3GIniRead(pravila_gos, "gos-pravila\pravila_gos.ini", "Section", "Key", "MyError")
My3GIniRead(ByRef pravila_gos, Filename, Section, Key, ByRef Default)
{
   loop
   {
      IniRead, Value, %Filename%, %Section%, %A_Index%|%Key%, %Default%
     If (Value = Default)
         break
      If A_Index = 1
        pravila_gos := value 
      else
        pravila_gos .= "`n" value
    }
}

My4GIniRead(pravila_pems, "gos-pravila\pravila_pems.ini", "Section", "Key", "MyError")
My4GIniRead(ByRef pravila_pems, Filename, Section, Key, ByRef Default)
{
   loop
   {
      IniRead, Value, %Filename%, %Section%, %A_Index%|%Key%, %Default%
     If (Value = Default)
         break
      If A_Index = 1
        pravila_pems := value 
      else
        pravila_pems .= "`n" value
    }
}

My5GIniRead(pravila_png, "gos-pravila\pravila_png.ini", "Section", "Key", "MyError")
My5GIniRead(ByRef pravila_png, Filename, Section, Key, ByRef Default)
{
   loop
   {
      IniRead, Value, %Filename%, %Section%, %A_Index%|%Key%, %Default%
     If (Value = Default)
         break
      If A_Index = 1
        pravila_png := value 
      else
        pravila_png .= "`n" value
    }
}

My6GIniRead(pravila_reid, "gos-pravila\pravila_reid.ini", "Section", "Key", "MyError")
My6GIniRead(ByRef pravila_reid, Filename, Section, Key, ByRef Default)
{
   loop
   {
      IniRead, Value, %Filename%, %Section%, %A_Index%|%Key%, %Default%
     If (Value = Default)
         break
      If A_Index = 1
        pravila_reid := value 
      else
        pravila_reid .= "`n" value
    }
}

My7GIniRead(pravila_shturm, "gos-pravila\pravila_shturm.ini", "Section", "Key", "MyError")
My7GIniRead(ByRef pravila_shturm, Filename, Section, Key, ByRef Default)
{
   loop
   {
      IniRead, Value, %Filename%, %Section%, %A_Index%|%Key%, %Default%
     If (Value = Default)
         break
      If A_Index = 1
        pravila_shturm := value 
      else
        pravila_shturm .= "`n" value
    }
}

My8GIniRead(pravila_vid, "gos-pravila\pravila_vid.ini", "Section", "Key", "MyError")
My8GIniRead(ByRef pravila_vid, Filename, Section, Key, ByRef Default)
{
   loop
   {
      IniRead, Value, %Filename%, %Section%, %A_Index%|%Key%, %Default%
     If (Value = Default)
         break
      If A_Index = 1
        pravila_vid := value 
      else
        pravila_vid .= "`n" value
    }
}
;-----------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------

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

My11IniRead(Pravila_Pohit, "crime-pravila\pravila_pohit.ini", "Section", "Key", "MyError")
My11IniRead(ByRef Pravila_Pohit, Filename, Section, Key, ByRef Default)
{
   loop
   {
      IniRead, Value, %Filename%, %Section%, %A_Index%|%Key%, %Default%
     If (Value = Default)
         break
      If A_Index = 1
         Pravila_Pohit := value 
      else
         Pravila_Pohit .= "`n" value
    }
}

My21IniRead(Pravila_gw, "crime-pravila\pravila_gw.ini", "Section", "Key", "MyError")
My21IniRead(ByRef Pravila_gw, Filename, Section, Key, ByRef Default)
{
   loop
   {
      IniRead, Value, %Filename%, %Section%, %A_Index%|%Key%, %Default%
     If (Value = Default)
         break
      If A_Index = 1
         Pravila_gw := value 
      else
         Pravila_gw .= "`n" value
    }
}

My31IniRead(Pravila_band, "crime-pravila\pravila_band.ini", "Section", "Key", "MyError")
My31IniRead(ByRef Pravila_band, Filename, Section, Key, ByRef Default)
{
   loop
   {
      IniRead, Value, %Filename%, %Section%, %A_Index%|%Key%, %Default%
     If (Value = Default)
         break
      If A_Index = 1
         Pravila_band := value 
      else
         Pravila_band .= "`n" value
    }
}

My41IniRead(Pravila_mafiy, "crime-pravila\pravila_mafiy.ini", "Section", "Key", "MyError")
My41IniRead(ByRef Pravila_mafiy, Filename, Section, Key, ByRef Default)
{
   loop
   {
      IniRead, Value, %Filename%, %Section%, %A_Index%|%Key%, %Default%
     If (Value = Default)
         break
      If A_Index = 1
         Pravila_mafiy := value 
      else
         Pravila_mafiy .= "`n" value
    }
}

My51IniRead(Pravila_recket, "crime-pravila\pravila_recket.ini", "Section", "Key", "MyError")
My51IniRead(ByRef Pravila_recket, Filename, Section, Key, ByRef Default)
{
   loop
   {
      IniRead, Value, %Filename%, %Section%, %A_Index%|%Key%, %Default%
     If (Value = Default)
         break
      If A_Index = 1
         Pravila_recket := value 
      else
         Pravila_recket .= "`n" value
    }
}

My61IniRead(Pravila_wargh, "crime-pravila\pravila_wargh.ini", "Section", "Key", "MyError")
My61IniRead(ByRef Pravila_wargh, Filename, Section, Key, ByRef Default)
{
   loop
   {
      IniRead, Value, %Filename%, %Section%, %A_Index%|%Key%, %Default%
     If (Value = Default)
         break
      If A_Index = 1
         Pravila_wargh := value 
      else
         Pravila_wargh .= "`n" value
    }
}

My71IniRead(Pravila_analget, "crime-pravila\pravila_analget.ini", "Section", "Key", "MyError")
My71IniRead(ByRef Pravila_analget, Filename, Section, Key, ByRef Default)
{
   loop
   {
      IniRead, Value, %Filename%, %Section%, %A_Index%|%Key%, %Default%
     If (Value = Default)
         break
      If A_Index = 1
         Pravila_analget := value 
      else
         Pravila_analget .= "`n" value
    }
}

My81IniRead(Pravila_armysaspa, "crime-pravila\pravila_armysaspa.ini", "Section", "Key", "MyError")
My81IniRead(ByRef Pravila_armysaspa, Filename, Section, Key, ByRef Default)
{
   loop
   {
      IniRead, Value, %Filename%, %Section%, %A_Index%|%Key%, %Default%
     If (Value = Default)
         break
      If A_Index = 1
         Pravila_armysaspa := value 
      else
         Pravila_armysaspa .= "`n" value
    }
}

My91IniRead(Pravila_pushgos, "crime-pravila\pravila_pushgos.ini", "Section", "Key", "MyError")
My91IniRead(ByRef Pravila_pushgos, Filename, Section, Key, ByRef Default)
{
   loop
   {
      IniRead, Value, %Filename%, %Section%, %A_Index%|%Key%, %Default%
     If (Value = Default)
         break
      If A_Index = 1
         Pravila_pushgos := value 
      else
         Pravila_pushgos .= "`n" value
    }
}

My101IniRead(Pravila_vzh, "crime-pravila\pravila_vzh.ini", "Section", "Key", "MyError")
My101IniRead(ByRef Pravila_vzh, Filename, Section, Key, ByRef Default)
{
   loop
   {
      IniRead, Value, %Filename%, %Section%, %A_Index%|%Key%, %Default%
     If (Value = Default)
         break
      If A_Index = 1
         Pravila_vzh := value 
      else
         Pravila_vzh .= "`n" value
    }
}
;-----------------------------------------------------------------------------------------------------------------

ES_NOHIDESEL := 256  ; показывает выделение текста в Edit при неактивном окне
EM_SETSEL := 0x00B1  ; установка выделения
EM_SCROLLCARET := 0xB7  ; сделать видимым выделенный текст
EM_GETSEL := 0xB0  ; извлечь позицию каретки ввода
VarSetCapacity(start, 4), VarSetCapacity(end, 4)

ViborStart:
IniRead, Vibor, %a_temp%\AuLib\vibor.ini, Setup, Vibor
If Vibor = Правила гос.организаций
	{
		Vibor := "Правила гос.организаций"
	}
If Vibor = Общие правила
	{
		Vibor := "Общие правила"
	}
If Vibor = Правила крим.организаций
	{
		Vibor := "Правила крим.организаций"
	}
If Vibor = Дополнительно
{
		Vibor := "Дополнительно"
	}
Goto, Vibor1
Return

Vibor1:
GuiControlGet, Vibor,, Vibor
	if Vibor = Общие правила
{
	Gui, Browser: Destroy
	Gui, Browser: +HWNDhGUIMain +AlwaysOnTop
	Gui, Browser: Add, DropDownList, x0 y0 w621 vVibor gVibor1, Общие правила||Правила гос.организаций|Правила крим.организаций|Дополнительно
	Gui, Browser: Add, Tab3, x-1 y21 w623 h420, Правила проекта|Правила сервера|Правила зеленых зон
	Gui, Browser: Tab, 1
	Gui, Browser: Add, Edit, x1 y43 w618 h349 +Multi +ReadOnly vMainEdit1 hwndhMainEdit1 %ES_NOHIDESEL%, %pravila_proekta%
	Gui, Browser: Add, Button, x264 y396 w80 h23 gFin1, Поиск
	Gui, Browser: Tab, 2
	Gui, Browser: Add, Edit, x1 y43 w618 h349 +Multi +ReadOnly vMainEdit2 hwndhMainEdit2 %ES_NOHIDESEL%, %pravila_servera%
	Gui, Browser: Add, Button, x264 y396 w80 h23 gFin2, Поиск
	Gui, Browser: Tab, 3
	Gui, Browser: Add, Edit, x1 y43 w618 h349 +Multi +ReadOnly vMainEdit3 hwndhMainEdit3 %ES_NOHIDESEL%, %pravila_greenzone%
	Gui, Browser: Add, Button, x264 y396 w80 h23 gFin3, Поиск
	Gui, Browser: Tab
	Gui, Browser: Show, w621 h420, Window
	SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit1%
	SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit2%
	SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit3%
}
	if Vibor = Правила гос.организаций
	{
		Gui, Browser: Destroy
		Gui, Browser: +HWNDhGUIMain +AlwaysOnTop
		Gui, Browser: Add, DropDownList, x0 y0 w621 vVibor gVibor1, Общие правила|Правила гос.организаций||Правила крим.организаций|Дополнительно
		Gui, Browser: Add, Tab3, x-1 y21 w623 h420, Правила гос.структур|Положение о внешнем виде|Штурма титула|Рейдов|Допросов FIB|Допросов ALL|Поставки EMS| Поставки NG
		Gui, Browser: Tab, 1
		Gui, Browser: Add, Edit,  x1 y62 w616 h330 +Multi +ReadOnly vMainEdit4 hwndhMainEdit4 %ES_NOHIDESEL%, %pravila_gos%
		Gui, Browser: Add, Button, x264 y396 w80 h23 gFin4, Поиск
		Gui, Browser: Tab, 2
		Gui, Browser: Add, Edit,  x1 y62 w616 h330 +Multi +ReadOnly vMainEdit5 hwndhMainEdit5 %ES_NOHIDESEL%, %pravila_vid%
		Gui, Browser: Add, Button, x264 y396 w80 h23 gFin5, Поиск
		Gui, Browser: Tab, 3
		Gui, Browser: Add, Edit,  x1 y62 w616 h330 +Multi +ReadOnly vMainEdit6 hwndhMainEdit6 %ES_NOHIDESEL%, %pravila_shturm%
		Gui, Browser: Add, Button, x264 y396 w80 h23 gFin6, Поиск
		Gui, Browser: Tab, 4
		Gui, Browser: Add, Edit,  x1 y62 w616 h330 +Multi +ReadOnly vMainEdit7 hwndhMainEdit7 %ES_NOHIDESEL%, %pravila_reid%
		Gui, Browser: Add, Button, x264 y396 w80 h23 gFin7, Поиск
		Gui, Browser: Tab, 5
		Gui, Browser: Add, Edit,  x1 y62 w616 h330 +Multi +ReadOnly vMainEdit8 hwndhMainEdit8 %ES_NOHIDESEL%, %pravila_dfib%
		Gui, Browser: Add, Button, x264 y396 w80 h23 gFin8, Поиск
		Gui, Browser: Tab, 6
		Gui, Browser: Add, Edit,  x1 y62 w616 h330 +Multi +ReadOnly vMainEdit9 hwndhMainEdit9 %ES_NOHIDESEL%, %pravila_dall%
		Gui, Browser: Add, Button, x264 y396 w80 h23 gFin9, Поиск
		Gui, Browser: Tab, 7
		Gui, Browser: Add, Edit,  x1 y62 w616 h330 +Multi +ReadOnly vMainEdit10 hwndhMainEdit10 %ES_NOHIDESEL%, %pravila_pems%
		Gui, Browser: Add, Button, x264 y396 w80 h23 gFin10, Поиск
		Gui, Browser: Tab, 8
		Gui, Browser: Add, Edit,  x1 y62 w616 h330 +Multi +ReadOnly vMainEdit11 hwndhMainEdit11 %ES_NOHIDESEL%, %pravila_png%
		Gui, Browser: Add, Button, x264 y396 w80 h23 gFin11, Поиск
		Gui, Browser: Tab
		Gui, Browser: Show, w621 h420, Window
		SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit4%
		SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit5%
		SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit6%
		SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit7%
		SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit8%
		SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit9%
		SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit10%
		SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit11%
	}
	if Vibor = Правила крим.организаций
		{
			Gui, Browser: Destroy
			Gui, Browser: +HWNDhGUIMain +AlwaysOnTop
			Gui, Browser: Add, DropDownList, x0 y0 w623 h420 vVibor gVibor1, Общие правила|Правила гос.организаций|Правила крим.организаций||Дополнительно|
			Gui, Browser: Add, Tab3, x-1 y21 w623 h420, Правила банд|Правила мафий|Рэкет клубов|Ограбления ГШ|Поставка анальгетика|Захвата гос.орг|ГВ|Ограблений/Похищений|Нападений на ФТ/ФЗ|ВЗХ
			Gui, Browser: Tab, 1
			Gui, Browser: Add, Edit,  x1 y62 w616 h330 +Multi +ReadOnly vMainEdit12 hwndhMainEdit12 %ES_NOHIDESEL%, %Pravila_band%
			Gui, Browser: Add, Button, x264 y396 w80 h23 gFin12, Поиск
			Gui, Browser: Tab, 2
			Gui, Browser: Add, Edit,  x1 y62 w616 h330 +Multi +ReadOnly vMainEdit13 hwndhMainEdit13 %ES_NOHIDESEL%, %Pravila_mafiy%
			Gui, Browser: Add, Button, x264 y396 w80 h23 gFin13, Поиск
			Gui, Browser: Tab, 3
			Gui, Browser: Add, Edit,  x1 y62 w616 h330 +Multi +ReadOnly vMainEdit14 hwndhMainEdit14 %ES_NOHIDESEL%, %Pravila_recket%
			Gui, Browser: Add, Button, x264 y396 w80 h23 gFin14, Поиск
			Gui, Browser: Tab, 4
			Gui, Browser: Add, Edit,  x1 y62 w616 h330 +Multi +ReadOnly vMainEdit15 hwndhMainEdit15 %ES_NOHIDESEL%, %Pravila_wargh%
			Gui, Browser: Add, Button, x264 y396 w80 h23 gFin15, Поиск
			Gui, Browser: Tab, 5
			Gui, Browser: Add, Edit,  x1 y62 w616 h330 +Multi +ReadOnly vMainEdit16 hwndhMainEdit16 %ES_NOHIDESEL%, %Pravila_analget%
			Gui, Browser: Add, Button, x264 y396 w80 h23 gFin16, Поиск
			Gui, Browser: Tab, 6
			Gui, Browser: Add, Edit,  x1 y62 w616 h330 +Multi +ReadOnly vMainEdit17 hwndhMainEdit17 %ES_NOHIDESEL%, %Pravila_pushgos%
			Gui, Browser: Add, Button, x264 y396 w80 h23 gFin17, Поиск
			Gui, Browser: Tab, 7
			Gui, Browser: Add, Edit,  x1 y62 w616 h330 +Multi +ReadOnly vMainEdit18 hwndhMainEdit18 %ES_NOHIDESEL%, %Pravila_gw%
			Gui, Browser: Add, Button, x264 y396 w80 h23 gFin18, Поиск
			Gui, Browser: Tab, 8
			Gui, Browser: Add, Edit,  x1 y62 w616 h330 +Multi +ReadOnly vMainEdit19 hwndhMainEdit19 %ES_NOHIDESEL%, %Pravila_Pohit%
			Gui, Browser: Add, Button, x264 y396 w80 h23 gFin19, Поиск
			Gui, Browser: Tab, 9
			Gui, Browser: Add, Edit,  x1 y62 w616 h330 +Multi +ReadOnly vMainEdit20 hwndhMainEdit20 %ES_NOHIDESEL%, %Pravila_armysaspa%
			Gui, Browser: Add, Button, x264 y396 w80 h23 gFin20, Поиск
			Gui, Browser: Tab, 10
			Gui, Browser: Add, Edit,  x1 y62 w616 h330 +Multi +ReadOnly vMainEdit21 hwndhMainEdit21 %ES_NOHIDESEL%, %Pravila_vzh%
			Gui, Browser: Add, Button, x264 y396 w80 h23 gFin21, Поиск
			Gui, Browser: Tab
			Gui, Browser: Show, w621 h420, Window

			
	SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit12%
	SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit13%
	SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit14%
	SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit15%
	SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit16%
	SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit17%
	SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit18%
	SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit19%
	SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit20%
	SendMessage, EM_SETSEL, 0, 0, , ahk_id %hMainEdit21%
		}	
if Vibor = Дополнительно
		{
			Gui, Browser: Destroy
			Gui, Browser: +HWNDhGUIMain +AlwaysOnTop
			Gui, Browser: Add, DropDownList, x0 y0 w623 h420 vVibor gVibor1, Общие правила|Правила гос.организаций|Правила крим.организаций|Дополнительно||
			Gui, Browser: Add, Tab3, x-1 y21 w623 h420, Карта особняков|TP Особы|Для заметок
			Gui, Browser: Tab, 1
			Gui, Browser: Add, Picture, x-1 y21 w623 h374, %A_WorkingDir%\app\gui\browser-osob-%buildverbrow%.png
			Gui, Browser: Tab, 2
			Gui, Browser: Add, GroupBox, x6 y45 w88 h68 +Center, Особа №1
			Gui, Browser: Add, GroupBox, x96 y45 w88 h68 +Center, Особа №2
			Gui, Browser: Add, GroupBox, x186 y45 w88 h68 +Center, Особа №3
			Gui, Browser: Add, GroupBox, x277 y45 w88 h68 +Center, Особа №4
			Gui, Browser: Add, GroupBox, x368 y45 w88 h68 +Center, Особа №5
			Gui, Browser: Add, GroupBox, x459 y45 w88 h68 +Center, Особа №6
			Gui, Browser: Add, GroupBox, x6 y115 w88 h68 +Center, Особа №7
			Gui, Browser: Add, GroupBox, x96 y115 w88 h68 +Center, Особа №8
			Gui, Browser: Add, GroupBox, x186 y115 w88 h68 +Center, Особа №9
			Gui, Browser: Add, GroupBox, x277 y115 w88 h68 +Center, Особа №10
			Gui, Browser: Add, GroupBox, x368 y115 w88 h68 +Center, Особа №11
			Gui, Browser: Add, GroupBox, x459 y115 w88 h68 +Center, Особа №12
			Gui, Browser: Add, GroupBox, x6 y185 w88 h68 +Center, Особа №13
			Gui, Browser: Add, GroupBox, x96 y185 w88 h68 +Center, Особа №14
			Gui, Browser: Add, GroupBox, x186 y185 w88 h68 +Center, Особа №15
			Gui, Browser: Add, GroupBox, x277 y185 w88 h68 +Center, Особа №16
			Gui, Browser: Add, GroupBox, x368 y185 w88 h68 +Center, Особа №17
			Gui, Browser: Add, GroupBox, x459 y185 w88 h68 +Center, Особа №18
			Gui, Browser: Add, GroupBox, x6 y255 w88 h68 +Center, Особа №19
			Gui, Browser: Add, GroupBox, x96 y255 w88 h68 +Center, Особа №20
			Gui, Browser: Add, GroupBox, x187 y255 w88 h68 +Center, Особа №21
			Gui, Browser: Add, GroupBox, x278 y255 w88 h68 +Center, Особа №22
			Gui, Browser: Add, GroupBox, x368 y255 w88 h68 +Center, Особа №23
			Gui, Browser: Add, GroupBox, x459 y255 w88 h68 +Center, Особа №24
			Gui, Browser: Add, GroupBox, x5 y325 w88 h68 +Center, Особа №25
			Gui, Browser: Add, GroupBox, x96 y325 w88 h68 +Center, Особа №26
			Gui, Browser: Add, GroupBox, x186 y325 w88 h68 +Center, Особа №27
			Gui, Browser: Add, GroupBox, x278 y325 w88 h68 +Center, Особа №28
			Gui, Browser: Add, GroupBox, x369 y325 w88 h68 +Center, Особа №29
			Gui, Browser: Add, GroupBox, x459 y325 w88 h68 +Center, Особа №30

			Gui, Browser: Add, Button, x10 y60 w80 h23 ggoto1, GOTO
			Gui, Browser: Add, Button, x100 y60 w80 h23  ggoto2, GOTO
			Gui, Browser: Add, Button, x190 y60 w80 h23  ggoto3, GOTO
			Gui, Browser: Add, Button, x280 y60 w80 h23  ggoto4, GOTO
			Gui, Browser: Add, Button, x371 y60 w80 h23 ggoto5, GOTO
			Gui, Browser: Add, Button, x462 y60 w80 h23 ggoto6, GOTO
			Gui, Browser: Add, Button, x10 y131 w80 h23 ggoto7, GOTO
			Gui, Browser: Add, Button, x100 y131 w80 h23 ggoto8, GOTO
			Gui, Browser: Add, Button, x190 y131 w80 h23 ggoto9, GOTO
			Gui, Browser: Add, Button, x281 y131 w80 h23 ggoto10, GOTO
			Gui, Browser: Add, Button, x372 y131 w80 h23 ggoto11, GOTO
			Gui, Browser: Add, Button, x463 y131 w80 h23 ggoto12, GOTO
			Gui, Browser: Add, Button, x10 y200 w80 h23 ggoto13, GOTO
			Gui, Browser: Add, Button, x99 y200 w80 h23 ggoto14, GOTO
			Gui, Browser: Add, Button, x190 y200 w80 h23 ggoto15, GOTO
			Gui, Browser: Add, Button, x281 y200 w80 h23 ggoto16, GOTO
			Gui, Browser: Add, Button, x372 y200 w80 h23 ggoto17, GOTO
			Gui, Browser: Add, Button, x463 y200 w80 h23 ggoto18, GOTO
			Gui, Browser: Add, Button, x10 y271 w80 h23 ggoto19, GOTO
			Gui, Browser: Add, Button, x101 y271 w80 h23 ggoto20, GOTO
			Gui, Browser: Add, Button, x192 y271 w80 h23 ggoto21, GOTO
			Gui, Browser: Add, Button, x282 y271 w80 h23 ggoto22, GOTO
			Gui, Browser: Add, Button, x372 y271 w80 h23 ggoto23, GOTO
			Gui, Browser: Add, Button, x463 y271 w80 h23 ggoto24, GOTO
			Gui, Browser: Add, Button, x10 y340 w80 h23 ggoto25, GOTO
			Gui, Browser: Add, Button, x100 y340 w80 h23 ggoto26, GOTO
			Gui, Browser: Add, Button, x190 y340 w80 h23 ggoto27, GOTO
			Gui, Browser: Add, Button, x283 y340 w80 h23 ggoto28, GOTO
			Gui, Browser: Add, Button, x373 y340 w80 h23 ggoto29, GOTO
			Gui, Browser: Add, Button, x463 y340 w80 h23 ggoto30, GOTO

			Gui, Browser: Add, Button, x10 y83 w80 h23 gmark1, MARK
			Gui, Browser: Add, Button, x100 y83 w80 h23 gmark2, MARK
			Gui, Browser: Add, Button, x190 y83 w80 h23 gmark3, MARK
			Gui, Browser: Add, Button, x280 y83 w80 h23 gmark4, MARK
			Gui, Browser: Add, Button, x371 y83 w80 h23 gmark5, MARK
			Gui, Browser: Add, Button, x462 y83 w80 h23 gmark6, MARK
			Gui, Browser: Add, Button, x10 y155 w80 h23 gmark7, MARK
			Gui, Browser: Add, Button, x100 y155 w80 h23 gmark8, MARK
			Gui, Browser: Add, Button, x190 y155 w80 h23 gmark9, MARK
			Gui, Browser: Add, Button, x281 y155 w80 h23 gmark10, MARK
			Gui, Browser: Add, Button, x372 y155 w80 h23 gmark11, MARK
			Gui, Browser: Add, Button, x463 y155 w80 h23 gmark12, MARK
			Gui, Browser: Add, Button, x10 y223 w80 h23 gmark13, MARK
			Gui, Browser: Add, Button, x99 y223 w80 h23 gmark14, MARK
			Gui, Browser: Add, Button, x190 y223 w80 h23 gmark15, MARK
			Gui, Browser: Add, Button, x281 y223 w80 h23 gmark16, MARK
			Gui, Browser: Add, Button, x372 y223 w80 h23 gmark17, MARK
			Gui, Browser: Add, Button, x463 y223 w80 h23 gmark18, MARK
			Gui, Browser: Add, Button, x10 y295 w80 h23 gmark19, MARK
			Gui, Browser: Add, Button, x101 y295 w80 h23 gmark20, MARK
			Gui, Browser: Add, Button, x192 y295 w80 h23 gmark21, MARK
			Gui, Browser: Add, Button, x282 y295 w80 h23 gmark22, MARK
			Gui, Browser: Add, Button, x372 y295 w80 h23 gmark23, MARK
			Gui, Browser: Add, Button, x463 y295 w80 h23 gmark24, MARK
			Gui, Browser: Add, Button, x10 y364 w80 h23 gmark25, MARK
			Gui, Browser: Add, Button, x100 y364 w80 h23 gmark26, MARK
			Gui, Browser: Add, Button, x190 y364 w80 h23 gmark27, MARK
			Gui, Browser: Add, Button, x283 y364 w80 h23 gmark28, MARK
			Gui, Browser: Add, Button, x373 y364 w80 h23 gmark29, MARK
			Gui, Browser: Add, Button, x463 y364 w80 h23 gmark30, MARK
			Gui, Browser: Tab, 3
			Gui, Browser: Add, Edit,  x1 y45 w616 h350 +Multi vOutputVar, %OutputVar%
			Gui, Browser: Add, Button, x264 y396 w80 h23 gSaveSprab, Сохранить
			Gui, Browser: Tab
			Gui, Browser: Show, w621 h420, Window
		}
	IniWrite, %Vibor%, %a_temp%\AuLib\vibor.ini, Setup, Vibor
	Return

    BrowserGuiEscape:
    BrowserGuiClose:
    Gui, Browser: Destroy
Return

















goto1:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, tpc %osoba1%{Enter}
openbr = 1
Gui, Browser: Destroy
Return

goto2:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, tpc %osoba2%{Enter}
openbr = 1
Gui, Browser: Destroy
Return

goto3:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, tpc %osoba3%{Enter}
openbr = 1
Gui, Browser: Destroy
Return

goto4:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, tpc %osoba4%{Enter}
openbr = 1
Gui, Browser: Destroy
Return

goto5:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, tpc %osoba5%{Enter}
openbr = 1
Gui, Browser: Destroy
Return

goto6:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, tpc %osoba6%{Enter}
openbr = 1
Gui, Browser: Destroy
Return

goto7:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, tpc %osoba7%{Enter}
openbr = 1
Gui, Browser: Destroy
Return

goto8:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, tpc %osoba8%{Enter}
openbr = 1
Gui, Browser: Destroy
Return

goto9:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, tpc %osoba9%{Enter}
openbr = 1
Gui, Browser: Destroy
Return

goto10:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, tpc %osoba10%{Enter}
openbr = 1
Gui, Browser: Destroy
Return

goto11:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, tpc %osoba11%{Enter}
openbr = 1
Gui, Browser: Destroy
Return

goto12:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, tpc %osoba12%{Enter}
openbr = 1
Gui, Browser: Destroy
Return

goto13:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, tpc %osoba13%{Enter}
openbr = 1
Gui, Browser: Destroy
Return

goto14:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, tpc %osoba14%{Enter}
openbr = 1
Gui, Browser: Destroy
Return

goto15:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, tpc %osoba15%{Enter}
openbr = 1
Gui, Browser: Destroy
Return

goto16:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, tpc %osoba16%{Enter}
openbr = 1
Gui, Browser: Destroy
Return

goto17:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, tpc %osoba17%{Enter}
openbr = 1
Gui, Browser: Destroy
Return

goto18:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, tpc %osoba18%{Enter}
openbr = 1
Gui, Browser: Destroy
Return

goto19:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, tpc %osoba19%{Enter}
openbr = 1
Gui, Browser: Destroy
Return

goto20:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, tpc %osoba20%{Enter}
openbr = 1
Gui, Browser: Destroy
Return

goto21:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, tpc %osoba21%{Enter}
openbr = 1
Gui, Browser: Destroy
Return

goto22:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, tpc %osoba22%{Enter}
openbr = 1
Gui, Browser: Destroy
Return

goto23:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, tpc %osoba23%{Enter}
openbr = 1
Gui, Browser: Destroy
Return

goto24:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, tpc %osoba24%{Enter}
openbr = 1
Gui, Browser: Destroy
Return

goto25:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, tpc %osoba25%{Enter}
openbr = 1
Gui, Browser: Destroy
Return

goto26:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, tpc %osoba26%{Enter}
openbr = 1
Gui, Browser: Destroy
Return

goto27:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, tpc %osoba27%{Enter}
openbr = 1
Gui, Browser: Destroy
Return

goto28:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, tpc %osoba28%{Enter}
openbr = 1
Gui, Browser: Destroy
Return

goto29:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, tpc %osoba29%{Enter}
openbr = 1
Gui, Browser: Destroy
Return

goto30:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, tpc %osoba30%{Enter}
openbr = 1
Gui, Browser: Destroy
Return
;--------------------------------------------

mark1:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, set_gps i %osoba1%{Left 25}
openbr = 1
Gui, Browser: Destroy
Return

mark2:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, set_gps i %osoba2%{Left 26}
openbr = 1
Gui, Browser: Destroy
Return

mark3:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, set_gps i %osoba3%{Left 24}
openbr = 1
Gui, Browser: Destroy
Return

mark4:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, set_gps i %osoba4%{Left 24}
openbr = 1
Gui, Browser: Destroy
Return

mark5:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, set_gps i %osoba5%{Left 25}
openbr = 1
Gui, Browser: Destroy
Return

mark6:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, set_gps i %osoba6%{Left 25}
openbr = 1
Gui, Browser: Destroy
Return

mark7:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, set_gps i %osoba7%{Left 25}
openbr = 1
Gui, Browser: Destroy
Return

mark8:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, set_gps i %osoba8%{Left 25}
openbr = 1
Gui, Browser: Destroy
Return

mark9:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, set_gps i %osoba9%{Left 25}
openbr = 1
Gui, Browser: Destroy
Return

mark10:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, set_gps i %osoba10%{Left 26}
openbr = 1
Gui, Browser: Destroy
Return

mark11:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, set_gps i %osoba11%{Left 25}
openbr = 1
Gui, Browser: Destroy
Return

mark12:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, set_gps i %osoba12%{Left 25}
openbr = 1
Gui, Browser: Destroy
Return

mark13:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, set_gps i %osoba13%{Left 25}
openbr = 1
Gui, Browser: Destroy
Return

mark14:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, set_gps i %osoba14%{Left 24}
openbr = 1
Gui, Browser: Destroy
Return

mark15:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, set_gps i %osoba15%{Left 24}
openbr = 1
Gui, Browser: Destroy
Return

mark16:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, set_gps i %osoba16%{Left 24}
openbr = 1
Gui, Browser: Destroy
Return

mark17:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, set_gps i %osoba17%{Left 25}
openbr = 1
Gui, Browser: Destroy
Return

mark18:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, set_gps i %osoba18%{Left 25}
openbr = 1
Gui, Browser: Destroy
Return

mark19:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, set_gps i %osoba19%{Left 25}
openbr = 1
Gui, Browser: Destroy
Return

mark20:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, set_gps i %osoba20%{Left 23}
openbr = 1
Gui, Browser: Destroy
Return

mark21:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, set_gps i %osoba21%{Left 23}
openbr = 1
Gui, Browser: Destroy
Return

mark22:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, set_gps i %osoba22%{Left 23}
openbr = 1
Gui, Browser: Destroy
Return

mark23:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, set_gps i %osoba23%{Left 24}
openbr = 1
Gui, Browser: Destroy
Return

mark24:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, set_gps i %osoba24%{Left 22}
openbr = 1
Gui, Browser: Destroy
Return

mark25:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, set_gps i %osoba25%{Left 24}
openbr = 1
Gui, Browser: Destroy
Return

mark26:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, set_gps i %osoba26%{Left 24}
openbr = 1
Gui, Browser: Destroy
Return

mark27:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, set_gps i %osoba27%{Left 24}
openbr = 1
Gui, Browser: Destroy
Return

mark28:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, set_gps i %osoba28%{Left 25}
openbr = 1
Gui, Browser: Destroy
Return

mark29:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, set_gps i %osoba29%{Left 24}
openbr = 1
Gui, Browser: Destroy
Return

mark30:
Gui, Hide
Sendinput, {Sc029}
Sleep 300
MouseClick, left, 55, 374
Sleep 100
MouseClick, left, 33, 333
Sleep 100
SendInput, set_gps i %osoba30%{Left 25}
openbr = 1
Gui, Browser: Destroy
Return

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












































;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------


Fin1:
	Gui, F1: -MaximizeBox -MinimizeBox -DPIScale +HWNDhGUIFind
	Gui, F1: Add, Text, ym+5, Что:
	Gui, F1: Add, Edit, x+25 yp-5 w284 vFind hwndhFind, Можно
	Gui, F1: Add, Button, x+10 yp gGoSearch1, Найти далее
	Gui, F1: Add, Button, xp y+5 wp gCancel1, Отмена
	Gui, F1: Add, Checkbox, vLoop y+0 xm Checked, Зациклить поиск
	Gui, F1: Add, Checkbox, vSens y+10 xp, С учетом регистра
	Gui, F1: Add, GroupBox, x+10 yp-35 h55, Направление
	Gui, F1: Add, Radio, xp+10 yp+25 vDirectUp, Вверх
	Gui, F1: Add, Radio, x+15 Checked, Вниз 
    Gui, F1: Show, , Найти 
Return

F1GuiEscape:
F1GuiClose:
    Gui, F1: Destroy
Return

    
Cancel1:
    Gui, F1: Destroy
Return


GoSearch1:
    GuiControlGet, DirectUp, F1:
    GuiControlGet, Sens, F1:
    GuiControlGet, Loop, F1:
    ControlGetText, MainEdit1,, ahk_id %hMainEdit1%
    ControlGetText, Find,, ahk_id %hFind%
    SendMessage, EM_GETSEL, &start, &end, , ahk_id %hMainEdit1%
    If DirectUp
        f := (f := InStr(SubStr(MainEdit1, 1, NumGet(start)), Find, Sens, 0)) ? f : (Loop ? InStr(MainEdit1, Find, Sens, 0) : 0)
    Else
        f := (f := InStr(MainEdit1, Find, Sens, NumGet(end)+1)) ? f : (Loop ? InStr(MainEdit1, Find, Sens, 1) : 0)
    If !f
    {
        MsgBox, 8256, Edit find, Не удаётся найти "%Find%"
        Return
    }
    SendMessage, EM_SETSEL, f-1, f+StrLen(Find)-1, , ahk_id %hMainEdit1%
    SendMessage, EM_SCROLLCARET,,,, ahk_id %hMainEdit1%
    Return

;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------


Fin2:
	Gui, F1: -MaximizeBox -MinimizeBox -DPIScale +HWNDhGUIFind
	Gui, F1: Add, Text, ym+5, Что:
	Gui, F1: Add, Edit, x+25 yp-5 w284 vFind2 hwndhFind2, Можно
	Gui, F1: Add, Button, x+10 yp gGoSearch2, Найти далее
	Gui, F1: Add, Button, xp y+5 wp gCancel1, Отмена
	Gui, F1: Add, Checkbox, vLoop2 y+0 xm Checked, Зациклить поиск
	Gui, F1: Add, Checkbox, vSens2 y+10 xp, С учетом регистра
	Gui, F1: Add, GroupBox, x+10 yp-35 h55, Направление
	Gui, F1: Add, Radio, xp+10 yp+25 vDirectUp2, Вверх
	Gui, F1: Add, Radio, x+15 Checked, Вниз 
    Gui, F1: Show, , Найти 
Return

GoSearch2:
    GuiControlGet, DirectUp2, F1:
    GuiControlGet, Sens2, F1:
    GuiControlGet, Loop2, F1:
    ControlGetText, MainEdit2,, ahk_id %hMainEdit2%
    ControlGetText, Find2,, ahk_id %hFind2%
    SendMessage, EM_GETSEL, &start, &end, , ahk_id %hMainEdit2%
    If DirectUp2
        f := (f := InStr(SubStr(MainEdit2, 1, NumGet(start)), Find2, Sens2, 0)) ? f : (Loop2 ? InStr(MainEdit2, Find2, Sens2, 0) : 0)
    Else
        f := (f := InStr(MainEdit2, Find2, Sens2, NumGet(end)+1)) ? f : (Loop2 ? InStr(MainEdit2, Find2, Sens2, 1) : 0)
    If !f
    {
        MsgBox, 8256, Edit find, Не удаётся найти "%Find2%"
        Return
    }
    SendMessage, EM_SETSEL, f-1, f+StrLen(Find2)-1, , ahk_id %hMainEdit2%
    SendMessage, EM_SCROLLCARET,,,, ahk_id %hMainEdit2%
    Return

;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------

Fin3:
	Gui, F1: -MaximizeBox -MinimizeBox -DPIScale +HWNDhGUIFind
	Gui, F1: Add, Text, ym+5, Что:
	Gui, F1: Add, Edit, x+25 yp-5 w284 vFind3 hwndhFind3, Можно
	Gui, F1: Add, Button, x+10 yp gGoSearch3, Найти далее
	Gui, F1: Add, Button, xp y+5 wp gCancel1, Отмена
	Gui, F1: Add, Checkbox, vLoop3 y+0 xm Checked, Зациклить поиск
	Gui, F1: Add, Checkbox, vSens3 y+10 xp, С учетом регистра
	Gui, F1: Add, GroupBox, x+10 yp-35 h55, Направление
	Gui, F1: Add, Radio, xp+10 yp+25 vDirectUp3, Вверх
	Gui, F1: Add, Radio, x+15 Checked, Вниз 
    Gui, F1: Show, , Найти 
Return


GoSearch3:
    GuiControlGet, DirectUp3, F1:
    GuiControlGet, Sens3, F1:
    GuiControlGet, Loop3, F1:
    ControlGetText, MainEdit3,, ahk_id %hMainEdit3%
    ControlGetText, Find3,, ahk_id %hFind3%
    SendMessage, EM_GETSEL, &start, &end, , ahk_id %hMainEdit3%
    If DirectUp3
        f := (f := InStr(SubStr(MainEdit3, 1, NumGet(start)), Find3, Sens3, 0)) ? f : (Loop3 ? InStr(MainEdit3, Find3, Sens3, 0) : 0)
    Else
        f := (f := InStr(MainEdit3, Find3, Sens3, NumGet(end)+1)) ? f : (Loop3 ? InStr(MainEdit3, Find3, Sens3, 1) : 0)
    If !f
    {
        MsgBox, 8256, Edit find, Не удаётся найти "%Find3%"
        Return
    }
    SendMessage, EM_SETSEL, f-1, f+StrLen(Find3)-1, , ahk_id %hMainEdit3%
    SendMessage, EM_SCROLLCARET,,,, ahk_id %hMainEdit3%
Return

;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------

Fin4:
Gui, F1: -MaximizeBox -MinimizeBox -DPIScale +HWNDhGUIFind
Gui, F1: Add, Text, ym+5, Что:
Gui, F1: Add, Edit, x+25 yp-5 w284 vFind4 hwndhFind4, Можно
Gui, F1: Add, Button, x+10 yp gGoSearch4, Найти далее
Gui, F1: Add, Button, xp y+5 wp gCancel1, Отмена
Gui, F1: Add, Checkbox, vLoop4 y+0 xm Checked, Зациклить поиск
Gui, F1: Add, Checkbox, vSens4 y+10 xp, С учетом регистра
Gui, F1: Add, GroupBox, x+10 yp-35 h55, Направление
Gui, F1: Add, Radio, xp+10 yp+25 vDirectUp4, Вверх
Gui, F1: Add, Radio, x+15 Checked, Вниз 
 Gui, F1: Show, , Найти 
Return


GoSearch4:
    GuiControlGet, DirectUp4, F1:
    GuiControlGet, Sens4, F1:
    GuiControlGet, Loop4, F1:
    ControlGetText, MainEdit4,, ahk_id %hMainEdit4%
    ControlGetText, Find4,, ahk_id %hFind4%
    SendMessage, EM_GETSEL, &start, &end, , ahk_id %hMainEdit4%
    If DirectUp4
        f := (f := InStr(SubStr(MainEdit4, 1, NumGet(start)), Find4, Sens4, 0)) ? f : (Loop4 ? InStr(MainEdit4, Find4, Sens4, 0) : 0)
    Else
        f := (f := InStr(MainEdit4, Find4, Sens4, NumGet(end)+1)) ? f : (Loop4 ? InStr(MainEdit4, Find4, Sens4, 1) : 0)
    If !f
    {
        MsgBox, 8256, Edit find, Не удаётся найти "%Find4%"
        Return
    }
    SendMessage, EM_SETSEL, f-1, f+StrLen(Find4)-1, , ahk_id %hMainEdit4%
    SendMessage, EM_SCROLLCARET,,,, ahk_id %hMainEdit4%
Return

;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------

Fin5:
Gui, F1: -MaximizeBox -MinimizeBox -DPIScale +HWNDhGUIFind
Gui, F1: Add, Text, ym+5, Что:
Gui, F1: Add, Edit, x+25 yp-5 w284 vFind5 hwndhFind5, Можно
Gui, F1: Add, Button, x+10 yp gGoSearch5, Найти далее
Gui, F1: Add, Button, xp y+5 wp gCancel1, Отмена
Gui, F1: Add, Checkbox, vLoop5 y+0 xm Checked, Зациклить поиск
Gui, F1: Add, Checkbox, vSens5 y+10 xp, С учетом регистра
Gui, F1: Add, GroupBox, x+10 yp-35 h55, Направление
Gui, F1: Add, Radio, xp+10 yp+25 vDirectUp5, Вверх
Gui, F1: Add, Radio, x+15 Checked, Вниз 
 Gui, F1: Show, , Найти 
Return


GoSearch5:
    GuiControlGet, DirectUp5, F1:
    GuiControlGet, Sens5, F1:
    GuiControlGet, Loop5, F1:
    ControlGetText, MainEdit5,, ahk_id %hMainEdit5%
    ControlGetText, Find5,, ahk_id %hFind5%
    SendMessage, EM_GETSEL, &start, &end, , ahk_id %hMainEdit5%
    If DirectUp5
        f := (f := InStr(SubStr(MainEdit5, 1, NumGet(start)), Find5, Sens5, 0)) ? f : (Loop5 ? InStr(MainEdit5, Find5, Sens5, 0) : 0)
    Else
        f := (f := InStr(MainEdit5, Find5, Sens5, NumGet(end)+1)) ? f : (Loop5 ? InStr(MainEdit5, Find5, Sens5, 1) : 0)
    If !f
    {
        MsgBox, 8256, Edit find, Не удаётся найти "%Find5%"
        Return
    }
    SendMessage, EM_SETSEL, f-1, f+StrLen(Find5)-1, , ahk_id %hMainEdit5%
    SendMessage, EM_SCROLLCARET,,,, ahk_id %hMainEdit5%
Return

;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------

Fin6:
Gui, F1: -MaximizeBox -MinimizeBox -DPIScale +HWNDhGUIFind
Gui, F1: Add, Text, ym+5, Что:
Gui, F1: Add, Edit, x+25 yp-5 w284 vFind6 hwndhFind6, Можно
Gui, F1: Add, Button, x+10 yp gGoSearch6, Найти далее
Gui, F1: Add, Button, xp y+5 wp gCancel1, Отмена
Gui, F1: Add, Checkbox, vLoop6 y+0 xm Checked, Зациклить поиск
Gui, F1: Add, Checkbox, vSens6 y+10 xp, С учетом регистра
Gui, F1: Add, GroupBox, x+10 yp-35 h55, Направление
Gui, F1: Add, Radio, xp+10 yp+25 vDirectUp6, Вверх
Gui, F1: Add, Radio, x+15 Checked, Вниз 
 Gui, F1: Show, , Найти 
Return


GoSearch6:
    GuiControlGet, DirectUp6, F1:
    GuiControlGet, Sens6, F1:
    GuiControlGet, Loop6, F1:
    ControlGetText, MainEdit6,, ahk_id %hMainEdit6%
    ControlGetText, Find6,, ahk_id %hFind6%
    SendMessage, EM_GETSEL, &start, &end, , ahk_id %hMainEdit6%
    If DirectUp6
        f := (f := InStr(SubStr(MainEdit6, 1, NumGet(start)), Find6, Sens6, 0)) ? f : (Loop6 ? InStr(MainEdit6, Find6, Sens6, 0) : 0)
    Else
        f := (f := InStr(MainEdit6, Find6, Sens6, NumGet(end)+1)) ? f : (Loop6 ? InStr(MainEdit6, Find6, Sens6, 1) : 0)
    If !f
    {
        MsgBox, 8256, Edit find, Не удаётся найти "%Find6%"
        Return
    }
    SendMessage, EM_SETSEL, f-1, f+StrLen(Find6)-1, , ahk_id %hMainEdit6%
    SendMessage, EM_SCROLLCARET,,,, ahk_id %hMainEdit6%
Return

;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------

Fin7:
Gui, F1: -MaximizeBox -MinimizeBox -DPIScale +HWNDhGUIFind
Gui, F1: Add, Text, ym+5, Что:
Gui, F1: Add, Edit, x+25 yp-5 w284 vFind7 hwndhFind7, Можно
Gui, F1: Add, Button, x+10 yp gGoSearch7, Найти далее
Gui, F1: Add, Button, xp y+5 wp gCancel1, Отмена
Gui, F1: Add, Checkbox, vLoop7 y+0 xm Checked, Зациклить поиск
Gui, F1: Add, Checkbox, vSens7 y+10 xp, С учетом регистра
Gui, F1: Add, GroupBox, x+10 yp-35 h55, Направление
Gui, F1: Add, Radio, xp+10 yp+25 vDirectUp7, Вверх
Gui, F1: Add, Radio, x+15 Checked, Вниз 
 Gui, F1: Show, , Найти 
Return


GoSearch7:
    GuiControlGet, DirectUp7, F1:
    GuiControlGet, Sens7, F1:
    GuiControlGet, Loop7, F1:
    ControlGetText, MainEdit7,, ahk_id %hMainEdit7%
    ControlGetText, Find7,, ahk_id %hFind7%
    SendMessage, EM_GETSEL, &start, &end, , ahk_id %hMainEdit7%
    If DirectUp7
        f := (f := InStr(SubStr(MainEdit7, 1, NumGet(start)), Find7, Sens7, 0)) ? f : (Loop7 ? InStr(MainEdit7, Find7, Sens7, 0) : 0)
    Else
        f := (f := InStr(MainEdit7, Find7, Sens7, NumGet(end)+1)) ? f : (Loop7 ? InStr(MainEdit7, Find7, Sens7, 1) : 0)
    If !f
    {
        MsgBox, 8256, Edit find, Не удаётся найти "%Find7%"
        Return
    }
    SendMessage, EM_SETSEL, f-1, f+StrLen(Find7)-1, , ahk_id %hMainEdit7%
    SendMessage, EM_SCROLLCARET,,,, ahk_id %hMainEdit7%
Return

;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------

Fin8:
Gui, F1: -MaximizeBox -MinimizeBox -DPIScale +HWNDhGUIFind
Gui, F1: Add, Text, ym+5, Что:
Gui, F1: Add, Edit, x+25 yp-5 w284 vFind8 hwndhFind8, Можно
Gui, F1: Add, Button, x+10 yp gGoSearch8, Найти далее
Gui, F1: Add, Button, xp y+5 wp gCancel1, Отмена
Gui, F1: Add, Checkbox, vLoop8 y+0 xm Checked, Зациклить поиск
Gui, F1: Add, Checkbox, vSens8 y+10 xp, С учетом регистра
Gui, F1: Add, GroupBox, x+10 yp-35 h55, Направление
Gui, F1: Add, Radio, xp+10 yp+25 vDirectUp8, Вверх
Gui, F1: Add, Radio, x+15 Checked, Вниз 
 Gui, F1: Show, , Найти 
Return


GoSearch8:
    GuiControlGet, DirectUp8, F1:
    GuiControlGet, Sens8, F1:
    GuiControlGet, Loop8, F1:
    ControlGetText, MainEdit8,, ahk_id %hMainEdit8%
    ControlGetText, Find8,, ahk_id %hFind8%
    SendMessage, EM_GETSEL, &start, &end, , ahk_id %hMainEdit8%
    If DirectUp8
        f := (f := InStr(SubStr(MainEdit8, 1, NumGet(start)), Find8, Sens8, 0)) ? f : (Loop8 ? InStr(MainEdit8, Find8, Sens8, 0) : 0)
    Else
        f := (f := InStr(MainEdit8, Find8, Sens8, NumGet(end)+1)) ? f : (Loop8 ? InStr(MainEdit8, Find8, Sens8, 1) : 0)
    If !f
    {
        MsgBox, 8256, Edit find, Не удаётся найти "%Find8%"
        Return
    }
    SendMessage, EM_SETSEL, f-1, f+StrLen(Find8)-1, , ahk_id %hMainEdit8%
    SendMessage, EM_SCROLLCARET,,,, ahk_id %hMainEdit8%
Return

;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------

Fin9:
Gui, F1: -MaximizeBox -MinimizeBox -DPIScale +HWNDhGUIFind
Gui, F1: Add, Text, ym+5, Что:
Gui, F1: Add, Edit, x+25 yp-5 w284 vFind9 hwndhFind9, Можно
Gui, F1: Add, Button, x+10 yp gGoSearch9, Найти далее
Gui, F1: Add, Button, xp y+5 wp gCancel1, Отмена
Gui, F1: Add, Checkbox, vLoop9 y+0 xm Checked, Зациклить поиск
Gui, F1: Add, Checkbox, vSens9 y+10 xp, С учетом регистра
Gui, F1: Add, GroupBox, x+10 yp-35 h55, Направление
Gui, F1: Add, Radio, xp+10 yp+25 vDirectUp9, Вверх
Gui, F1: Add, Radio, x+15 Checked, Вниз 
 Gui, F1: Show, , Найти 
Return


GoSearch9:
    GuiControlGet, DirectUp9, F1:
    GuiControlGet, Sens9, F1:
    GuiControlGet, Loop9, F1:
    ControlGetText, MainEdit9,, ahk_id %hMainEdit9%
    ControlGetText, Find9,, ahk_id %hFind9%
    SendMessage, EM_GETSEL, &start, &end, , ahk_id %hMainEdit9%
    If DirectUp9
        f := (f := InStr(SubStr(MainEdit9, 1, NumGet(start)), Find9, Sens9, 0)) ? f : (Loop9 ? InStr(MainEdit9, Find9, Sens9, 0) : 0)
    Else
        f := (f := InStr(MainEdit9, Find9, Sens9, NumGet(end)+1)) ? f : (Loop9 ? InStr(MainEdit9, Find9, Sens9, 1) : 0)
    If !f
    {
        MsgBox, 8256, Edit find, Не удаётся найти "%Find9%"
        Return
    }
    SendMessage, EM_SETSEL, f-1, f+StrLen(Find9)-1, , ahk_id %hMainEdit9%
    SendMessage, EM_SCROLLCARET,,,, ahk_id %hMainEdit9%
Return

;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------

Fin10:
Gui, F1: -MaximizeBox -MinimizeBox -DPIScale +HWNDhGUIFind
Gui, F1: Add, Text, ym+5, Что:
Gui, F1: Add, Edit, x+25 yp-5 w284 vFind10 hwndhFind10, Можно
Gui, F1: Add, Button, x+10 yp gGoSearch10, Найти далее
Gui, F1: Add, Button, xp y+5 wp gCancel1, Отмена
Gui, F1: Add, Checkbox, vLoop10 y+0 xm Checked, Зациклить поиск
Gui, F1: Add, Checkbox, vSens10 y+10 xp, С учетом регистра
Gui, F1: Add, GroupBox, x+10 yp-35 h55, Направление
Gui, F1: Add, Radio, xp+10 yp+25 vDirectUp10, Вверх
Gui, F1: Add, Radio, x+15 Checked, Вниз 
 Gui, F1: Show, , Найти 
Return


GoSearch10:
    GuiControlGet, DirectUp10, F1:
    GuiControlGet, Sens10, F1:
    GuiControlGet, Loop10, F1:
    ControlGetText, MainEdit10,, ahk_id %hMainEdit10%
    ControlGetText, Find10,, ahk_id %hFind10%
    SendMessage, EM_GETSEL, &start, &end, , ahk_id %hMainEdit10%
    If DirectUp10
        f := (f := InStr(SubStr(MainEdit10, 1, NumGet(start)), Find10, Sens10, 0)) ? f : (Loop10 ? InStr(MainEdit10, Find10, Sens10, 0) : 0)
    Else
        f := (f := InStr(MainEdit10, Find10, Sens10, NumGet(end)+1)) ? f : (Loop10 ? InStr(MainEdit10, Find10, Sens10, 1) : 0)
    If !f
    {
        MsgBox, 8256, Edit find, Не удаётся найти "%Find10%"
        Return
    }
    SendMessage, EM_SETSEL, f-1, f+StrLen(Find10)-1, , ahk_id %hMainEdit10%
    SendMessage, EM_SCROLLCARET,,,, ahk_id %hMainEdit10%
Return

;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------

Fin11:
Gui, F1: -MaximizeBox -MinimizeBox -DPIScale +HWNDhGUIFind
Gui, F1: Add, Text, ym+5, Что:
Gui, F1: Add, Edit, x+25 yp-5 w284 vFind11 hwndhFind11, Можно
Gui, F1: Add, Button, x+10 yp gGoSearch11, Найти далее
Gui, F1: Add, Button, xp y+5 wp gCancel1, Отмена
Gui, F1: Add, Checkbox, vLoop11 y+0 xm Checked, Зациклить поиск
Gui, F1: Add, Checkbox, vSens11 y+10 xp, С учетом регистра
Gui, F1: Add, GroupBox, x+10 yp-35 h55, Направление
Gui, F1: Add, Radio, xp+10 yp+25 vDirectUp11, Вверх
Gui, F1: Add, Radio, x+15 Checked, Вниз 
 Gui, F1: Show, , Найти 
Return


GoSearch11:
    GuiControlGet, DirectUp11, F1:
    GuiControlGet, Sens11, F1:
    GuiControlGet, Loop11, F1:
    ControlGetText, MainEdit11,, ahk_id %hMainEdit11%
    ControlGetText, Find11,, ahk_id %hFind11%
    SendMessage, EM_GETSEL, &start, &end, , ahk_id %hMainEdit11%
    If DirectUp11
        f := (f := InStr(SubStr(MainEdit11, 1, NumGet(start)), Find11, Sens11, 0)) ? f : (Loop11 ? InStr(MainEdit11, Find11, Sens11, 0) : 0)
    Else
        f := (f := InStr(MainEdit11, Find11, Sens11, NumGet(end)+1)) ? f : (Loop11 ? InStr(MainEdit11, Find11, Sens11, 1) : 0)
    If !f
    {
        MsgBox, 8256, Edit find, Не удаётся найти "%Find11%"
        Return
    }
    SendMessage, EM_SETSEL, f-1, f+StrLen(Find11)-1, , ahk_id %hMainEdit11%
    SendMessage, EM_SCROLLCARET,,,, ahk_id %hMainEdit11%
Return

;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------

Fin12:
Gui, F1: -MaximizeBox -MinimizeBox -DPIScale +HWNDhGUIFind
Gui, F1: Add, Text, ym+5, Что:
Gui, F1: Add, Edit, x+25 yp-5 w284 vFind12 hwndhFind12, Можно
Gui, F1: Add, Button, x+10 yp gGoSearch12, Найти далее
Gui, F1: Add, Button, xp y+5 wp gCancel1, Отмена
Gui, F1: Add, Checkbox, vLoop12 y+0 xm Checked, Зациклить поиск
Gui, F1: Add, Checkbox, vSens12 y+10 xp, С учетом регистра
Gui, F1: Add, GroupBox, x+10 yp-35 h55, Направление
Gui, F1: Add, Radio, xp+10 yp+25 vDirectUp12, Вверх
Gui, F1: Add, Radio, x+15 Checked, Вниз 
 Gui, F1: Show, , Найти 
Return


GoSearch12:
    GuiControlGet, DirectUp12, F1:
    GuiControlGet, Sens12, F1:
    GuiControlGet, Loop12, F1:
    ControlGetText, MainEdit12,, ahk_id %hMainEdit12%
    ControlGetText, Find12,, ahk_id %hFind12%
    SendMessage, EM_GETSEL, &start, &end, , ahk_id %hMainEdit12%
    If DirectUp12
        f := (f := InStr(SubStr(MainEdit12, 1, NumGet(start)), Find12, Sens12, 0)) ? f : (Loop12 ? InStr(MainEdit12, Find12, Sens12, 0) : 0)
    Else
        f := (f := InStr(MainEdit12, Find12, Sens12, NumGet(end)+1)) ? f : (Loop12 ? InStr(MainEdit12, Find12, Sens12, 1) : 0)
    If !f
    {
        MsgBox, 8256, Edit find, Не удаётся найти "%Find12%"
        Return
    }
    SendMessage, EM_SETSEL, f-1, f+StrLen(Find12)-1, , ahk_id %hMainEdit12%
    SendMessage, EM_SCROLLCARET,,,, ahk_id %hMainEdit12%
Return

;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------

Fin13:
Gui, F1: -MaximizeBox -MinimizeBox -DPIScale +HWNDhGUIFind
Gui, F1: Add, Text, ym+5, Что:
Gui, F1: Add, Edit, x+25 yp-5 w284 vFind13 hwndhFind13, Можно
Gui, F1: Add, Button, x+10 yp gGoSearch13, Найти далее
Gui, F1: Add, Button, xp y+5 wp gCancel1, Отмена
Gui, F1: Add, Checkbox, vLoop13 y+0 xm Checked, Зациклить поиск
Gui, F1: Add, Checkbox, vSens13 y+10 xp, С учетом регистра
Gui, F1: Add, GroupBox, x+10 yp-35 h55, Направление
Gui, F1: Add, Radio, xp+10 yp+25 vDirectUp13, Вверх
Gui, F1: Add, Radio, x+15 Checked, Вниз 
 Gui, F1: Show, , Найти 
Return


GoSearch13:
    GuiControlGet, DirectUp13, F1:
    GuiControlGet, Sens13, F1:
    GuiControlGet, Loop13, F1:
    ControlGetText, MainEdit13,, ahk_id %hMainEdit13%
    ControlGetText, Find13,, ahk_id %hFind13%
    SendMessage, EM_GETSEL, &start, &end, , ahk_id %hMainEdit13%
    If DirectUp13
        f := (f := InStr(SubStr(MainEdit13, 1, NumGet(start)), Find13, Sens13, 0)) ? f : (Loop13 ? InStr(MainEdit13, Find13, Sens13, 0) : 0)
    Else
        f := (f := InStr(MainEdit13, Find13, Sens13, NumGet(end)+1)) ? f : (Loop13 ? InStr(MainEdit13, Find13, Sens13, 1) : 0)
    If !f
    {
        MsgBox, 8256, Edit find, Не удаётся найти "%Find13%"
        Return
    }
    SendMessage, EM_SETSEL, f-1, f+StrLen(Find13)-1, , ahk_id %hMainEdit13%
    SendMessage, EM_SCROLLCARET,,,, ahk_id %hMainEdit13%
Return

;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------

Fin14:
Gui, F1: -MaximizeBox -MinimizeBox -DPIScale +HWNDhGUIFind
Gui, F1: Add, Text, ym+5, Что:
Gui, F1: Add, Edit, x+25 yp-5 w284 vFind14 hwndhFind14, Можно
Gui, F1: Add, Button, x+10 yp gGoSearch14, Найти далее
Gui, F1: Add, Button, xp y+5 wp gCancel1, Отмена
Gui, F1: Add, Checkbox, vLoop14 y+0 xm Checked, Зациклить поиск
Gui, F1: Add, Checkbox, vSens14 y+10 xp, С учетом регистра
Gui, F1: Add, GroupBox, x+10 yp-35 h55, Направление
Gui, F1: Add, Radio, xp+10 yp+25 vDirectUp14, Вверх
Gui, F1: Add, Radio, x+15 Checked, Вниз 
 Gui, F1: Show, , Найти 
Return


GoSearch14:
    GuiControlGet, DirectUp14, F1:
    GuiControlGet, Sens14, F1:
    GuiControlGet, Loop14, F1:
    ControlGetText, MainEdit14,, ahk_id %hMainEdit14%
    ControlGetText, Find14,, ahk_id %hFind14%
    SendMessage, EM_GETSEL, &start, &end, , ahk_id %hMainEdit14%
    If DirectUp14
        f := (f := InStr(SubStr(MainEdit14, 1, NumGet(start)), Find14, Sens14, 0)) ? f : (Loop14 ? InStr(MainEdit14, Find14, Sens14, 0) : 0)
    Else
        f := (f := InStr(MainEdit14, Find14, Sens14, NumGet(end)+1)) ? f : (Loop14 ? InStr(MainEdit14, Find14, Sens14, 1) : 0)
    If !f
    {
        MsgBox, 8256, Edit find, Не удаётся найти "%Find14%"
        Return
    }
    SendMessage, EM_SETSEL, f-1, f+StrLen(Find14)-1, , ahk_id %hMainEdit14%
    SendMessage, EM_SCROLLCARET,,,, ahk_id %hMainEdit14%
Return

;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------

Fin15:
Gui, F1: -MaximizeBox -MinimizeBox -DPIScale +HWNDhGUIFind
Gui, F1: Add, Text, ym+5, Что:
Gui, F1: Add, Edit, x+25 yp-5 w284 vFind15 hwndhFind15, Можно
Gui, F1: Add, Button, x+10 yp gGoSearch15, Найти далее
Gui, F1: Add, Button, xp y+5 wp gCancel1, Отмена
Gui, F1: Add, Checkbox, vLoop15 y+0 xm Checked, Зациклить поиск
Gui, F1: Add, Checkbox, vSens15 y+10 xp, С учетом регистра
Gui, F1: Add, GroupBox, x+10 yp-35 h55, Направление
Gui, F1: Add, Radio, xp+10 yp+25 vDirectUp15, Вверх
Gui, F1: Add, Radio, x+15 Checked, Вниз 
 Gui, F1: Show, , Найти 
Return


GoSearch15:
    GuiControlGet, DirectUp15, F1:
    GuiControlGet, Sens15, F1:
    GuiControlGet, Loop15, F1:
    ControlGetText, MainEdit15,, ahk_id %hMainEdit15%
    ControlGetText, Find15,, ahk_id %hFind15%
    SendMessage, EM_GETSEL, &start, &end, , ahk_id %hMainEdit15%
    If DirectUp15
        f := (f := InStr(SubStr(MainEdit15, 1, NumGet(start)), Find15, Sens15, 0)) ? f : (Loop15 ? InStr(MainEdit15, Find15, Sens15, 0) : 0)
    Else
        f := (f := InStr(MainEdit15, Find15, Sens15, NumGet(end)+1)) ? f : (Loop15 ? InStr(MainEdit15, Find15, Sens15, 1) : 0)
    If !f
    {
        MsgBox, 8256, Edit find, Не удаётся найти "%Find15%"
        Return
    }
    SendMessage, EM_SETSEL, f-1, f+StrLen(Find15)-1, , ahk_id %hMainEdit15%
    SendMessage, EM_SCROLLCARET,,,, ahk_id %hMainEdit15%
Return

;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------

Fin16:
Gui, F1: -MaximizeBox -MinimizeBox -DPIScale +HWNDhGUIFind
Gui, F1: Add, Text, ym+5, Что:
Gui, F1: Add, Edit, x+25 yp-5 w284 vFind16 hwndhFind16, Можно
Gui, F1: Add, Button, x+10 yp gGoSearch16, Найти далее
Gui, F1: Add, Button, xp y+5 wp gCancel1, Отмена
Gui, F1: Add, Checkbox, vLoop16 y+0 xm Checked, Зациклить поиск
Gui, F1: Add, Checkbox, vSens16 y+10 xp, С учетом регистра
Gui, F1: Add, GroupBox, x+10 yp-35 h55, Направление
Gui, F1: Add, Radio, xp+10 yp+25 vDirectUp16, Вверх
Gui, F1: Add, Radio, x+15 Checked, Вниз 
 Gui, F1: Show, , Найти 
Return


GoSearch16:
    GuiControlGet, DirectUp16, F1:
    GuiControlGet, Sens16, F1:
    GuiControlGet, Loop16, F1:
    ControlGetText, MainEdit16,, ahk_id %hMainEdit16%
    ControlGetText, Find16,, ahk_id %hFind16%
    SendMessage, EM_GETSEL, &start, &end, , ahk_id %hMainEdit16%
    If DirectUp16
        f := (f := InStr(SubStr(MainEdit16, 1, NumGet(start)), Find16, Sens16, 0)) ? f : (Loop16 ? InStr(MainEdit16, Find16, Sens16, 0) : 0)
    Else
        f := (f := InStr(MainEdit16, Find16, Sens16, NumGet(end)+1)) ? f : (Loop16 ? InStr(MainEdit16, Find16, Sens16, 1) : 0)
    If !f
    {
        MsgBox, 8256, Edit find, Не удаётся найти "%Find16%"
        Return
    }
    SendMessage, EM_SETSEL, f-1, f+StrLen(Find16)-1, , ahk_id %hMainEdit16%
    SendMessage, EM_SCROLLCARET,,,, ahk_id %hMainEdit16%
Return

;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------

Fin17:
Gui, F1: -MaximizeBox -MinimizeBox -DPIScale +HWNDhGUIFind
Gui, F1: Add, Text, ym+5, Что:
Gui, F1: Add, Edit, x+25 yp-5 w284 vFind17 hwndhFind17, Можно
Gui, F1: Add, Button, x+10 yp gGoSearch17, Найти далее
Gui, F1: Add, Button, xp y+5 wp gCancel1, Отмена
Gui, F1: Add, Checkbox, vLoop17 y+0 xm Checked, Зациклить поиск
Gui, F1: Add, Checkbox, vSens17 y+10 xp, С учетом регистра
Gui, F1: Add, GroupBox, x+10 yp-35 h55, Направление
Gui, F1: Add, Radio, xp+10 yp+25 vDirectUp17, Вверх
Gui, F1: Add, Radio, x+15 Checked, Вниз 
 Gui, F1: Show, , Найти 
Return


GoSearch17:
    GuiControlGet, DirectUp17, F1:
    GuiControlGet, Sens17, F1:
    GuiControlGet, Loop17, F1:
    ControlGetText, MainEdit17,, ahk_id %hMainEdit17%
    ControlGetText, Find17,, ahk_id %hFind17%
    SendMessage, EM_GETSEL, &start, &end, , ahk_id %hMainEdit17%
    If DirectUp17
        f := (f := InStr(SubStr(MainEdit17, 1, NumGet(start)), Find17, Sens17, 0)) ? f : (Loop17 ? InStr(MainEdit17, Find17, Sens17, 0) : 0)
    Else
        f := (f := InStr(MainEdit17, Find17, Sens17, NumGet(end)+1)) ? f : (Loop17 ? InStr(MainEdit17, Find17, Sens17, 1) : 0)
    If !f
    {
        MsgBox, 8256, Edit find, Не удаётся найти "%Find17%"
        Return
    }
    SendMessage, EM_SETSEL, f-1, f+StrLen(Find17)-1, , ahk_id %hMainEdit17%
    SendMessage, EM_SCROLLCARET,,,, ahk_id %hMainEdit17%
Return

;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------

Fin18:
Gui, F1: -MaximizeBox -MinimizeBox -DPIScale +HWNDhGUIFind
Gui, F1: Add, Text, ym+5, Что:
Gui, F1: Add, Edit, x+25 yp-5 w284 vFind18 hwndhFind18, Можно
Gui, F1: Add, Button, x+10 yp gGoSearch18, Найти далее
Gui, F1: Add, Button, xp y+5 wp gCancel1, Отмена
Gui, F1: Add, Checkbox, vLoop18 y+0 xm Checked, Зациклить поиск
Gui, F1: Add, Checkbox, vSens18 y+10 xp, С учетом регистра
Gui, F1: Add, GroupBox, x+10 yp-35 h55, Направление
Gui, F1: Add, Radio, xp+10 yp+25 vDirectUp18, Вверх
Gui, F1: Add, Radio, x+15 Checked, Вниз 
 Gui, F1: Show, , Найти 
Return


GoSearch18:
    GuiControlGet, DirectUp18, F1:
    GuiControlGet, Sens18, F1:
    GuiControlGet, Loop18, F1:
    ControlGetText, MainEdit18,, ahk_id %hMainEdit18%
    ControlGetText, Find18,, ahk_id %hFind18%
    SendMessage, EM_GETSEL, &start, &end, , ahk_id %hMainEdit18%
    If DirectUp18
        f := (f := InStr(SubStr(MainEdit18, 1, NumGet(start)), Find18, Sens18, 0)) ? f : (Loop18 ? InStr(MainEdit18, Find18, Sens18, 0) : 0)
    Else
        f := (f := InStr(MainEdit18, Find18, Sens18, NumGet(end)+1)) ? f : (Loop18 ? InStr(MainEdit18, Find18, Sens18, 1) : 0)
    If !f
    {
        MsgBox, 8256, Edit find, Не удаётся найти "%Find18%"
        Return
    }
    SendMessage, EM_SETSEL, f-1, f+StrLen(Find18)-1, , ahk_id %hMainEdit18%
    SendMessage, EM_SCROLLCARET,,,, ahk_id %hMainEdit18%
Return

;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------

Fin19:
Gui, F1: -MaximizeBox -MinimizeBox -DPIScale +HWNDhGUIFind
Gui, F1: Add, Text, ym+5, Что:
Gui, F1: Add, Edit, x+25 yp-5 w284 vFind19 hwndhFind19, Можно
Gui, F1: Add, Button, x+10 yp gGoSearch19, Найти далее
Gui, F1: Add, Button, xp y+5 wp gCancel1, Отмена
Gui, F1: Add, Checkbox, vLoop19 y+0 xm Checked, Зациклить поиск
Gui, F1: Add, Checkbox, vSens19 y+10 xp, С учетом регистра
Gui, F1: Add, GroupBox, x+10 yp-35 h55, Направление
Gui, F1: Add, Radio, xp+10 yp+25 vDirectUp19, Вверх
Gui, F1: Add, Radio, x+15 Checked, Вниз 
 Gui, F1: Show, , Найти 
Return


GoSearch19:
    GuiControlGet, DirectUp19, F1:
    GuiControlGet, Sens19, F1:
    GuiControlGet, Loop19, F1:
    ControlGetText, MainEdit19,, ahk_id %hMainEdit19%
    ControlGetText, Find19,, ahk_id %hFind19%
    SendMessage, EM_GETSEL, &start, &end, , ahk_id %hMainEdit19%
    If DirectUp19
        f := (f := InStr(SubStr(MainEdit19, 1, NumGet(start)), Find19, Sens19, 0)) ? f : (Loop19 ? InStr(MainEdit19, Find19, Sens19, 0) : 0)
    Else
        f := (f := InStr(MainEdit19, Find19, Sens19, NumGet(end)+1)) ? f : (Loop19 ? InStr(MainEdit19, Find19, Sens19, 1) : 0)
    If !f
    {
        MsgBox, 8256, Edit find, Не удаётся найти "%Find19%"
        Return
    }
    SendMessage, EM_SETSEL, f-1, f+StrLen(Find19)-1, , ahk_id %hMainEdit19%
    SendMessage, EM_SCROLLCARET,,,, ahk_id %hMainEdit19%
Return

;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------

Fin20:
Gui, F1: -MaximizeBox -MinimizeBox -DPIScale +HWNDhGUIFind
Gui, F1: Add, Text, ym+5, Что:
Gui, F1: Add, Edit, x+25 yp-5 w284 vFind20 hwndhFind20, Можно
Gui, F1: Add, Button, x+10 yp gGoSearch20, Найти далее
Gui, F1: Add, Button, xp y+5 wp gCancel1, Отмена
Gui, F1: Add, Checkbox, vLoop20 y+0 xm Checked, Зациклить поиск
Gui, F1: Add, Checkbox, vSens20 y+10 xp, С учетом регистра
Gui, F1: Add, GroupBox, x+10 yp-35 h55, Направление
Gui, F1: Add, Radio, xp+10 yp+25 vDirectUp20, Вверх
Gui, F1: Add, Radio, x+15 Checked, Вниз 
 Gui, F1: Show, , Найти 
Return


GoSearch20:
    GuiControlGet, DirectUp20, F1:
    GuiControlGet, Sens20, F1:
    GuiControlGet, Loop20, F1:
    ControlGetText, MainEdit20,, ahk_id %hMainEdit20%
    ControlGetText, Find20,, ahk_id %hFind20%
    SendMessage, EM_GETSEL, &start, &end, , ahk_id %hMainEdit20%
    If DirectUp20
        f := (f := InStr(SubStr(MainEdit20, 1, NumGet(start)), Find20, Sens20, 0)) ? f : (Loop20 ? InStr(MainEdit20, Find20, Sens20, 0) : 0)
    Else
        f := (f := InStr(MainEdit20, Find20, Sens20, NumGet(end)+1)) ? f : (Loop20 ? InStr(MainEdit20, Find20, Sens20, 1) : 0)
    If !f
    {
        MsgBox, 8256, Edit find, Не удаётся найти "%Find20%"
        Return
    }
    SendMessage, EM_SETSEL, f-1, f+StrLen(Find20)-1, , ahk_id %hMainEdit20%
    SendMessage, EM_SCROLLCARET,,,, ahk_id %hMainEdit20%
Return

;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------

Fin21:
Gui, F1: -MaximizeBox -MinimizeBox -DPIScale +HWNDhGUIFind
Gui, F1: Add, Text, ym+5, Что:
Gui, F1: Add, Edit, x+25 yp-5 w284 vFind21 hwndhFind21, Можно
Gui, F1: Add, Button, x+10 yp gGoSearch21, Найти далее
Gui, F1: Add, Button, xp y+5 wp gCancel1, Отмена
Gui, F1: Add, Checkbox, vLoop21 y+0 xm Checked, Зациклить поиск
Gui, F1: Add, Checkbox, vSens21 y+10 xp, С учетом регистра
Gui, F1: Add, GroupBox, x+10 yp-35 h55, Направление
Gui, F1: Add, Radio, xp+10 yp+25 vDirectUp21, Вверх
Gui, F1: Add, Radio, x+15 Checked, Вниз 
 Gui, F1: Show, , Найти 
Return


GoSearch21:
    GuiControlGet, DirectUp21, F1:
    GuiControlGet, Sens21, F1:
    GuiControlGet, Loop21, F1:
    ControlGetText, MainEdit21,, ahk_id %hMainEdit21%
    ControlGetText, Find21,, ahk_id %hFind21%
    SendMessage, EM_GETSEL, &start, &end, , ahk_id %hMainEdit21%
    If DirectUp21
        f := (f := InStr(SubStr(MainEdit21, 1, NumGet(start)), Find21, Sens21, 0)) ? f : (Loop21 ? InStr(MainEdit21, Find21, Sens21, 0) : 0)
    Else
        f := (f := InStr(MainEdit21, Find21, Sens21, NumGet(end)+1)) ? f : (Loop21 ? InStr(MainEdit21, Find21, Sens21, 1) : 0)
    If !f
    {
        MsgBox, 8256, Edit find, Не удаётся найти "%Find21%"
        Return
    }
    SendMessage, EM_SETSEL, f-1, f+StrLen(Find21)-1, , ahk_id %hMainEdit21%
    SendMessage, EM_SCROLLCARET,,,, ahk_id %hMainEdit21%
Return