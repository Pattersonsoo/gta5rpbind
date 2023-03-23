Return
;-----------------------------------------------------------------------
;-----------------------------------------------------------------------
;-----------------------------------------------------------------------

DonwloadPravila: ; Скачивание правил для браузера
    FileRemoveDir, %A_WorkingDir%\crime-pravila
    FileRemoveDir, %A_WorkingDir%\gos-pravila
    FileRemoveDir, %A_WorkingDir%\serv-pravila

    FileDelete, %a_temp%\AuLib\game-gui-browser-%buildverbrow%.ahk
    FileDelete, %a_temp%\AuLib\create-numbers-%buildverbrow%.ahk
    FileDelete, %a_temp%\AuLib\AllGUI-%buildverbrow%.ahk
    FileDelete, %a_temp%\AuLib\DownloadH-%buildverbrow%.ahk

    FileCreateDir, %A_WorkingDir%\crime-pravila
    FileCreateDir, %A_WorkingDir%\gos-pravila
    FileCreateDir, %A_WorkingDir%\serv-pravila

    URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/Include/game-gui-browser-4.ahk, %a_temp%\AuLib\game-gui-browser-%buildverbrow%.ahk
    URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/Include/create-numbers-4.ahk, %a_temp%\AuLib\create-numbers-%buildverbrow%.ahk
    URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/Include/AllGUI-4.ahk, %a_temp%\AuLib\AllGUI-%buildverbrow%.ahk
    URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/Include/DownloadH-4.ahk, %a_temp%\AuLib\DownloadH-%buildverbrow%.ahk
    URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/Include/DopNumber-4.ahk, %a_temp%\AuLib\DopNumber-%buildverbrow%.ahk
    
  URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/serv-pravila/pravila_greenzone.ini, %A_WorkingDir%\serv-pravila\pravila_greenzone.ini
  URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/serv-pravila/pravila_proekta.ini, %A_WorkingDir%\serv-pravila\pravila_proekta.ini
  URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/serv-pravila/pravila_servera.ini, %A_WorkingDir%\serv-pravila\pravila_servera.ini

  URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/gos-pravila/pravila_dall.ini, %A_WorkingDir%\gos-pravila\pravila_dall.ini
  URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/gos-pravila/pravila_dfib.ini, %A_WorkingDir%\gos-pravila\pravila_dfib.ini
  URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/gos-pravila/pravila_gos.ini, %A_WorkingDir%\gos-pravila\pravila_gos.ini
  URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/gos-pravila/pravila_pems.ini, %A_WorkingDir%\gos-pravila\pravila_pems.ini
  URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/gos-pravila/pravila_png.ini, %A_WorkingDir%\gos-pravila\pravila_png.ini
  URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/gos-pravila/pravila_reid.ini, %A_WorkingDir%\gos-pravila\pravila_reid.ini
  URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/gos-pravila/pravila_shturm.ini, %A_WorkingDir%\gos-pravila\pravila_shturm.ini
  URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/gos-pravila/pravila_vid.ini, %A_WorkingDir%\gos-pravila\pravila_vid.ini

  URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/crime-pravila/pravila_band.ini, %A_WorkingDir%\crime-pravila\pravila_band.ini
  URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/crime-pravila/pravila_mafiy.ini, %A_WorkingDir%\crime-pravila\pravila_mafiy.ini
  URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/crime-pravila/pravila_recket.ini, %A_WorkingDir%\crime-pravila\pravila_recket.ini
  URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/crime-pravila/pravila_analget.ini, %A_WorkingDir%\crime-pravila\pravila_analget.ini
  URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/crime-pravila/pravila_armysaspa.ini, %A_WorkingDir%\crime-pravila\pravila_armysaspa.ini
  URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/crime-pravila/pravila_gw.ini, %A_WorkingDir%\crime-pravila\pravila_gw.ini
  URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/crime-pravila/pravila_pohit.ini, %A_WorkingDir%\crime-pravila\pravila_pohit.ini
  URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/crime-pravila/pravila_pushgos.ini, %A_WorkingDir%\crime-pravila\pravila_pushgos.ini
  URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/crime-pravila/pravila_vzh.ini, %A_WorkingDir%\crime-pravila\pravila_vzh.ini
  URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/crime-pravila/pravila_wargh.ini, %A_WorkingDir%\crime-pravila\pravila_wargh.ini

  ScriptNumber := 0
Return


;-----------------------------------------------------------------------
;-----------------------------------------------------------------------
;-----------------------------------------------------------------------

delperrodownload: ; Скачивание данных при выборе сервера Del Perro (Без правил, только данные)
    IfNotExist, %A_WorkingDir%\app
    FileCreateDir, %A_WorkingDir%\app

    IfNotExist, %A_WorkingDir%\app\gui
    FileCreateDir, %A_WorkingDir%\app\gui

    HideTrayTip()
    ;---------------------------------------------------------


    IfExist, %A_WorkingDir%\app\gui\browser-osob-%buildverbrowold%.png
    FileDelete, %A_WorkingDir%\app\gui\browser-osob-%buildverbrowold%.png

    IfExist, %A_WorkingDir%\buttons\button_cancel-%buildverbrowold%.png
    FileDelete, %A_WorkingDir%\buttons\button_cancel-%buildverbrowold%.png

    IfExist, %A_WorkingDir%\buttons\button_info-%buildverbrowold%.png
    FileDelete, %A_WorkingDir%\buttons\button_info-%buildverbrowold%.png

    IfExist, %A_WorkingDir%\buttons\load_checkupd-%buildverbrowold%.png
    FileDelete, %A_WorkingDir%\buttons\load_checkupd-%buildverbrowold%.png

    IfExist, %A_WorkingDir%\buttons\load_downupd-%buildverbrowold%.png
    FileDelete, %A_WorkingDir%\buttons\load_downupd-%buildverbrowold%.png

    IfExist, %A_WorkingDir%\buttons\load_error-%buildverbrowold%.png
    FileDelete, %A_WorkingDir%\buttons\load_error-%buildverbrowold%.png

    IfExist, %A_WorkingDir%\buttons\load_obnar-%buildverbrowold%.png
    FileDelete, %A_WorkingDir%\buttons\load_obnar-%buildverbrowold%.png

    IfExist, %A_WorkingDir%\buttons\load_startupd-%buildverbrowold%.png
    FileDelete, %A_WorkingDir%\buttons\load_startupd-%buildverbrowold%.png

    IfExist, %A_WorkingDir%\app\vidacha_%buildverbrowold%.exe
    FileDelete, %A_WorkingDir%\app\vidacha_%buildverbrowold%.exe

    ;-------------------------------------------------------

    IfNotExist, %A_WorkingDir%\buttons\button_info-%buildverbrow%.png
    URLDownloadToFile, https://i.imgur.com/y7cbOYZ.png, %A_WorkingDir%\buttons\button_info-%buildverbrow%.png

    IfNotExist, %A_WorkingDir%\buttons\load_checkupd-%buildverbrow%.png
    URLDownloadToFile, https://i.imgur.com/Ttn9mIp.png, %A_WorkingDir%\buttons\load_checkupd-%buildverbrow%.png

    IfNotExist, %A_WorkingDir%\app\gui\browser-osob-%buildverbrow%.png
    URLDownloadToFile, https://i.imgur.com/UgSpGQi.png, %A_WorkingDir%\app\gui\browser-osob-%buildverbrow%.png

    IfNotExist, %A_WorkingDir%\buttons\button_cancel-%buildverbrow%.png
    URLDownloadToFile, https://i.imgur.com/rKeMmEg.png, %A_WorkingDir%\buttons\button_cancel-%buildverbrow%.png

    IfNotExist, %A_WorkingDir%\buttons\load_downupd-%buildverbrow%.png
    URLDownloadToFile, https://i.imgur.com/KWfYOQ3.png, %A_WorkingDir%\buttons\load_downupd-%buildverbrow%.png

    IfNotExist, %A_WorkingDir%\buttons\load_error-%buildverbrow%.png
    URLDownloadToFile, https://i.imgur.com/mSFNoVV.png, %A_WorkingDir%\buttons\load_error-%buildverbrow%.png

    IfNotExist, %A_WorkingDir%\buttons\load_obnar-%buildverbrow%.png
    URLDownloadToFile, https://i.imgur.com/jTZzK47.png, %A_WorkingDir%\buttons\load_obnar-%buildverbrow%.png

    IfNotExist, %A_WorkingDir%\buttons\load_startupd-%buildverbrow%.png
    URLDownloadToFile, https://i.imgur.com/8FIWqY9.png, %A_WorkingDir%\buttons\load_startupd-%buildverbrow%.png

    IfNotExist, %A_WorkingDir%\app\vidacha_%buildverbrow%.exe
    URLDownloadToFile, https://drive.google.com/uc?export=download&confirm=no_antivirus&id=11kz0wXP-pyFAdn1DvvbegqkvnyTcgW8K, %A_WorkingDir%\app\vidacha_%buildverbrow%.exe

    ;---------------------------------------------------------
    IfNotExist, %A_WorkingDir%\setting_check.ini
    URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/setting_check_v9.ini, %A_WorkingDir%\setting_check.ini

    IfNotExist, %A_WorkingDir%\setting_3tab.ini
    URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/setting_3tab_v9.ini, %A_WorkingDir%\setting_3tab.ini

    IfNotExist, %A_WorkingDir%\setting_2tab.ini
    URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/setting_2tab_v9.ini, %A_WorkingDir%\setting_2tab.ini

    IfNotExist, %A_WorkingDir%\setting_1tab.ini
    URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/setting_1tab_v9.ini, %A_WorkingDir%\setting_1tab.ini

    IfNotExist, %A_WorkingDir%\setting_edit.ini
    URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/setting_edit_v9.ini, %A_WorkingDir%\setting_edit.ini

    IfNotExist, %A_WorkingDir%\setting.ini
    URLDownloadToFile, https://github.com/Pattersonsoo/gta5rpbind/raw/master/setting_v9.ini, %A_WorkingDir%\setting.ini

Gosub, DonwloadPravila
return

;-----------------------------------------------------------------------
;-----------------------------------------------------------------------
;-----------------------------------------------------------------------

ReadFileSript: ; Чтение файлов настроек и тд
Loop, 10
    {
    IniRead, MyHotKey%A_index%, %A_WorkingDir%\setting_1tab.ini, Setup, Bind%A_index%, %A_Space%
    IniRead, MyText%A_index%, %A_WorkingDir%\setting_1tab.ini, Setup, MyText%A_index%, %A_Space%
    IniRead, MySett%A_index%, %A_WorkingDir%\setting_1tab.ini, Setup, Kolvo%A_index%, 1
    IniRead, EditValue%A_index%, %A_WorkingDir%\setting_2tab.ini, Setup, EditValue%A_index%, %A_Space%
    }
    
Loop, 10
    {
    IniRead, My2HotKey%A_index%, %A_WorkingDir%\setting_2tab.ini, Setup, 2Bind%A_index%, %A_Space%
    IniRead, My2Edit%A_index%, %A_WorkingDir%\setting_2tab.ini, Setup, 2MyText%A_index%, %A_Space%
    }
  
  IniRead, Counter, %A_WorkingDir%\setting.ini, Setup, ReportsOld, 0
  IniRead, Check, %A_WorkingDir%\setting_check.ini, Setup, Check, 0
  IniRead, AutoLogin1, %A_WorkingDir%\setting.ini, Setup, AutoLogin1, %A_Space%
  
  IniRead, password, %A_WorkingDir%\setting.ini, Setup, password, %A_Space%
  IniRead, times, %A_WorkingDir%\setting.ini , Setup, times, %A_Space%
  IniRead, MyBuss, %A_WorkingDir%\setting.ini , Setup, MyBuss, %A_Space%
  IniRead, xpos, %A_WorkingDir%\setting.ini , Position, xpos, 1750
  IniRead, ypos, %A_WorkingDir%\setting.ini , Position, ypos, 150
  IniRead, xpos1, %A_WorkingDir%\setting.ini , Position, xpos1, 1750
  IniRead, ypos1, %A_WorkingDir%\setting.ini , Position, ypos1, 198
  
  IniRead, xpos2, %A_WorkingDir%\setting.ini , Position, xpos2, 1750
  IniRead, ypos2, %A_WorkingDir%\setting.ini , Position, ypos2, 250

  IniRead, MySliderFont1, %A_WorkingDir%\setting.ini , Position, MySliderFont1, Arial
  IniRead, MySliderFont2, %A_WorkingDir%\setting.ini , Position, MySliderFont2, Arial
  IniRead, MySliderFont3, %A_WorkingDir%\setting.ini , Position, MySliderFont3, Arial

  IniRead, kicktimer, %A_WorkingDir%\setting.ini, KickTime, kicktimer, 900000
  IniRead, kicktime, %A_WorkingDir%\setting.ini, KickTime, kicktime, 15
  
  Loop, 3
    {
    IniRead, Set%A_Index%Color, %A_WorkingDir%\setting.ini, Position, Set%A_Index%Color, Red
    IniRead, MySlider%A_Index%, %A_WorkingDir%\setting.ini, Position, MySlider%A_Index%, 187
    IniRead, MySliderVid%A_Index%, %A_WorkingDir%\setting.ini, Position, MySliderVid%A_Index%, 75
    IniRead, HotLogin%A_Index%, %A_WorkingDir%\setting.ini, Setup, HotLogin%A_Index%, %A_Space%
  
    IniRead, 2Set%A_Index%Color, %A_WorkingDir%\setting.ini, Position, 2Set%A_Index%Color, Red
    IniRead, My2Slider%A_Index%, %A_WorkingDir%\setting.ini, Position, My2Slider%A_Index%, 187
    IniRead, My2SliderVid%A_Index%, %A_WorkingDir%\setting.ini, Position, My2SliderVid%A_Index%, 75
  
    IniRead, 3Set%A_Index%Color, %A_WorkingDir%\setting.ini, Position, 3Set%A_Index%Color, Red
    IniRead, My3Slider%A_Index%, %A_WorkingDir%\setting.ini, Position, My3Slider%A_Index%, 187
    IniRead, My3SliderVid%A_Index%, %A_WorkingDir%\setting.ini, Position, My3SliderVid%A_Index%, 75
    }
  
  Loop, 20
    {
    IniRead, ComDev%A_index%, %A_WorkingDir%\setting_3tab.ini, Setup, 3Comand%A_index%, %A_Space%
    IniRead, Command%A_index%, %A_WorkingDir%\setting_3tab.ini, Setup, 3BindComand%A_index%, %A_Space%
    }
  
  Loop, 16
    {
    IniRead, BindComDev%A_index%, %A_WorkingDir%\setting_3tab.ini, Setup, BindText%A_index%, %A_Space%
    IniRead, BindCommand%A_index%, %A_WorkingDir%\setting_3tab.ini, Setup, BindComand%A_index%, %A_Space%
  
    IniRead, BindText%A_index%, %A_WorkingDir%\setting_console.ini, Setup, BindText%A_index%, %A_Space%
    IniRead, PressN%A_index%, %A_WorkingDir%\setting_console.ini, Setup, PressN%A_index%, %A_Space%
    IniRead, PressK%A_index%, %A_WorkingDir%\setting_console.ini, Setup, PressK%A_index%, %A_Space%
    }
  
  Loop, 100
    {
    IniRead, MyEdit%A_index%, %A_WorkingDir%\setting_edit.ini, Setup, MyEdit%A_index%, %A_Space%
    }
  
  Loop, 83
    {
    IniRead, Check%A_index%, %A_WorkingDir%\setting_check.ini, Setup, Check%A_index%, 0
    }
  
  IniRead, Help1Text, %A_WorkingDir%\setting.ini, Position, Help1Text, 2
  
  
  My1SIniRead(pravila_greenzone, "serv-pravila\pravila_greenzone.ini", "Section", "Key", "MyError")
  My1SIniRead(ByRef pravila_greenzone, Filename, Section, Key, ByRef Default)
  {
     loop
     {
        IniRead, Value, %Filename%, %Section%, %A_Index%|%Key%, %Default%
       If (Value = Default)
           break
        If A_Index = 1
          pravila_greenzone := value 
        else
          pravila_greenzone .= "`n" value
      }
  }
  
  My2SIniRead(pravila_servera, "serv-pravila\pravila_servera.ini", "Section", "Key", "MyError")
  My2SIniRead(ByRef pravila_servera, Filename, Section, Key, ByRef Default)
  {
     loop
     {
        IniRead, Value, %Filename%, %Section%, %A_Index%|%Key%, %Default%
       If (Value = Default)
           break
        If A_Index = 1
          pravila_servera := value 
        else
          pravila_servera .= "`n" value
      }
  }
  
  My3SIniRead(pravila_proekta, "serv-pravila\pravila_proekta.ini", "Section", "Key", "MyError")
  My3SIniRead(ByRef pravila_proekta, Filename, Section, Key, ByRef Default)
  {
     loop
     {
        IniRead, Value, %Filename%, %Section%, %A_Index%|%Key%, %Default%
       If (Value = Default)
           break
        If A_Index = 1
          pravila_proekta := value 
        else
          pravila_proekta .= "`n" value
      }
  }
Return