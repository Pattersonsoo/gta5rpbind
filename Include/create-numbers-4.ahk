Sett1:
GuiControlGet, MySett1,,MySett1
if MySett1 > 5
	{
	Msgbox, Число количества вариантов не может быть равно - %MySett1%.`nМаксимум - 5.
	}

if MySett1 < 6
{
	if MySett1 = 0
	{
	Msgbox, Число количества вариантов не может быть равно - %MySett1%.`nМинимум - 1.
	}
}
if (MySett1>0) and (MySett1<6)
    Gosub, %MySett1%
return

Sett2:
GuiControlGet, MySett2,,MySett2
if MySett2 > 5
	{
	Msgbox, Число количества вариантов не может быть равно - %MySett2%.`nМаксимум - 5.
	}

if MySett2 < 6
{
	if MySett2 = 0
	{
	Msgbox, Число количества вариантов не может быть равно - %MySett2%.`nМинимум - 1.
	}

if (MySett2>0) and (MySett2<6)
    {
        a := MySett2 + 5
        GuiControl,, a, %a%
        Gosub, %a%
    }
}
return

Sett3:
GuiControlGet, MySett3,,MySett3
if MySett3 > 5
	{
	Msgbox, Число количества вариантов не может быть равно - %MySett3%.`nМаксимум - 5.
	}

if MySett3 < 6
{
	if MySett3 = 0
	{
	Msgbox, Число количества вариантов не может быть равно - %MySett3%.`nМинимум - 1.
	}

if (MySett3>0) and (MySett3<6)
    {
        b := MySett3 + 10
        GuiControl,, b, %b%
        Gosub, %b%
    }
}
return

Sett4:
GuiControlGet, MySett4,,MySett4
if MySett4 > 5
	{
	Msgbox, Число количества вариантов не может быть равно - %MySett4%.`nМаксимум - 5.
	}

if MySett4 < 6
{
	if MySett4 = 0
	{
	Msgbox, Число количества вариантов не может быть равно - %MySett4%.`nМинимум - 1.
}

if (MySett4>0) and (MySett4<6)
    {
        c := MySett4 + 15
        GuiControl,, c, %c%        
        Gosub, %c%
    }
}
return

Sett5:
GuiControlGet, MySett5,,MySett5
if MySett5 > 5
	{
	Msgbox, Число количества вариантов не может быть равно - %MySett5%.`nМаксимум - 5.
	}

if MySett5 < 6
{
	if MySett5 = 0
	{
	Msgbox, Число количества вариантов не может быть равно - %MySett5%.`nМинимум - 1.
	}


    if (MySett5>0) and (MySett5<6)
        {
            d := MySett5 + 20
            GuiControl,, d, %d%
            Gosub, %d%
        }
}
return

Sett6:
GuiControlGet, MySett6,,MySett6
if MySett6 > 5
	{
	Msgbox, Число количества вариантов не может быть равно - %MySett6%.`nМаксимум - 5.
	}

if MySett6 < 6
{
	if MySett6 = 0
	{
	Msgbox, Число количества вариантов не может быть равно - %MySett6%.`nМинимум - 1.
	}

if (MySett6>0) and (MySett6<6)
    {
        e := MySett6 + 25
        GuiControl,, e, %e%
        Gosub, %e%
    }
}
return

Sett7:
GuiControlGet, MySett7,,MySett7
if MySett7 > 5
	{
	Msgbox, Число количества вариантов не может быть равно - %MySett7%.`nМаксимум - 5.
	}

if MySett7 < 6
{
	if MySett7 = 0
	{
	Msgbox, Число количества вариантов не может быть равно - %MySett7%.`nМинимум - 1.
	}

if (MySett7>0) and (MySett7<6)
        {
            f := MySett7 + 30
            GuiControl,, f, %f%
            Gosub, %f%
        }
}
return

Sett8:
GuiControlGet, MySett8,,MySett8
if MySett8 > 5
	{
	Msgbox, Число количества вариантов не может быть равно - %MySett8%.`nМаксимум - 5.
	}

if MySett8 < 6
{
	if MySett8 = 0
	{
	Msgbox, Число количества вариантов не может быть равно - %MySett8%.`nМинимум - 1.
	}

if (MySett8>0) and (MySett8<6)
        {
            g := MySett8 + 35
            GuiControl,, g, %g%
            Gosub, %g%
        }
}
return

Sett9:
GuiControlGet, MySett9,,MySett9
if MySett9 > 5
	{
	Msgbox, Число количества вариантов не может быть равно - %MySett9%.`nМаксимум - 5.
	}

if MySett9 < 6
{
	if MySett9 = 0
	{
	Msgbox, Число количества вариантов не может быть равно - %MySett9%.`nМинимум - 1.
	}

if (MySett9>0) and (MySett9<6)
        {
        n := MySett9 + 40
        GuiControl,, n, %n%
        Gosub, %n%
        }
}
return

Sett10:
GuiControlGet, MySett10,,MySett10
if MySett10 > 5
	{
	Msgbox, Число количества вариантов не может быть равно - %MySett10%.`nМаксимум - 5.
	}

if MySett10 < 6
{
	if MySett10 = 0
	{
	Msgbox, Число количества вариантов не может быть равно - %MySett10%.`nМинимум - 1.
	}
if (MySett10>0) and (MySett10<6)
        {
        u := MySett10 + 45
        GuiControl,, u, %u%
        Gosub, %u%
        }
}
return


;------------------ 1 - 5 --------------------------------------------------------------------
1:
Gui, Own: Destroy
Gui, 2: Show, w425 h90, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

2:
Gui, Own: Destroy
Gui, 3: Show, w425 h137, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

3:
Gui, Own: Destroy
Gui, 4: Show, w425 h190, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

4:
Gui, Own: Destroy
Gui, 5: Show, w425 h248, Admin-Tools by Notoriuz
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
Gosub, StartFullGui
return

5:
Gui, Own: Destroy
Gui, 6: Show, w425 h295, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

;-----------------------6 - 10 -------------------------------------------------

6:
Gui, Own: Destroy
Gui, 7: Show, w425 h90, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

7:
Gui, Own: Destroy
Gui, 8: Show, w425 h137, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

8:
Gui, Own: Destroy
Gui, 9: Show, w425 h190, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

9:
Gui, Own: Destroy
Gui, 10: Show, w425 h248, Admin-Tools by Notoriuz
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
Gosub, StartFullGui
return

10:
Gui, Own: Destroy
Gui, 11: Show, w425 h295, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

;----------------------------11 - 15--------------------------------------------

11:
Gui, Own: Destroy
Gui, 12: Show, w425 h90, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

12:
Gui, Own: Destroy
Gui, 13: Show, w425 h137, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

13:
Gui, Own: Destroy
Gui, 14: Show, w425 h190, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

14:
Gui, Own: Destroy
Gui, 15: Show, w425 h248, Admin-Tools by Notoriuz
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
Gosub, StartFullGui
return

15:
Gui, Own: Destroy
Gui, 16: Show, w425 h295, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

;---------------------------- 16 - 20--------------------------------------------

16:
Gui, Own: Destroy
Gui, 18: Show, w425 h90, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

17:
Gui, Own: Destroy
Gui, 19: Show, w425 h137, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

18:
Gui, Own: Destroy
Gui, 20: Show, w425 h190, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

19:
Gui, Own: Destroy
Gui, 21: Show, w425 h248, Admin-Tools by Notoriuz
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
Gosub, StartFullGui
return

20:
Gui, Own: Destroy
Gui, 22: Show, w425 h295, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

;---------------------------- 21 - 25--------------------------------------------

21:
Gui, Own: Destroy
Gui, 23: Show, w425 h90, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

22:
Gui, Own: Destroy
Gui, 24: Show, w425 h137, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

23:
Gui, Own: Destroy
Gui, Own: Destroy
Gui, 25: Show, w425 h190, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

24:
Gui, Own: Destroy
Gui, 26: Show, w425 h248, Admin-Tools by Notoriuz
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
Gosub, StartFullGui
return

25:
Gui, Own: Destroy
Gui, 27: Show, w425 h295, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

;---------------------------- 26 - 30 --------------------------------------------

26:
Gui, Own: Destroy
Gui, 28: Show, w425 h90, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

27:
Gui, Own: Destroy
Gui, 29: Show, w425 h137, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

28:
Gui, Own: Destroy
Gui, 30: Show, w425 h190, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

29:
Gui, Own: Destroy
Gui, 31: Show, w425 h248, Admin-Tools by Notoriuz
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
Gosub, StartFullGui
return

30:
Gui, Own: Destroy
Gui, 32: Show, w425 h295, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

;---------------------------- 31 - 35 --------------------------------------------

31:
Gui, Own: Destroy
Gui, 33: Show, w425 h90, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

32:
Gui, Own: Destroy
Gui, 34: Show, w425 h137, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

33:
Gui, Own: Destroy
Gui, 35: Show, w425 h190, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

34:
Gui, Own: Destroy
Gui, 36: Show, w425 h248, Admin-Tools by Notoriuz
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
Gosub, StartFullGui
return

35:
Gui, Own: Destroy
Gui, 37: Show, w425 h295, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

;---------------------------- 36 - 40 --------------------------------------------

36:
Gui, Own: Destroy
Gui, 38: Show, w425 h90, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

37:
Gui, Own: Destroy
Gui, 39: Show, w425 h137, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

38:
Gui, Own: Destroy
Gui, 40: Show, w425 h190, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

39:
Gui, Own: Destroy
Gui, 41: Show, w425 h248, Admin-Tools by Notoriuz
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
Gosub, StartFullGui
return

40:
Gui, Own: Destroy
Gui, 42: Show, w425 h295, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

;---------------------------- 41 - 45 --------------------------------------------

41:
Gui, Own: Destroy
Gui, 43: Show, w425 h90, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

42:
Gui, Own: Destroy
Gui, 44: Show, w425 h137, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

43:
Gui, Own: Destroy
Gui, 45: Show, w425 h190, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

44:
Gui, Own: Destroy
Gui, 46: Show, w425 h248, Admin-Tools by Notoriuz
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
Gosub, StartFullGui
return

45:
Gui, Own: Destroy
Gui, 47: Show, w425 h295, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

;---------------------------- 46 - 50 --------------------------------------------

46:
Gui, Own: Destroy
Gui, 48: Show, w425 h90, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

47:
Gui, Own: Destroy
Gui, 49: Show, w425 h137, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

48:
Gui, Own: Destroy
Gui, 50: Show, w425 h190, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return

49:
Gui, Own: Destroy
Gui, 51: Show, w425 h248, Admin-Tools by Notoriuz
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
Gosub, StartFullGui
return

50:
Gui, Own: Destroy
Gui, 52: Show, w425 h295, Admin-Tools by Notoriuz
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
    Gosub, StartFullGui
return
;--------------------------------------------------------------------------
2Tab1:
Gui, Own: Destroy
Gui, 53: Add, CheckBox, x8 y9 w169 h28 vCheck11 Checked%Check11%, Учитывать в счетчике
Gui, 53: Add, CheckBox, x8 y41 w169 h28 vCheck41 Checked%Check41%, Использовать Enter
Gui, 53: Add, GroupBox, x6 y2 w172 h37
Gui, 53: Add, GroupBox, x6 y34 w172 h37
Gui, 53: Add, Edit, hWndhEdtValue x31 y78 w120 h21 vEditValue1, %EditValue1%
SendMessage 0x1501, 1, "text",, ahk_id %hEdtValue% ; EM_SETCUEBANNER
Gui, 53: Add, GroupBox, x6 y67 w172 h37
Gui, 53: Add, Button, x7 y106 w171 h23 g2TabSet1, Сохранить
Gui, 53: Show, w184 h134, Admin-Tools by Notoriuz
return
53GuiEscape:
53GuiClose:
Gui, 53: Destroy
Gosub, StartFullGui
return

2Tab2:
Gui, Own: Destroy
Gui, 54: Add, CheckBox, x8 y9 w169 h28 vCheck12 Checked%Check12%, Учитывать в счетчике
Gui, 54: Add, CheckBox, x8 y41 w169 h28 vCheck42 Checked%Check42%, Использовать Enter
Gui, 54: Add, GroupBox, x6 y2 w172 h37
Gui, 54: Add, GroupBox, x6 y34 w172 h37
Gui, 54: Add, Edit, hWndhEdtValue x31 y78 w120 h21 vEditValue2, %EditValue2%
SendMessage 0x1501, 1, "Примечание",, ahk_id %hEdtValue% ; EM_SETCUEBANNER
Gui, 54: Add, GroupBox, x6 y67 w172 h37
Gui, 54: Add, Button, x7 y106 w171 h23 g2TabSet2, Сохранить
Gui, 54: Show, w184 h134, Admin-Tools by Notoriuz
return
54GuiEscape:
54GuiClose:
Gui, 54: Destroy
Gosub, StartFullGui
return

2Tab3:
Gui, Own: Destroy
Gui, 55: Add, CheckBox, x8 y9 w169 h28 vCheck13 Checked%Check13%, Учитывать в счетчике
Gui, 55: Add, CheckBox, x8 y41 w169 h28 vCheck43 Checked%Check43%, Использовать Enter
Gui, 55: Add, GroupBox, x6 y2 w172 h37
Gui, 55: Add, GroupBox, x6 y34 w172 h37
Gui, 55: Add, Edit, hWndhEdtValue x31 y78 w120 h21 vEditValue3, %EditValue3%
SendMessage 0x1501, 1, "Примечание",, ahk_id %hEdtValue% ; EM_SETCUEBANNER
Gui, 55: Add, GroupBox, x6 y67 w172 h37
Gui, 55: Add, Button, x7 y106 w171 h23 g2TabSet3, Сохранить
Gui, 55: Show, w184 h134, Admin-Tools by Notoriuz
return
55GuiEscape:
55GuiClose:
Gui, 55: Destroy
Gosub, StartFullGui
return

2Tab4:
Gui, Own: Destroy
Gui, 56: Add, CheckBox, x8 y9 w169 h28 vCheck14 Checked%Check14%, Учитывать в счетчике
Gui, 56: Add, CheckBox, x8 y41 w169 h28 vCheck44 Checked%Check44%, Использовать Enter
Gui, 56: Add, GroupBox, x6 y2 w172 h37
Gui, 56: Add, GroupBox, x6 y34 w172 h37
Gui, 56: Add, Edit, hWndhEdtValue x31 y78 w120 h21 vEditValue4, %EditValue4%
SendMessage 0x1501, 1, "Примечание",, ahk_id %hEdtValue% ; EM_SETCUEBANNER
Gui, 56: Add, GroupBox, x6 y67 w172 h37
Gui, 56: Add, Button, x7 y106 w171 h23 g2TabSet4, Сохранить
Gui, 56: Show, w184 h134, Admin-Tools by Notoriuz
return
56GuiEscape:
56GuiClose:
Gui, 56: Destroy
Gosub, StartFullGui
return

2Tab5:
Gui, Own: Destroy
Gui, 57: Add, CheckBox, x8 y9 w169 h28 vCheck15 Checked%Check15%, Учитывать в счетчике
Gui, 57: Add, CheckBox, x8 y41 w169 h28 vCheck45 Checked%Check45%, Использовать Enter
Gui, 57: Add, GroupBox, x6 y2 w172 h37
Gui, 57: Add, GroupBox, x6 y34 w172 h37
Gui, 57: Add, Edit, hWndhEdtValue x31 y78 w120 h21 vEditValue5, %EditValue5%
SendMessage 0x1501, 1, "Примечание",, ahk_id %hEdtValue% ; EM_SETCUEBANNER
Gui, 57: Add, GroupBox, x6 y67 w172 h37
Gui, 57: Add, Button, x7 y106 w171 h23 g2TabSet5, Сохранить
Gui, 57: Show, w184 h134, Admin-Tools by Notoriuz
return
57GuiEscape:
57GuiClose:
Gui, 57: Destroy
Gosub, StartFullGui
return

2Tab6:
Gui, Own: Destroy
Gui, 58: Add, CheckBox, x8 y9 w169 h28 vCheck16 Checked%Check16%, Учитывать в счетчике
Gui, 58: Add, CheckBox, x8 y41 w169 h28 vCheck46 Checked%Check46%, Использовать Enter
Gui, 58: Add, GroupBox, x6 y2 w172 h37
Gui, 58: Add, GroupBox, x6 y34 w172 h37
Gui, 58: Add, Edit, hWndhEdtValue x31 y78 w120 h21 vEditValue6, %EditValue6%
SendMessage 0x1501, 1, "Примечание",, ahk_id %hEdtValue% ; EM_SETCUEBANNER
Gui, 58: Add, GroupBox, x6 y67 w172 h37
Gui, 58: Add, Button, x7 y106 w171 h23 g2TabSet6, Сохранить
Gui, 58: Show, w184 h134, Admin-Tools by Notoriuz
return
58GuiEscape:
58GuiClose:
Gui, 58: Destroy
Gosub, StartFullGui
return

2Tab7:
Gui, Own: Destroy
Gui, 59: Add, CheckBox, x8 y9 w169 h28 vCheck17 Checked%Check17%, Учитывать в счетчике
Gui, 59: Add, CheckBox, x8 y41 w169 h28 vCheck47 Checked%Check47%, Использовать Enter
Gui, 59: Add, GroupBox, x6 y2 w172 h37
Gui, 59: Add, GroupBox, x6 y34 w172 h37
Gui, 59: Add, Edit, hWndhEdtValue x31 y78 w120 h21 vEditValue7, %EditValue7%
SendMessage 0x1501, 1, "Примечание",, ahk_id %hEdtValue% ; EM_SETCUEBANNER
Gui, 59: Add, GroupBox, x6 y67 w172 h37
Gui, 59: Add, Button, x7 y106 w171 h23 g2TabSet7, Сохранить
Gui, 59: Show, w184 h134, Admin-Tools by Notoriuz
return
59GuiEscape:
59GuiClose:
Gui, 59: Destroy
Gosub, StartFullGui
return

2Tab8:
Gui, Own: Destroy
Gui, 60: Add, CheckBox, x8 y9 w169 h28 vCheck18 Checked%Check18%, Учитывать в счетчике
Gui, 60: Add, CheckBox, x8 y41 w169 h28 vCheck48 Checked%Check48%, Использовать Enter
Gui, 60: Add, GroupBox, x6 y2 w172 h37
Gui, 60: Add, GroupBox, x6 y34 w172 h37
Gui, 60: Add, Edit, hWndhEdtValue x31 y78 w120 h21 vEditValue8, %EditValue8%
SendMessage 0x1501, 1, "Примечание",, ahk_id %hEdtValue% ; EM_SETCUEBANNER
Gui, 60: Add, GroupBox, x6 y67 w172 h37
Gui, 60: Add, Button, x7 y106 w171 h23 g2TabSet8, Сохранить
Gui, 60: Show, w184 h134, Admin-Tools by Notoriuz
return
60GuiEscape:
60GuiClose:
Gui, 60: Destroy
Gosub, StartFullGui
return

2Tab9:
Gui, Own: Destroy
Gui, 61: Add, CheckBox, x8 y9 w169 h28 vCheck19 Checked%Check19%, Учитывать в счетчике
Gui, 61: Add, CheckBox, x8 y41 w169 h28 vCheck49 Checked%Check49%, Использовать Enter
Gui, 61: Add, GroupBox, x6 y2 w172 h37
Gui, 61: Add, GroupBox, x6 y34 w172 h37
Gui, 61: Add, Edit, hWndhEdtValue x31 y78 w120 h21 vEditValue9, %EditValue9%
SendMessage 0x1501, 1, "Примечание",, ahk_id %hEdtValue% ; EM_SETCUEBANNER
Gui, 61: Add, GroupBox, x6 y67 w172 h37
Gui, 61: Add, Button, x7 y106 w171 h23 g2TabSet9, Сохранить
Gui, 61: Show, w184 h134, Admin-Tools by Notoriuz
return
61GuiEscape:
61GuiClose:
Gui, 61: Destroy
Gosub, StartFullGui
return

2Tab10:
Gui, Own: Destroy
Gui, 62: Add, CheckBox, x8 y9 w169 h28 vCheck20 Checked%Check20%, Учитывать в счетчике
Gui, 62: Add, CheckBox, x8 y41 w169 h28 vCheck50 Checked%Check50%, Использовать Enter
Gui, 62: Add, GroupBox, x6 y2 w172 h37
Gui, 62: Add, GroupBox, x6 y34 w172 h37
Gui, 62: Add, Edit, hWndhEdtValue x31 y78 w120 h21 vEditValue10, %EditValue10%
SendMessage 0x1501, 1, "Примечание",, ahk_id %hEdtValue% ; EM_SETCUEBANNER
Gui, 62: Add, GroupBox, x6 y67 w172 h37
Gui, 62: Add, Button, x7 y106 w171 h23 g2TabSet10, Сохранить
Gui, 62: Show, w184 h134, Admin-Tools by Notoriuz
return
62GuiEscape:
62GuiClose:
Gui, 62: Destroy
Gosub, StartFullGui
return


2TabSet1:
Gosub, StartFullGui
Gosub, 2TabBox1
Return

2TabSet2:
Gosub, StartFullGui
Gosub, 2TabBox2
Return

2TabSet3:
Gosub, StartFullGui
Gosub, 2TabBox3
Return

2TabSet4:
Gosub, StartFullGui
Gosub, 2TabBox4
Return

2TabSet5:
Gosub, StartFullGui
Gosub, 2TabBox5
Return

2TabSet6:
Gosub, StartFullGui
Gosub, 2TabBox6
Return

2TabSet7:
Gosub, StartFullGui
Gosub, 2TabBox7
Return

2TabSet8:
Gosub, StartFullGui
Gosub, 2TabBox8
Return

2TabSet9:
Gosub, StartFullGui
Gosub, 2TabBox9
Return

2TabSet10:
Gosub, StartFullGui
Gosub, 2TabBox10
Return

;---------------------------3GUI CHECKUP------------------------------

3Tab1:
Gui, Submit, NoHide
IniWrite, %ComDev1%, %A_WorkingDir%\setting_3tab.ini, Setup, 3Comand1
IniWrite, %Command1%, %A_WorkingDir%\setting_3tab.ini, Setup, 3BindComand1
Gui, Own: Destroy
Gui, 63: Add, CheckBox, x22 y6 w137 h37 vCheck21 Checked%Check21%, Учитывать в счетчике
Gui, 63: Add, GroupBox, x11 y-3 w161 h53
Gui, 63: Show, w185 h78, Admin-Tools by Notoriuz
Gui, 63: Add, Button, x10 y50 w163 h23 g3TabSet1, Сохранить
return
63GuiEscape:
63GuiClose:
    Gui Destroy
    Gosub, StartFullGui
return

3Tab2:
Gui, Submit, NoHide
IniWrite, %ComDev2%, %A_WorkingDir%\setting_3tab.ini, Setup, 3Comand2
IniWrite, %Command2%, %A_WorkingDir%\setting_3tab.ini, Setup, 3BindComand2
Gui, Own: Destroy
Gui, 64: Add, CheckBox, x22 y6 w137 h37 vCheck22 Checked%Check22%, Учитывать в счетчике
Gui, 64: Add, GroupBox, x11 y-3 w161 h53
Gui, 64: Show, w185 h78, Admin-Tools by Notoriuz
Gui, 64: Add, Button, x10 y50 w163 h23 g3TabSet2, Сохранить

return
64GuiEscape:
64GuiClose:
    Gui Destroy
    Gosub, StartFullGui
return

3Tab3:
Gui, Submit, NoHide
IniWrite, %ComDev3%, %A_WorkingDir%\setting_3tab.ini, Setup, 3Comand3
IniWrite, %Command3%, %A_WorkingDir%\setting_3tab.ini, Setup, 3BindComand3
Gui, Own: Destroy
Gui, 65: Add, CheckBox, x22 y6 w137 h37 vCheck23 Checked%Check23%, Учитывать в счетчике
Gui, 65: Add, GroupBox, x11 y-3 w161 h53
Gui, 65: Show, w185 h78, Admin-Tools by Notoriuz
Gui, 65: Add, Button, x10 y50 w163 h23 g3TabSet3, Сохранить

return
65GuiEscape:
65GuiClose:
    Gui Destroy
    Gosub, StartFullGui
return

3Tab4:
Gui, Submit, NoHide
IniWrite, %ComDev4%, %A_WorkingDir%\setting_3tab.ini, Setup, 3Comand4
IniWrite, %Command4%, %A_WorkingDir%\setting_3tab.ini, Setup, 3BindComand4
Gui, Own: Destroy
Gui, 66: Add, CheckBox, x22 y6 w137 h37 vCheck24 Checked%Check24%, Учитывать в счетчике
Gui, 66: Add, GroupBox, x11 y-3 w161 h53
Gui, 66: Show, w185 h78, Admin-Tools by Notoriuz
Gui, 66: Add, Button, x10 y50 w163 h23 g3TabSet4, Сохранить

return
66GuiEscape:
66GuiClose:
    Gui Destroy
    Gosub, StartFullGui
return

3Tab5:
Gui, Submit, NoHide
IniWrite, %ComDev5%, %A_WorkingDir%\setting_3tab.ini, Setup, 3Comand5
IniWrite, %Command5%, %A_WorkingDir%\setting_3tab.ini, Setup, 3BindComand5
Gui, Own: Destroy
Gui, 67: Add, CheckBox, x22 y6 w137 h37 vCheck25 Checked%Check25%, Учитывать в счетчике
Gui, 67: Add, GroupBox, x11 y-3 w161 h53
Gui, 67: Show, w185 h78, Admin-Tools by Notoriuz
Gui, 67: Add, Button, x10 y50 w163 h23 g3TabSet5, Сохранить
return
67GuiEscape:
67GuiClose:
    Gui Destroy
    Gosub, StartFullGui
return

3Tab6:
Gui, Submit, NoHide
IniWrite, %ComDev5%, %A_WorkingDir%\setting_3tab.ini, Setup, 3Comand5
IniWrite, %Command5%, %A_WorkingDir%\setting_3tab.ini, Setup, 3BindComand5
Gui, Own: Destroy
Gui, 68: Add, CheckBox, x22 y6 w137 h37 vCheck26 Checked%Check26%, Учитывать в счетчике
Gui, 68: Add, GroupBox, x11 y-3 w161 h53
Gui, 68: Show, w185 h78, Admin-Tools by Notoriuz
Gui, 68: Add, Button, x10 y50 w163 h23 g3TabSet6, Сохранить
return
68GuiEscape:
68GuiClose:
    Gui Destroy
    Gosub, StartFullGui
return

3Tab7:
Gui, Submit, NoHide
IniWrite, %ComDev7%, %A_WorkingDir%\setting_3tab.ini, Setup, 3Comand7
IniWrite, %Command7%, %A_WorkingDir%\setting_3tab.ini, Setup, 3BindComand7
Gui, Own: Destroy
Gui, 69: Add, CheckBox, x22 y6 w137 h37 vCheck27 Checked%Check27%, Учитывать в счетчике
Gui, 69: Add, GroupBox, x11 y-3 w161 h53
Gui, 69: Show, w185 h78, Admin-Tools by Notoriuz
Gui, 69: Add, Button, x10 y50 w163 h23 g3TabSet7, Сохранить
return
69GuiEscape:
69GuiClose:
    Gui Destroy
    Gosub, StartFullGui
return

3Tab8:
Gui, Submit, NoHide
IniWrite, %ComDev8%, %A_WorkingDir%\setting_3tab.ini, Setup, 3Comand8
IniWrite, %Command8%, %A_WorkingDir%\setting_3tab.ini, Setup, 3BindComand8
Gui, Own: Destroy
Gui, 70: Add, CheckBox, x22 y6 w137 h37 vCheck28 Checked%Check28%, Учитывать в счетчике
Gui, 70: Add, GroupBox, x11 y-3 w161 h53
Gui, 70: Show, w185 h78, Admin-Tools by Notoriuz
Gui, 70: Add, Button, x10 y50 w163 h23 g3TabSet8, Сохранить
return
70GuiEscape:
70GuiClose:
    Gui Destroy
    Gosub, StartFullGui
return

3Tab9:
Gui, Submit, NoHide
IniWrite, %ComDev9%, %A_WorkingDir%\setting_3tab.ini, Setup, 3Comand9
IniWrite, %Command9%, %A_WorkingDir%\setting_3tab.ini, Setup, 3BindComand9
Gui, Own: Destroy
Gui, 71: Add, CheckBox, x22 y6 w137 h37 vCheck29 Checked%Check29%, Учитывать в счетчике
Gui, 71: Add, GroupBox, x11 y-3 w161 h53
Gui, 71: Show, w185 h78, Admin-Tools by Notoriuz
Gui, 71: Add, Button, x10 y50 w163 h23 g3TabSet9, Сохранить
return
71GuiEscape:
71GuiClose:
    Gui Destroy
    Gosub, StartFullGui
return

3Tab10:
Gui, Submit, NoHide
IniWrite, %ComDev10%, %A_WorkingDir%\setting_3tab.ini, Setup, 3Comand10
IniWrite, %Command10%, %A_WorkingDir%\setting_3tab.ini, Setup, 3BindComand10
Gui, Own: Destroy
Gui, 72: Add, CheckBox, x22 y6 w137 h37 vCheck30 Checked%Check30%, Учитывать в счетчике
Gui, 72: Add, GroupBox, x11 y-3 w161 h53
Gui, 72: Show, w185 h78, Admin-Tools by Notoriuz
Gui, 72: Add, Button, x10 y50 w163 h23 g3TabSet10, Сохранить
return
72GuiEscape:
72GuiClose:
    Gui Destroy
    Gosub, StartFullGui
return

3TabSet1:
Gosub, StartFullGui
Gosub, SlowCom1
Return

3TabSet2:
Gosub, StartFullGui
Gosub, SlowCom2
Return

3TabSet3:
Gosub, StartFullGui
Gosub, SlowCom3
Return

3TabSet4:
Gosub, StartFullGui
Gosub, SlowCom4
Return

3TabSet5:
Gosub, StartFullGui
Gosub, SlowCom5
Return

3TabSet6:
Gosub, StartFullGui
Gosub, SlowCom6
Return

3TabSet7:
Gosub, StartFullGui
Gosub, SlowCom7
Return

3TabSet8:
Gosub, StartFullGui
Gosub, SlowCom8
Return

3TabSet9:
Gosub, StartFullGui
Gosub, SlowCom9
Return

3TabSet10:
Gosub, StartFullGui
Gosub, SlowCom10
Return

3TabSet11:
Gosub, StartFullGui
Gosub, SlowCom11
Return

3TabSet12:
Gosub, StartFullGui
Gosub, SlowCom12
Return

3TabSet13:
Gosub, StartFullGui
Gosub, SlowCom13
Return

3TabSet14:
Gosub, StartFullGui
Gosub, SlowCom14
Return

3TabSet15:
Gosub, StartFullGui
Gosub, SlowCom15
Return

3TabSet16:
Gosub, StartFullGui
Gosub, SlowCom16
Return

3TabSet17:
Gosub, StartFullGui
Gosub, SlowCom17
Return

3TabSet18:
Gosub, StartFullGui
Gosub, SlowCom18
Return

3TabSet19:
Gosub, StartFullGui
Gosub, SlowCom19
Return

3TabSet20:
Gosub, StartFullGui
Gosub, SlowCom20
Return

;---------------------------4GUI CHECKUP------------------------------

3Tab11:
Gui, Submit, NoHide
IniWrite, %ComDev11%, %A_WorkingDir%\setting_3tab.ini, Setup, 3Comand11
IniWrite, %Command11%, %A_WorkingDir%\setting_3tab.ini, Setup, 3BindComand11
Gui, Own: Destroy
Gui, 73: Add, CheckBox, x22 y6 w137 h37 vCheck54 Checked%Check54%, Учитывать в счетчике
Gui, 73: Add, GroupBox, x11 y-3 w161 h53
Gui, 73: Show, w185 h78, Admin-Tools by Notoriuz
Gui, 73: Add, Button, x10 y50 w163 h23 g3TabSet11, Сохранить
return
73GuiEscape:
73GuiClose:
    Gui Destroy
    Gosub, StartFullGui
return

3Tab12:
Gui, Submit, NoHide
IniWrite, %ComDev12%, %A_WorkingDir%\setting_3tab.ini, Setup, 3Comand12
IniWrite, %Command12%, %A_WorkingDir%\setting_3tab.ini, Setup, 3BindComand12
Gui, Own: Destroy
Gui, 74: Add, CheckBox, x22 y6 w137 h37 vCheck55 Checked%Check55%, Учитывать в счетчике
Gui, 74: Add, GroupBox, x11 y-3 w161 h53
Gui, 74: Show, w185 h78, Admin-Tools by Notoriuz
Gui, 74: Add, Button, x10 y50 w163 h23 g3TabSet12, Сохранить
return
74GuiEscape:
74GuiClose:
    Gui Destroy
    Gosub, StartFullGui
return

3Tab13:
Gui, Submit, NoHide
IniWrite, %ComDev13%, %A_WorkingDir%\setting_3tab.ini, Setup, 3Comand13
IniWrite, %Command13%, %A_WorkingDir%\setting_3tab.ini, Setup, 3BindComand13
Gui, Own: Destroy
Gui, 75: Add, CheckBox, x22 y6 w137 h37 vCheck56 Checked%Check56%, Учитывать в счетчике
Gui, 75: Add, GroupBox, x11 y-3 w161 h53
Gui, 75: Show, w185 h78, Admin-Tools by Notoriuz
Gui, 75: Add, Button, x10 y50 w163 h23 g3TabSet13, Сохранить
return
75GuiEscape:
75GuiClose:
    Gui Destroy
    Gosub, StartFullGui
return

3Tab14:
Gui, Submit, NoHide
IniWrite, %ComDev14%, %A_WorkingDir%\setting_3tab.ini, Setup, 3Comand14
IniWrite, %Command14%, %A_WorkingDir%\setting_3tab.ini, Setup, 3BindComand14
Gui, Own: Destroy
Gui, 76: Add, CheckBox, x22 y6 w137 h37 vCheck57 Checked%Check57%, Учитывать в счетчике
Gui, 76: Add, GroupBox, x11 y-3 w161 h53
Gui, 76: Show, w185 h78, Admin-Tools by Notoriuz
Gui, 76: Add, Button, x10 y50 w163 h23 g3TabSet14, Сохранить
return
76GuiEscape:
76GuiClose:
    Gui Destroy
    Gosub, StartFullGui
return

3Tab15:
Gui, Submit, NoHide
IniWrite, %ComDev15%, %A_WorkingDir%\setting_3tab.ini, Setup, 3Comand15
IniWrite, %Command15%, %A_WorkingDir%\setting_3tab.ini, Setup, 3BindComand15
Gui, Own: Destroy
Gui, 77: Add, CheckBox, x22 y6 w137 h37 vCheck58 Checked%Check58%, Учитывать в счетчике
Gui, 77: Add, GroupBox, x11 y-3 w161 h53
Gui, 77: Show, w185 h78, Admin-Tools by Notoriuz
Gui, 77: Add, Button, x10 y50 w163 h23 g3TabSet15, Сохранить
return
77GuiEscape:
77GuiClose:
    Gui Destroy
    Gosub, StartFullGui
return

3Tab16:
Gui, Submit, NoHide
IniWrite, %ComDev16%, %A_WorkingDir%\setting_3tab.ini, Setup, 3Comand16
IniWrite, %Command16%, %A_WorkingDir%\setting_3tab.ini, Setup, 3BindComand16
Gui, Own: Destroy
Gui, 78: Add, CheckBox, x22 y6 w137 h37 vCheck59 Checked%Check59%, Учитывать в счетчике
Gui, 78: Add, GroupBox, x11 y-3 w161 h53
Gui, 78: Show, w185 h78, Admin-Tools by Notoriuz
Gui, 78: Add, Button, x10 y50 w163 h23 g3TabSet16, Сохранить
return
78GuiEscape:
78GuiClose:
    Gui Destroy
    Gosub, StartFullGui
return

3Tab17:
Gui, Submit, NoHide
IniWrite, %ComDev17%, %A_WorkingDir%\setting_3tab.ini, Setup, 3Comand17
IniWrite, %Command17%, %A_WorkingDir%\setting_3tab.ini, Setup, 3BindComand17
Gui, Own: Destroy
Gui, 79: Add, CheckBox, x22 y6 w137 h37 vCheck60 Checked%Check60%, Учитывать в счетчике
Gui, 79: Add, GroupBox, x11 y-3 w161 h53
Gui, 79: Show, w185 h78, Admin-Tools by Notoriuz
Gui, 79: Add, Button, x10 y50 w163 h23 g3TabSet17, Сохранить
return
79GuiEscape:
79GuiClose:
    Gui Destroy
    Gosub, StartFullGui
return

3Tab18:
Gui, Submit, NoHide
IniWrite, %ComDev18%, %A_WorkingDir%\setting_3tab.ini, Setup, 3Comand18
IniWrite, %Command18%, %A_WorkingDir%\setting_3tab.ini, Setup, 3BindComand18
Gui, Own: Destroy
Gui, 80: Add, CheckBox, x22 y6 w137 h37 vCheck61 Checked%Check61%, Учитывать в счетчике
Gui, 80: Add, GroupBox, x11 y-3 w161 h53
Gui, 80: Show, w185 h78, Admin-Tools by Notoriuz
Gui, 80: Add, Button, x10 y50 w163 h23 g3TabSet18, Сохранить
return
80GuiEscape:
80GuiClose:
    Gui Destroy
    Gosub, StartFullGui
return

3Tab19:
Gui, Submit, NoHide
IniWrite, %ComDev19%, %A_WorkingDir%\setting_3tab.ini, Setup, 3Comand19
IniWrite, %Command19%, %A_WorkingDir%\setting_3tab.ini, Setup, 3BindComand19
Gui, Own: Destroy
Gui, 81: Add, CheckBox, x22 y6 w137 h37 vCheck62 Checked%Check62%, Учитывать в счетчике
Gui, 81: Add, GroupBox, x11 y-3 w161 h53
Gui, 81: Show, w185 h78, Admin-Tools by Notoriuz
Gui, 81: Add, Button, x10 y50 w163 h23 g3TabSet19, Сохранить
return
81GuiEscape:
81GuiClose:
    Gui Destroy
    Gosub, StartFullGui
return

3Tab20:
Gui, Submit, NoHide
IniWrite, %ComDev20%, %A_WorkingDir%\setting_3tab.ini, Setup, 3Comand20
IniWrite, %Command20%, %A_WorkingDir%\setting_3tab.ini, Setup, 3BindComand20
Gui, Own: Destroy
Gui, 82: Add, CheckBox, x22 y6 w137 h37 vCheck63 Checked%Check63%, Учитывать в счетчике
Gui, 82: Add, GroupBox, x11 y-3 w161 h53
Gui, 82: Show, w185 h78, Admin-Tools by Notoriuz
Gui, 82: Add, Button, x10 y50 w163 h23 g3TabSet20, Сохранить
return
82GuiEscape:
82GuiClose:
    Gui Destroy
    Gosub, StartFullGui
return

;---------------------------4GUI CHECKUP DOP------------------------------

3Tab21:
Gui, Submit, NoHide
IniWrite, %BindComDev1%, %A_WorkingDir%\setting_3tab.ini, Setup, BindText1
IniWrite, %BindCommand1%, %A_WorkingDir%\setting_3tab.ini, Setup, BindComand1
Gui, 86: Add, CheckBox, x22 y6 w137 h37 vCheck64 Checked%Check64%, Учитывать в счетчике
Gui, 86: Add, GroupBox, x11 y-3 w161 h53
Gui, 86: Show, w185 h78, Admin-Tools by Notoriuz
Gui, 86: Add, Button, x10 y50 w163 h23 gSlowCom21, Сохранить
return
86GuiEscape:
86GuiClose:
    Gui Destroy
return

3Tab22:
Gui, Submit, NoHide
IniWrite, %BindComDev2%, %A_WorkingDir%\setting_3tab.ini, Setup, BindText2
IniWrite, %BindCommand2%, %A_WorkingDir%\setting_3tab.ini, Setup, BindComand2
Gui, 87: Add, CheckBox, x22 y6 w137 h37 vCheck65 Checked%Check65%, Учитывать в счетчике
Gui, 87: Add, GroupBox, x11 y-3 w161 h53
Gui, 87: Show, w185 h78, Admin-Tools by Notoriuz
Gui, 87: Add, Button, x10 y50 w163 h23 gSlowCom22, Сохранить
return
87GuiEscape:
87GuiClose:
    Gui Destroy
return

3Tab23:
Gui, Submit, NoHide
IniWrite, %BindComDev3%, %A_WorkingDir%\setting_3tab.ini, Setup, BindText3
IniWrite, %BindCommand3%, %A_WorkingDir%\setting_3tab.ini, Setup, BindComand3
Gui, 88: Add, CheckBox, x22 y6 w137 h37 vCheck66 Checked%Check66%, Учитывать в счетчике
Gui, 88: Add, GroupBox, x11 y-3 w161 h53
Gui, 88: Show, w185 h78, Admin-Tools by Notoriuz
Gui, 88: Add, Button, x10 y50 w163 h23 gSlowCom23, Сохранить
return
88GuiEscape:
88GuiClose:
    Gui Destroy
return

3Tab24:
Gui, Submit, NoHide
IniWrite, %BindComDev4%, %A_WorkingDir%\setting_3tab.ini, Setup, BindText4
IniWrite, %BindCommand4%, %A_WorkingDir%\setting_3tab.ini, Setup, BindComand4
Gui, 89: Add, CheckBox, x22 y6 w137 h37 vCheck67 Checked%Check67%, Учитывать в счетчике
Gui, 89: Add, GroupBox, x11 y-3 w161 h53
Gui, 89: Show, w185 h78, Admin-Tools by Notoriuz
Gui, 89: Add, Button, x10 y50 w163 h23 gSlowCom24, Сохранить
return
89GuiEscape:
89GuiClose:
    Gui Destroy
return

3Tab25:
Gui, Submit, NoHide
IniWrite, %BindComDev5%, %A_WorkingDir%\setting_3tab.ini, Setup, BindText5
IniWrite, %BindCommand5%, %A_WorkingDir%\setting_3tab.ini, Setup, BindComand5
Gui, 90: Add, CheckBox, x22 y6 w137 h37 vCheck68 Checked%Check68%, Учитывать в счетчике
Gui, 90: Add, GroupBox, x11 y-3 w161 h53
Gui, 90: Show, w185 h78, Admin-Tools by Notoriuz
Gui, 90: Add, Button, x10 y50 w163 h23 gSlowCom25, Сохранить
return
90GuiEscape:
90GuiClose:
    Gui Destroy
return

3Tab26:
Gui, Submit, NoHide
IniWrite, %BindComDev6%, %A_WorkingDir%\setting_3tab.ini, Setup, BindText6
IniWrite, %BindCommand6%, %A_WorkingDir%\setting_3tab.ini, Setup, BindComand6
Gui, 91: Add, CheckBox, x22 y6 w137 h37 vCheck69 Checked%Check69%, Учитывать в счетчике
Gui, 91: Add, GroupBox, x11 y-3 w161 h53
Gui, 91: Show, w185 h78, Admin-Tools by Notoriuz
Gui, 91: Add, Button, x10 y50 w163 h23 gSlowCom26, Сохранить
return
91GuiEscape:
91GuiClose:
    Gui Destroy
return

3Tab27:
Gui, Submit, NoHide
IniWrite, %BindComDev7%, %A_WorkingDir%\setting_3tab.ini, Setup, BindText7
IniWrite, %BindCommand7%, %A_WorkingDir%\setting_3tab.ini, Setup, BindComand7
Gui, 92: Add, CheckBox, x22 y6 w137 h37 vCheck70 Checked%Check70%, Учитывать в счетчике
Gui, 92: Add, GroupBox, x11 y-3 w161 h53
Gui, 92: Show, w185 h78, Admin-Tools by Notoriuz
Gui, 92: Add, Button, x10 y50 w163 h23 gSlowCom27, Сохранить
return
92GuiEscape:
92GuiClose:
    Gui Destroy
return

3Tab28:
Gui, Submit, NoHide
IniWrite, %BindComDev8%, %A_WorkingDir%\setting_3tab.ini, Setup, BindText8
IniWrite, %BindCommand8%, %A_WorkingDir%\setting_3tab.ini, Setup, BindComand8
Gui, 93: Add, CheckBox, x22 y6 w137 h37 vCheck71 Checked%Check71%, Учитывать в счетчике
Gui, 93: Add, GroupBox, x11 y-3 w161 h53
Gui, 93: Show, w185 h78, Admin-Tools by Notoriuz
Gui, 93: Add, Button, x10 y50 w163 h23 gSlowCom28, Сохранить
return
93GuiEscape:
93GuiClose:
    Gui Destroy
return

3Tab29:
Gui, Submit, NoHide
IniWrite, %BindComDev9%, %A_WorkingDir%\setting_3tab.ini, Setup, BindText9
IniWrite, %BindCommand9%, %A_WorkingDir%\setting_3tab.ini, Setup, BindComand9
Gui, 94: Add, CheckBox, x22 y6 w137 h37 vCheck72 Checked%Check72%, Учитывать в счетчике
Gui, 94: Add, GroupBox, x11 y-3 w161 h53
Gui, 94: Show, w185 h78, Admin-Tools by Notoriuz
Gui, 94: Add, Button, x10 y50 w163 h23 gSlowCom29, Сохранить
return
94GuiEscape:
94GuiClose:
    Gui Destroy
return

3Tab30:
Gui, Submit, NoHide
IniWrite, %BindComDev10%, %A_WorkingDir%\setting_3tab.ini, Setup, BindText10
IniWrite, %BindCommand10%, %A_WorkingDir%\setting_3tab.ini, Setup, BindComand10
Gui, 95: Add, CheckBox, x22 y6 w137 h37 vCheck73 Checked%Check73%, Учитывать в счетчике
Gui, 95: Add, GroupBox, x11 y-3 w161 h53
Gui, 95: Show, w185 h78, Admin-Tools by Notoriuz
Gui, 95: Add, Button, x10 y50 w163 h23 gSlowCom30, Сохранить
return
95GuiEscape:
95GuiClose:
    Gui Destroy
return

3Tab31:
Gui, Submit, NoHide
IniWrite, %BindComDev11%, %A_WorkingDir%\setting_3tab.ini, Setup, BindText11
IniWrite, %BindCommand11%, %A_WorkingDir%\setting_3tab.ini, Setup, BindComand11
Gui, 96: Add, CheckBox, x22 y6 w137 h37 vCheck74 Checked%Check74%, Учитывать в счетчике
Gui, 96: Add, GroupBox, x11 y-3 w161 h53
Gui, 96: Show, w185 h78, Admin-Tools by Notoriuz
Gui, 96: Add, Button, x10 y50 w163 h23 gSlowCom31, Сохранить
return
96GuiEscape:
96GuiClose:
    Gui Destroy
return

3Tab32:
Gui, Submit, NoHide
IniWrite, %BindComDev12%, %A_WorkingDir%\setting_3tab.ini, Setup, BindText12
IniWrite, %BindCommand12%, %A_WorkingDir%\setting_3tab.ini, Setup, BindComand12
Gui, 97: Add, CheckBox, x22 y6 w137 h37 vCheck75 Checked%Check75%, Учитывать в счетчике
Gui, 97: Add, GroupBox, x11 y-3 w161 h53
Gui, 97: Show, w185 h78, Admin-Tools by Notoriuz
Gui, 97: Add, Button, x10 y50 w163 h23 gSlowCom32, Сохранить
return
97GuiEscape:
97GuiClose:
    Gui Destroy
return

3Tab33:
Gui, Submit, NoHide
IniWrite, %BindComDev13%, %A_WorkingDir%\setting_3tab.ini, Setup, BindText13
IniWrite, %BindCommand13%, %A_WorkingDir%\setting_3tab.ini, Setup, BindComand13
Gui, 98: Add, CheckBox, x22 y6 w137 h37 vCheck76 Checked%Check76%, Учитывать в счетчике
Gui, 98: Add, GroupBox, x11 y-3 w161 h53
Gui, 98: Show, w185 h78, Admin-Tools by Notoriuz
Gui, 98: Add, Button, x10 y50 w163 h23 gSlowCom33, Сохранить
return
98GuiEscape:
98GuiClose:
    Gui Destroy
return

3Tab34:
Gui, Submit, NoHide
IniWrite, %BindComDev14%, %A_WorkingDir%\setting_3tab.ini, Setup, BindText14
IniWrite, %BindCommand14%, %A_WorkingDir%\setting_3tab.ini, Setup, BindComand14
Gui, 99: Add, CheckBox, x22 y6 w137 h37 vCheck77 Checked%Check77%, Учитывать в счетчике
Gui, 99: Add, GroupBox, x11 y-3 w161 h53
Gui, 99: Show, w185 h78, Admin-Tools by Notoriuz
Gui, 99: Add, Button, x10 y50 w163 h23 gSlowCom34, Сохранить
return
99GuiEscape:
99GuiClose:
    Gui Destroy
return

3Tab35:
Gui, Submit, NoHide
IniWrite, %BindComDev15%, %A_WorkingDir%\setting_3tab.ini, Setup, BindText15
IniWrite, %BindCommand15%, %A_WorkingDir%\setting_3tab.ini, Setup, BindComand15
Gui, 1a: Add, CheckBox, x22 y6 w137 h37 vCheck78 Checked%Check78%, Учитывать в счетчике
Gui, 1a: Add, GroupBox, x11 y-3 w161 h53
Gui, 1a: Show, w185 h78, Admin-Tools by Notoriuz
Gui, 1a: Add, Button, x10 y50 w163 h23 gSlowCom35, Сохранить
return
1aGuiEscape:
1aGuiClose:
    Gui Destroy
return

3Tab36:
Gui, Submit, NoHide
IniWrite, %BindComDev16%, %A_WorkingDir%\setting_3tab.ini, Setup, BindText16
IniWrite, %BindCommand16%, %A_WorkingDir%\setting_3tab.ini, Setup, BindComand16
Gui, 2a: Add, CheckBox, x22 y6 w137 h37 vCheck79 Checked%Check79%, Учитывать в счетчике
Gui, 2a: Add, GroupBox, x11 y-3 w161 h53
Gui, 2a: Show, w185 h78, Admin-Tools by Notoriuz
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
Gosub, StartFullGui
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
Gosub, StartFullGui
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
Gosub, StartFullGui
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
Gosub, StartFullGui
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
Gosub, StartFullGui
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
Gosub, StartFullGui
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
Gosub, StartFullGui
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
Gosub, StartFullGui
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
Gosub, StartFullGui
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
Gosub, StartFullGui
Gui Destroy
 return








~sc29::
    KeyWait, sc29
    if Check83 > 0
    {
    MouseGetPos, xbop1, ybop1
    if openrub > 0
        {
        Gosub, sBindriText
        MouseClick, left, 0, 0
	Sleep, 50
	MouseMove, %xbop1%, %ybop1%
        openrub = 0
        }
    else
        {
        WinGetPos, xbop2, ybop2, , , %A_Space%
        Gui, b123: Destroy
            IniWrite, %xbop2%, %A_WorkingDir%\setting_console.ini, Setup, xbop2
            IniWrite, %ybop2%, %A_WorkingDir%\setting_console.ini, Setup, ybop2
        openrub = 1
        }
    }
return

sBindriText:
    IniRead, xbop2, %A_WorkingDir%\setting_console.ini , Setup, xbop2, 759
    IniRead, ybop2, %A_WorkingDir%\setting_console.ini , Setup, ybop2, 462

    if xbop2 is not number
        {
            xbop2 := 100
        }

    if ybop2 is not number
    {
        ybop2 := 100
    }
    Gui, b123: -MinimizeBox -MaximizeBox -SysMenu +AlwaysOnTop -DPIScale +LastFound +E0x20
    Gui, b123: Add, Button, x8 y8 w92 h34 gBindClick1, %BindText1%
    Gui, b123: Add, Button, x104 y8 w92 h34 gBindClick2, %BindText2%
    Gui, b123: Add, Button, x200 y8 w92 h34 gBindClick3, %BindText3%
    Gui, b123: Add, Button, x296 y8 w92 h34 gBindClick4, %BindText4%
    Gui, b123: Add, Button, x8 y48 w92 h34 gBindClick5, %BindText5%
    Gui, b123: Add, Button, x104 y48 w92 h34 gBindClick6, %BindText6%
    Gui, b123: Add, Button, x200 y48 w92 h34 gBindClick7, %BindText7%
    Gui, b123: Add, Button, x296 y48 w92 h34 gBindClick8, %BindText8%
    Gui, b123: Add, Button, x8 y88 w92 h34 gBindClick9, %BindText9%
    Gui, b123: Add, Button, x104 y88 w92 h34 gBindClick10, %BindText10%
    Gui, b123: Add, Button, x200 y88 w92 h34 gBindClick11, %BindText11%
    Gui, b123: Add, Button, x296 y88 w92 h34 gBindClick12, %BindText12%
    Gui, b123: Show, x%xbop2% y%ybop2% w395 h130, %A_Space%
Return

b123GuiEscape:
b123GuiClose:
    Gui, b123: Destroy

Return


BindClick1:
    if PressN1 !> 0
    {
    }
    else
        {
        MouseClick, left, 22, 330
        Sleep 30
        Gosub, %PressK1%Key%PressN1%
        }
Return

BindClick2:
    if PressN2 !> 0
    {
    }
    else
        {
        MouseClick, left, 22, 330
        Sleep 30
        Gosub, %PressK2%Key%PressN2%
        }
Return

BindClick3:
    if PressN3 !> 0
    {
    }
    else
        {
        MouseClick, left, 22, 330
        Sleep 30
        Gosub, %PressK3%Key%PressN3%
        }
Return

BindClick4:
    if PressN4 !> 0
    {
    }
    else
        {
        MouseClick, left, 22, 330
        Sleep 30
        Gosub, %PressK4%Key%PressN4%
        }
Return

BindClick5:
    if PressN5 !> 0
    {
    }
    else
        {
        MouseClick, left, 22, 330
        Sleep 30
        Gosub, %PressK5%Key%PressN5%
        }
Return

BindClick6:
    if PressN6 !> 0
    {
    }
    else
        {
        MouseClick, left, 22, 330
        Sleep 30
        Gosub, %PressK6%Key%PressN6%
        }
Return

BindClick7:
    if PressN7 !> 0
    {
    }
    else
        {
        MouseClick, left, 22, 330
        Sleep 30
        Gosub, %PressK7%Key%PressN7%
        }
Return

BindClick8:
    if PressN8 !> 0
    {
    }
    else
        {
        MouseClick, left, 22, 330
        Sleep 30
        Gosub, %PressK8%Key%PressN8%
        }
Return

BindClick9:
    if PressN9 !> 0
    {
    }
    else
        {
        MouseClick, left, 22, 330
        Sleep 30
        Gosub, %PressK9%Key%PressN9%
        }
Return

BindClick10:
    if PressN10 !> 0
    {
    }
    else
        {
        MouseClick, left, 22, 330
        Sleep 30
        Gosub, %PressK10%Key%PressN10%
        }
Return

BindClick11:
    if PressN11 !> 0
    {
    }
    else
        {
        MouseClick, left, 22, 330
        Sleep 30
        Gosub, %PressK11%Key%PressN11%
        }
Return

BindClick12:
    if PressN12 !> 0
    {
    }
    else
        {
        MouseClick, left, 22, 330
        Sleep 30
        Gosub, %PressK12%Key%PressN12%
        }
Return
;-----------------------------------------------------------------------------------------------------------------------------------------
::pm::
SendInput, pm%A_Space%
KeyWait, Enter, D T20
if ErrorLevel = 1
{
}
Else
Gui, b123: Destroy
Return

::ainvite::
SendInput, ainvite{enter}
KeyWait, Enter, D T20
if ErrorLevel = 1
{
}
Else
Gui, b123: Destroy
Return
;--------------------------------------------------------------
sett:
Gui, sett: Add, Button, x8 y8 w87 h32 gHUD1, 1. %BindText1%
Gui, sett: Add, Button, x96 y8 w87 h32 gHUD2, 2. %BindText2%
Gui, sett: Add, Button, x184 y8 w87 h32 gHUD3, 3. %BindText3%
Gui, sett: Add, Button, x272 y8 w87 h32 gHUD4, 4. %BindText4%
Gui, sett: Add, Button, x8 y40 w87 h32 gHUD5, 5. %BindText5%
Gui, sett: Add, Button, x96 y40 w87 h32 gHUD6, 6. %BindText6%
Gui, sett: Add, Button, x184 y40 w87 h32 gHUD7, 7. %BindText7%
Gui, sett: Add, Button, x272 y40 w87 h32 gHUD8, 8. %BindText8%
Gui, sett: Add, Button, x8 y72 w87 h32 gHUD9, 9. %BindText9%
Gui, sett: Add, Button, x96 y72 w87 h32 gHUD10, 10. %BindText10%
Gui, sett: Add, Button, x184 y72 w87 h32 gHUD11, 11. %BindText11%
Gui, sett: Add, Button, x272 y72 w87 h32 gHUD12, 12. %BindText12%
Gui, sett: Add, Button, x144 y112 w80 h23 gHUDSave, Сохранить

Gui, sett: Show, w365 h140, Нажмите на ячейку, которую хотите изменить
Return
settGuiEscape:
settGuiClose:
    Gui, sett: Destroy
Return

HUDSave:
Gui, Submit, NoHide
Loop, 12
    {
    IniWrite, % BindText%A_Index%, %A_WorkingDir%\setting_console.ini, Setup, BindText%A_Index%
    IniWrite, % PressN%A_Index%, %A_WorkingDir%\setting_console.ini, Setup, PressN%A_Index%
    IniWrite, % PressK%A_Index%, %A_WorkingDir%\setting_console.ini, Setup, PressK%A_Index%
    }
Gui, sett: Destroy
Return


HUD1:
Gosub, hudsett1
Gui, sett: Destroy
return

HUD2:
Gosub, hudsett2
Gui, sett: Destroy
return

HUD3:
Gosub, hudsett3
Gui, sett: Destroy
return

HUD4:
Gosub, hudsett4
Gui, sett: Destroy
return

HUD5:
Gosub, hudsett5
Gui, sett: Destroy
return

HUD6:
Gosub, hudsett6
Gui, sett: Destroy
return

HUD7:
Gosub, hudsett7
Gui, sett: Destroy
return

HUD8:
Gosub, hudsett8
Gui, sett: Destroy
return

HUD9:
Gosub, hudsett9
Gui, sett: Destroy
return

HUD10:
Gosub, hudsett10
Gui, sett: Destroy
return

HUD11:
Gosub, hudsett11
Gui, sett: Destroy
return

HUD12:
Gosub, hudsett12
Gui, sett: Destroy
return

;----------------------------------------------------------------------------------------------------------------------------------------------------

hudsett1:
Gui, hudsett1: Add, GroupBox, x8 y8 w235 h144 +Center, Основные бинды
Gui, hudsett1: Add, Button, x16 y24 w104 h23 gDopGui11, %MyText1%
Gui, hudsett1: Add, Button, x16 y48 w104 h23 gDopGui12, %MyText2%
Gui, hudsett1: Add, Button, x16 y72 w104 h23 gDopGui13, %MyText3%
Gui, hudsett1: Add, Button, x16 y96 w104 h23 gDopGui14, %MyText4%
Gui, hudsett1: Add, Button, x16 y120 w104 h23 gDopGui15, %MyText5%
Gui, hudsett1: Add, Button, x128 y24 w104 h23 gDopGui16, %MyText6%
Gui, hudsett1: Add, Button, x128 y48 w104 h23 gDopGui17, %MyText7%
Gui, hudsett1: Add, Button, x128 y72 w104 h23 gDopGui18, %MyText8%
Gui, hudsett1: Add, Button, x128 y96 w104 h23 gDopGui19, %MyText9%
Gui, hudsett1: Add, Button, x128 y120 w104 h23 gDopGui20, %MyText10%
Gui, hudsett1: Add, GroupBox, x256 y8 w235 h144 +Center, Свой бинд
Gui, hudsett1: Add, Button, x264 y24 w104 h23 g2DopGui11, %EditValue1%
Gui, hudsett1: Add, Button, x376 y24 w104 h23 g2DopGui12, %EditValue2%
Gui, hudsett1: Add, Button, x264 y48 w104 h23 g2DopGui13, %EditValue3%
Gui, hudsett1: Add, Button, x376 y48 w104 h23 g2DopGui14, %EditValue4%
Gui, hudsett1: Add, Button, x264 y72 w104 h23 g2DopGui15, %EditValue5%
Gui, hudsett1: Add, Button, x376 y72 w104 h23 g2DopGui16, %EditValue6%
Gui, hudsett1: Add, Button, x264 y96 w104 h23 g2DopGui17, %EditValue7%
Gui, hudsett1: Add, Button, x376 y96 w104 h23 g2DopGui18, %EditValue8%
Gui, hudsett1: Add, Button, x264 y120 w104 h23 g2DopGui19, %EditValue9%
Gui, hudsett1: Add, Button, x376 y120 w104 h23 g2DopGui20, %EditValue10%

Gui, hudsett1: Show, w498 h158, %A_Space%
Return

hudsett1GuiEscape:
hudsett1GuiClose:
    Gui, hudsett1: Destroy
    Gosub, sett
Return

;-------------------------------------------------------------------------------------------------------------------------------

hudsett2:
Gui, hudsett2: Add, GroupBox, x8 y8 w235 h144 +Center, Основные бинды
Gui, hudsett2: Add, Button, x16 y24 w104 h23 gDopGui21, %MyText1%
Gui, hudsett2: Add, Button, x16 y48 w104 h23 gDopGui22, %MyText2%
Gui, hudsett2: Add, Button, x16 y72 w104 h23 gDopGui23, %MyText3%
Gui, hudsett2: Add, Button, x16 y96 w104 h23 gDopGui24, %MyText4%
Gui, hudsett2: Add, Button, x16 y120 w104 h23 gDopGui25, %MyText5%
Gui, hudsett2: Add, Button, x128 y24 w104 h23 gDopGui26, %MyText6%
Gui, hudsett2: Add, Button, x128 y48 w104 h23 gDopGui27, %MyText7%
Gui, hudsett2: Add, Button, x128 y72 w104 h23 gDopGui28, %MyText8%
Gui, hudsett2: Add, Button, x128 y96 w104 h23 gDopGui29, %MyText9%
Gui, hudsett2: Add, Button, x128 y120 w104 h23 gDopGui30, %MyText10%
Gui, hudsett2: Add, GroupBox, x256 y8 w235 h144 +Center, Свой бинд
Gui, hudsett2: Add, Button, x264 y24 w104 h23 g2DopGui21, %EditValue1%
Gui, hudsett2: Add, Button, x376 y24 w104 h23 g2DopGui22, %EditValue2%
Gui, hudsett2: Add, Button, x264 y48 w104 h23 g2DopGui23, %EditValue3%
Gui, hudsett2: Add, Button, x376 y48 w104 h23 g2DopGui24, %EditValue4%
Gui, hudsett2: Add, Button, x264 y72 w104 h23 g2DopGui25, %EditValue5%
Gui, hudsett2: Add, Button, x376 y72 w104 h23 g2DopGui26, %EditValue6%
Gui, hudsett2: Add, Button, x264 y96 w104 h23 g2DopGui27, %EditValue7%
Gui, hudsett2: Add, Button, x376 y96 w104 h23 g2DopGui28, %EditValue8%
Gui, hudsett2: Add, Button, x264 y120 w104 h23 g2DopGui29, %EditValue9%
Gui, hudsett2: Add, Button, x376 y120 w104 h23 g2DopGui30, %EditValue10%

Gui, hudsett2: Show, w498 h158, Window
Return

hudsett2GuiEscape:
hudsett2GuiClose:
    Gui, hudsett2: Destroy
    Gosub, sett
Return
;-------------------------------------------------------------------------------------------------------------------------------

hudsett3:
Gui, hudsett3: Add, GroupBox, x8 y8 w235 h144 +Center, Основные бинды
Gui, hudsett3: Add, Button, x16 y24 w104 h23 gDopGui31, %MyText1%
Gui, hudsett3: Add, Button, x16 y48 w104 h23 gDopGui32, %MyText2%
Gui, hudsett3: Add, Button, x16 y72 w104 h23 gDopGui33, %MyText3%
Gui, hudsett3: Add, Button, x16 y96 w104 h23 gDopGui34, %MyText4%
Gui, hudsett3: Add, Button, x16 y120 w104 h23 gDopGui35, %MyText5%
Gui, hudsett3: Add, Button, x128 y24 w104 h23 gDopGui36, %MyText6%
Gui, hudsett3: Add, Button, x128 y48 w104 h23 gDopGui37, %MyText7%
Gui, hudsett3: Add, Button, x128 y72 w104 h23 gDopGui38, %MyText8%
Gui, hudsett3: Add, Button, x128 y96 w104 h23 gDopGui39, %MyText9%
Gui, hudsett3: Add, Button, x128 y120 w104 h23 gDopGui40, %MyText10%
Gui, hudsett3: Add, GroupBox, x256 y8 w235 h144 +Center, Свой бинд
Gui, hudsett3: Add, Button, x264 y24 w104 h23 g2DopGui31, %EditValue1%
Gui, hudsett3: Add, Button, x376 y24 w104 h23 g2DopGui32, %EditValue2%
Gui, hudsett3: Add, Button, x264 y48 w104 h23 g2DopGui33, %EditValue3%
Gui, hudsett3: Add, Button, x376 y48 w104 h23 g2DopGui34, %EditValue4%
Gui, hudsett3: Add, Button, x264 y72 w104 h23 g2DopGui35, %EditValue5%
Gui, hudsett3: Add, Button, x376 y72 w104 h23 g2DopGui36, %EditValue6%
Gui, hudsett3: Add, Button, x264 y96 w104 h23 g2DopGui37, %EditValue7%
Gui, hudsett3: Add, Button, x376 y96 w104 h23 g2DopGui38, %EditValue8%
Gui, hudsett3: Add, Button, x264 y120 w104 h23 g2DopGui39, %EditValue9%
Gui, hudsett3: Add, Button, x376 y120 w104 h23 g2DopGui40, %EditValue10%

Gui, hudsett3: Show, w498 h158, Window
Return

hudsett3GuiEscape:
hudsett3GuiClose:
    Gui, hudsett3: Destroy
    Gosub, sett
Return
;-------------------------------------------------------------------------------------------------------------------------------

hudsett4:
Gui, hudsett4: Add, GroupBox, x8 y8 w235 h144 +Center, Основные бинды
Gui, hudsett4: Add, Button, x16 y24 w104 h23 gDopGui41, %MyText1%
Gui, hudsett4: Add, Button, x16 y48 w104 h23 gDopGui42, %MyText2%
Gui, hudsett4: Add, Button, x16 y72 w104 h23 gDopGui43, %MyText3%
Gui, hudsett4: Add, Button, x16 y96 w104 h23 gDopGui44, %MyText4%
Gui, hudsett4: Add, Button, x16 y120 w104 h23 gDopGui45, %MyText5%
Gui, hudsett4: Add, Button, x128 y24 w104 h23 gDopGui46, %MyText6%
Gui, hudsett4: Add, Button, x128 y48 w104 h23 gDopGui47, %MyText7%
Gui, hudsett4: Add, Button, x128 y72 w104 h23 gDopGui48, %MyText8%
Gui, hudsett4: Add, Button, x128 y96 w104 h23 gDopGui49, %MyText9%
Gui, hudsett4: Add, Button, x128 y120 w104 h23 gDopGui50, %MyText10%
Gui, hudsett4: Add, GroupBox, x256 y8 w235 h144 +Center, Свой бинд
Gui, hudsett4: Add, Button, x264 y24 w104 h23 g2DopGui41, %EditValue1%
Gui, hudsett4: Add, Button, x376 y24 w104 h23 g2DopGui42, %EditValue2%
Gui, hudsett4: Add, Button, x264 y48 w104 h23 g2DopGui43, %EditValue3%
Gui, hudsett4: Add, Button, x376 y48 w104 h23 g2DopGui44, %EditValue4%
Gui, hudsett4: Add, Button, x264 y72 w104 h23 g2DopGui45, %EditValue5%
Gui, hudsett4: Add, Button, x376 y72 w104 h23 g2DopGui46, %EditValue6%
Gui, hudsett4: Add, Button, x264 y96 w104 h23 g2DopGui47, %EditValue7%
Gui, hudsett4: Add, Button, x376 y96 w104 h23 g2DopGui48, %EditValue8%
Gui, hudsett4: Add, Button, x264 y120 w104 h23 g2DopGui49, %EditValue9%
Gui, hudsett4: Add, Button, x376 y120 w104 h23 g2DopGui50, %EditValue10%

Gui, hudsett4: Show, w498 h158, Window
Return

hudsett4GuiEscape:
hudsett4GuiClose:
    Gui, hudsett4: Destroy
    Gosub, sett
Return

hudsett5:
Gui, hudsett5: Add, GroupBox, x8 y8 w235 h144 +Center, Основные бинды
Gui, hudsett5: Add, Button, x16 y24 w104 h23 gDopGui51, %MyText1%
Gui, hudsett5: Add, Button, x16 y48 w104 h23 gDopGui52, %MyText2%
Gui, hudsett5: Add, Button, x16 y72 w104 h23 gDopGui53, %MyText3%
Gui, hudsett5: Add, Button, x16 y96 w104 h23 gDopGui54, %MyText4%
Gui, hudsett5: Add, Button, x16 y120 w104 h23 gDopGui55, %MyText5%
Gui, hudsett5: Add, Button, x128 y24 w104 h23 gDopGui56, %MyText6%
Gui, hudsett5: Add, Button, x128 y48 w104 h23 gDopGui57, %MyText7%
Gui, hudsett5: Add, Button, x128 y72 w104 h23 gDopGui58, %MyText8%
Gui, hudsett5: Add, Button, x128 y96 w104 h23 gDopGui59, %MyText9%
Gui, hudsett5: Add, Button, x128 y120 w104 h23 gDopGui60, %MyText10%
Gui, hudsett5: Add, GroupBox, x256 y8 w235 h144 +Center, Свой бинд
Gui, hudsett5: Add, Button, x264 y24 w104 h23 g2DopGui51, %EditValue1%
Gui, hudsett5: Add, Button, x376 y24 w104 h23 g2DopGui52, %EditValue2%
Gui, hudsett5: Add, Button, x264 y48 w104 h23 g2DopGui53, %EditValue3%
Gui, hudsett5: Add, Button, x376 y48 w104 h23 g2DopGui54, %EditValue4%
Gui, hudsett5: Add, Button, x264 y72 w104 h23 g2DopGui55, %EditValue5%
Gui, hudsett5: Add, Button, x376 y72 w104 h23 g2DopGui56, %EditValue6%
Gui, hudsett5: Add, Button, x264 y96 w104 h23 g2DopGui57, %EditValue7%
Gui, hudsett5: Add, Button, x376 y96 w104 h23 g2DopGui58, %EditValue8%
Gui, hudsett5: Add, Button, x264 y120 w104 h23 g2DopGui59, %EditValue9%
Gui, hudsett5: Add, Button, x376 y120 w104 h23 g2DopGui60, %EditValue10%

Gui, hudsett5: Show, w498 h158, Window
Return

hudsett5GuiEscape:
hudsett5GuiClose:
    Gui, hudsett5: Destroy
    Gosub, sett
Return

hudsett6:
Gui, hudsett6: Add, GroupBox, x8 y8 w235 h144 +Center, Основные бинды
Gui, hudsett6: Add, Button, x16 y24 w104 h23 gDopGui61, %MyText1%
Gui, hudsett6: Add, Button, x16 y48 w104 h23 gDopGui62, %MyText2%
Gui, hudsett6: Add, Button, x16 y72 w104 h23 gDopGui63, %MyText3%
Gui, hudsett6: Add, Button, x16 y96 w104 h23 gDopGui64, %MyText4%
Gui, hudsett6: Add, Button, x16 y120 w104 h23 gDopGui65, %MyText5%
Gui, hudsett6: Add, Button, x128 y24 w104 h23 gDopGui66, %MyText6%
Gui, hudsett6: Add, Button, x128 y48 w104 h23 gDopGui67, %MyText7%
Gui, hudsett6: Add, Button, x128 y72 w104 h23 gDopGui68, %MyText8%
Gui, hudsett6: Add, Button, x128 y96 w104 h23 gDopGui69, %MyText9%
Gui, hudsett6: Add, Button, x128 y120 w104 h23 gDopGui70, %MyText10%
Gui, hudsett6: Add, GroupBox, x256 y8 w235 h144 +Center, Свой бинд
Gui, hudsett6: Add, Button, x264 y24 w104 h23 g2DopGui61, %EditValue1%
Gui, hudsett6: Add, Button, x376 y24 w104 h23 g2DopGui62, %EditValue2%
Gui, hudsett6: Add, Button, x264 y48 w104 h23 g2DopGui63, %EditValue3%
Gui, hudsett6: Add, Button, x376 y48 w104 h23 g2DopGui64, %EditValue4%
Gui, hudsett6: Add, Button, x264 y72 w104 h23 g2DopGui65, %EditValue5%
Gui, hudsett6: Add, Button, x376 y72 w104 h23 g2DopGui66, %EditValue6%
Gui, hudsett6: Add, Button, x264 y96 w104 h23 g2DopGui67, %EditValue7%
Gui, hudsett6: Add, Button, x376 y96 w104 h23 g2DopGui68, %EditValue8%
Gui, hudsett6: Add, Button, x264 y120 w104 h23 g2DopGui69, %EditValue9%
Gui, hudsett6: Add, Button, x376 y120 w104 h23 g2DopGui70, %EditValue10%

Gui, hudsett6: Show, w498 h158, Window
Return

hudsett6GuiEscape:
hudsett6GuiClose:
    Gui, hudsett6: Destroy
    Gosub, sett
Return

hudsett7:
Gui, hudsett7: Add, GroupBox, x8 y8 w235 h144 +Center, Основные бинды
Gui, hudsett7: Add, Button, x16 y24 w104 h23 gDopGui71, %MyText1%
Gui, hudsett7: Add, Button, x16 y48 w104 h23 gDopGui72, %MyText2%
Gui, hudsett7: Add, Button, x16 y72 w104 h23 gDopGui73, %MyText3%
Gui, hudsett7: Add, Button, x16 y96 w104 h23 gDopGui74, %MyText4%
Gui, hudsett7: Add, Button, x16 y120 w104 h23 gDopGui75, %MyText5%
Gui, hudsett7: Add, Button, x128 y24 w104 h23 gDopGui76, %MyText6%
Gui, hudsett7: Add, Button, x128 y48 w104 h23 gDopGui77, %MyText7%
Gui, hudsett7: Add, Button, x128 y72 w104 h23 gDopGui78, %MyText8%
Gui, hudsett7: Add, Button, x128 y96 w104 h23 gDopGui79, %MyText9%
Gui, hudsett7: Add, Button, x128 y120 w104 h23 gDopGui80, %MyText10%
Gui, hudsett7: Add, GroupBox, x256 y8 w235 h144 +Center, Свой бинд
Gui, hudsett7: Add, Button, x264 y24 w104 h23 g2DopGui71, %EditValue1%
Gui, hudsett7: Add, Button, x376 y24 w104 h23 g2DopGui72, %EditValue2%
Gui, hudsett7: Add, Button, x264 y48 w104 h23 g2DopGui73, %EditValue3%
Gui, hudsett7: Add, Button, x376 y48 w104 h23 g2DopGui74, %EditValue4%
Gui, hudsett7: Add, Button, x264 y72 w104 h23 g2DopGui75, %EditValue5%
Gui, hudsett7: Add, Button, x376 y72 w104 h23 g2DopGui76, %EditValue6%
Gui, hudsett7: Add, Button, x264 y96 w104 h23 g2DopGui77, %EditValue7%
Gui, hudsett7: Add, Button, x376 y96 w104 h23 g2DopGui78, %EditValue8%
Gui, hudsett7: Add, Button, x264 y120 w104 h23 g2DopGui79, %EditValue9%
Gui, hudsett7: Add, Button, x376 y120 w104 h23 g2DopGui80, %EditValue10%

Gui, hudsett7: Show, w498 h158, Window
Return

hudsett7GuiEscape:
hudsett7GuiClose:
    Gui, hudsett7: Destroy
    Gosub, sett
Return

hudsett8:
Gui, hudsett8: Add, GroupBox, x8 y8 w235 h144 +Center, Основные бинды
Gui, hudsett8: Add, Button, x16 y24 w104 h23 gDopGui81, %MyText1%
Gui, hudsett8: Add, Button, x16 y48 w104 h23 gDopGui82, %MyText2%
Gui, hudsett8: Add, Button, x16 y72 w104 h23 gDopGui83, %MyText3%
Gui, hudsett8: Add, Button, x16 y96 w104 h23 gDopGui84, %MyText4%
Gui, hudsett8: Add, Button, x16 y120 w104 h23 gDopGui85, %MyText5%
Gui, hudsett8: Add, Button, x128 y24 w104 h23 gDopGui86, %MyText6%
Gui, hudsett8: Add, Button, x128 y48 w104 h23 gDopGui87, %MyText7%
Gui, hudsett8: Add, Button, x128 y72 w104 h23 gDopGui88, %MyText8%
Gui, hudsett8: Add, Button, x128 y96 w104 h23 gDopGui89, %MyText9%
Gui, hudsett8: Add, Button, x128 y120 w104 h23 gDopGui90, %MyText10%
Gui, hudsett8: Add, GroupBox, x256 y8 w235 h144 +Center, Свой бинд
Gui, hudsett8: Add, Button, x264 y24 w104 h23 g2DopGui81, %EditValue1%
Gui, hudsett8: Add, Button, x376 y24 w104 h23 g2DopGui82, %EditValue2%
Gui, hudsett8: Add, Button, x264 y48 w104 h23 g2DopGui83, %EditValue3%
Gui, hudsett8: Add, Button, x376 y48 w104 h23 g2DopGui84, %EditValue4%
Gui, hudsett8: Add, Button, x264 y72 w104 h23 g2DopGui85, %EditValue5%
Gui, hudsett8: Add, Button, x376 y72 w104 h23 g2DopGui86, %EditValue6%
Gui, hudsett8: Add, Button, x264 y96 w104 h23 g2DopGui87, %EditValue7%
Gui, hudsett8: Add, Button, x376 y96 w104 h23 g2DopGui88, %EditValue8%
Gui, hudsett8: Add, Button, x264 y120 w104 h23 g2DopGui89, %EditValue9%
Gui, hudsett8: Add, Button, x376 y120 w104 h23 g2DopGui90, %EditValue10%

Gui, hudsett8: Show, w498 h158, Window
Return

hudsett8GuiEscape:
hudsett8GuiClose:
    Gui, hudsett8: Destroy
    Gosub, sett
Return

hudsett9:
Gui, hudsett9: Add, GroupBox, x8 y8 w235 h144 +Center, Основные бинды
Gui, hudsett9: Add, Button, x16 y24 w104 h23 gDopGui91, %MyText1%
Gui, hudsett9: Add, Button, x16 y48 w104 h23 gDopGui92, %MyText2%
Gui, hudsett9: Add, Button, x16 y72 w104 h23 gDopGui93, %MyText3%
Gui, hudsett9: Add, Button, x16 y96 w104 h23 gDopGui94, %MyText4%
Gui, hudsett9: Add, Button, x16 y120 w104 h23 gDopGui95, %MyText5%
Gui, hudsett9: Add, Button, x128 y24 w104 h23 gDopGui96, %MyText6%
Gui, hudsett9: Add, Button, x128 y48 w104 h23 gDopGui97, %MyText7%
Gui, hudsett9: Add, Button, x128 y72 w104 h23 gDopGui98, %MyText8%
Gui, hudsett9: Add, Button, x128 y96 w104 h23 gDopGui99, %MyText9%
Gui, hudsett9: Add, Button, x128 y120 w104 h23 gDopGui100, %MyText10%
Gui, hudsett9: Add, GroupBox, x256 y8 w235 h144 +Center, Свой бинд
Gui, hudsett9: Add, Button, x264 y24 w104 h23 g2DopGui91, %EditValue1%
Gui, hudsett9: Add, Button, x376 y24 w104 h23 g2DopGui92, %EditValue2%
Gui, hudsett9: Add, Button, x264 y48 w104 h23 g2DopGui93, %EditValue3%
Gui, hudsett9: Add, Button, x376 y48 w104 h23 g2DopGui94, %EditValue4%
Gui, hudsett9: Add, Button, x264 y72 w104 h23 g2DopGui95, %EditValue5%
Gui, hudsett9: Add, Button, x376 y72 w104 h23 g2DopGui96, %EditValue6%
Gui, hudsett9: Add, Button, x264 y96 w104 h23 g2DopGui97, %EditValue7%
Gui, hudsett9: Add, Button, x376 y96 w104 h23 g2DopGui98, %EditValue8%
Gui, hudsett9: Add, Button, x264 y120 w104 h23 g2DopGui99, %EditValue9%
Gui, hudsett9: Add, Button, x376 y120 w104 h23 g2DopGui100, %EditValue10%

Gui, hudsett9: Show, w498 h158, Window
Return

hudsett9GuiEscape:
hudsett9GuiClose:
    Gui, hudsett9: Destroy
    Gosub, sett
Return

hudsett10:
Gui, hudsett10: Add, GroupBox, x8 y8 w235 h144 +Center, Основные бинды
Gui, hudsett10: Add, Button, x16 y24 w104 h23 gDopGui101, %MyText1%
Gui, hudsett10: Add, Button, x16 y48 w104 h23 gDopGui102, %MyText2%
Gui, hudsett10: Add, Button, x16 y72 w104 h23 gDopGui103, %MyText3%
Gui, hudsett10: Add, Button, x16 y96 w104 h23 gDopGui104, %MyText4%
Gui, hudsett10: Add, Button, x16 y120 w104 h23 gDopGui105, %MyText5%
Gui, hudsett10: Add, Button, x128 y24 w104 h23 gDopGui106, %MyText6%
Gui, hudsett10: Add, Button, x128 y48 w104 h23 gDopGui107, %MyText7%
Gui, hudsett10: Add, Button, x128 y72 w104 h23 gDopGui108, %MyText8%
Gui, hudsett10: Add, Button, x128 y96 w104 h23 gDopGui109, %MyText9%
Gui, hudsett10: Add, Button, x128 y120 w104 h23 gDopGui110, %MyText10%
Gui, hudsett10: Add, GroupBox, x256 y8 w235 h144 +Center, Свой бинд
Gui, hudsett10: Add, Button, x264 y24 w104 h23 g2DopGui101, %EditValue1%
Gui, hudsett10: Add, Button, x376 y24 w104 h23 g2DopGui102, %EditValue2%
Gui, hudsett10: Add, Button, x264 y48 w104 h23 g2DopGui103, %EditValue3%
Gui, hudsett10: Add, Button, x376 y48 w104 h23 g2DopGui104, %EditValue4%
Gui, hudsett10: Add, Button, x264 y72 w104 h23 g2DopGui105, %EditValue5%
Gui, hudsett10: Add, Button, x376 y72 w104 h23 g2DopGui106, %EditValue6%
Gui, hudsett10: Add, Button, x264 y96 w104 h23 g2DopGui107, %EditValue7%
Gui, hudsett10: Add, Button, x376 y96 w104 h23 g2DopGui108, %EditValue8%
Gui, hudsett10: Add, Button, x264 y120 w104 h23 g2DopGui109, %EditValue9%
Gui, hudsett10: Add, Button, x376 y120 w104 h23 g2DopGui110, %EditValue10%

Gui, hudsett10: Show, w498 h158, Window
Return

hudsett10GuiEscape:
hudsett10GuiClose:
    Gui, hudsett10: Destroy
    Gosub, sett
Return

hudsett11:
Gui, hudsett11: Add, GroupBox, x8 y8 w235 h144 +Center, Основные бинды
Gui, hudsett11: Add, Button, x16 y24 w104 h23 gDopGui111, %MyText1%
Gui, hudsett11: Add, Button, x16 y48 w104 h23 gDopGui112, %MyText2%
Gui, hudsett11: Add, Button, x16 y72 w104 h23 gDopGui113, %MyText3%
Gui, hudsett11: Add, Button, x16 y96 w104 h23 gDopGui114, %MyText4%
Gui, hudsett11: Add, Button, x16 y120 w104 h23 gDopGui115, %MyText5%
Gui, hudsett11: Add, Button, x128 y24 w104 h23 gDopGui116, %MyText6%
Gui, hudsett11: Add, Button, x128 y48 w104 h23 gDopGui117, %MyText7%
Gui, hudsett11: Add, Button, x128 y72 w104 h23 gDopGui118, %MyText8%
Gui, hudsett11: Add, Button, x128 y96 w104 h23 gDopGui119, %MyText9%
Gui, hudsett11: Add, Button, x128 y120 w104 h23 gDopGui120, %MyText10%
Gui, hudsett11: Add, GroupBox, x256 y8 w235 h144 +Center, Свой бинд
Gui, hudsett11: Add, Button, x264 y24 w104 h23 g2DopGui111, %EditValue1%
Gui, hudsett11: Add, Button, x376 y24 w104 h23 g2DopGui112, %EditValue2%
Gui, hudsett11: Add, Button, x264 y48 w104 h23 g2DopGui113, %EditValue3%
Gui, hudsett11: Add, Button, x376 y48 w104 h23 g2DopGui114, %EditValue4%
Gui, hudsett11: Add, Button, x264 y72 w104 h23 g2DopGui115, %EditValue5%
Gui, hudsett11: Add, Button, x376 y72 w104 h23 g2DopGui116, %EditValue6%
Gui, hudsett11: Add, Button, x264 y96 w104 h23 g2DopGui117, %EditValue7%
Gui, hudsett11: Add, Button, x376 y96 w104 h23 g2DopGui118, %EditValue8%
Gui, hudsett11: Add, Button, x264 y120 w104 h23 g2DopGui119, %EditValue9%
Gui, hudsett11: Add, Button, x376 y120 w104 h23 g2DopGui120, %EditValue10%

Gui, hudsett11: Show, w498 h158, Window
Return

hudsett11GuiEscape:
hudsett11GuiClose:
    Gui, hudsett11: Destroy
    Gosub, sett
Return

hudsett12:
Gui, hudsett12: Add, GroupBox, x8 y8 w235 h144 +Center, Основные бинды
Gui, hudsett12: Add, Button, x16 y24 w104 h23 gDopGui121, %MyText1%
Gui, hudsett12: Add, Button, x16 y48 w104 h23 gDopGui122, %MyText2%
Gui, hudsett12: Add, Button, x16 y72 w104 h23 gDopGui123, %MyText3%
Gui, hudsett12: Add, Button, x16 y96 w104 h23 gDopGui124, %MyText4%
Gui, hudsett12: Add, Button, x16 y120 w104 h23 gDopGui125, %MyText5%
Gui, hudsett12: Add, Button, x128 y24 w104 h23 gDopGui126, %MyText6%
Gui, hudsett12: Add, Button, x128 y48 w104 h23 gDopGui127, %MyText7%
Gui, hudsett12: Add, Button, x128 y72 w104 h23 gDopGui128, %MyText8%
Gui, hudsett12: Add, Button, x128 y96 w104 h23 gDopGui129, %MyText9%
Gui, hudsett12: Add, Button, x128 y120 w104 h23 gDopGui130, %MyText10%
Gui, hudsett12: Add, GroupBox, x256 y8 w235 h144 +Center, Свой бинд
Gui, hudsett12: Add, Button, x264 y24 w104 h23 g2DopGui121, %EditValue1%
Gui, hudsett12: Add, Button, x376 y24 w104 h23 g2DopGui122, %EditValue2%
Gui, hudsett12: Add, Button, x264 y48 w104 h23 g2DopGui123, %EditValue3%
Gui, hudsett12: Add, Button, x376 y48 w104 h23 g2DopGui124, %EditValue4%
Gui, hudsett12: Add, Button, x264 y72 w104 h23 g2DopGui125, %EditValue5%
Gui, hudsett12: Add, Button, x376 y72 w104 h23 g2DopGui126, %EditValue6%
Gui, hudsett12: Add, Button, x264 y96 w104 h23 g2DopGui127, %EditValue7%
Gui, hudsett12: Add, Button, x376 y96 w104 h23 g2DopGui128, %EditValue8%
Gui, hudsett12: Add, Button, x264 y120 w104 h23 g2DopGui129, %EditValue9%
Gui, hudsett12: Add, Button, x376 y120 w104 h23 g2DopGui130, %EditValue10%

Gui, hudsett12: Show, w498 h158, Window
Return

hudsett12GuiEscape:
hudsett12GuiClose:
    Gui, hudsett12: Destroy
    Gosub, sett
Return


;-------------------------------------------------------------------------------------------------------------------------------

DopGui11:
BindText1 = %MyText1%
PressN1 := 1
PressK1 := 1
Gui, hudsett1: Destroy
Gosub, sett
Return

DopGui12:
BindText1 = %MyText2%
PressN1 := 2
PressK1 := 1
Gui, hudsett1: Destroy
Gosub, sett
Return

DopGui13:
BindText1 = %MyText3%
PressN1 := 3
PressK1 := 1
Gui, hudsett1: Destroy
Gosub, sett
Return

DopGui14:
BindText1 = %MyText4%
PressN1 := 4
PressK1 := 1
Gui, hudsett1: Destroy
Gosub, sett
Return

DopGui15:
BindText1 = %MyText5%
PressN1 := 5
PressK1 := 1
Gui, hudsett1: Destroy
Gosub, sett
Return

DopGui16:
BindText1 = %MyText6%
PressN1 := 6
PressK1 := 1
Gui, hudsett1: Destroy
Gosub, sett
Return

DopGui17:
BindText1 = %MyText7%
PressN1 := 7
PressK1 := 1
Gui, hudsett1: Destroy
Gosub, sett
Return

DopGui18:
BindText1 = %MyText8%
PressN1 := 8
PressK1 := 1
Gui, hudsett1: Destroy
Gosub, sett
Return

DopGui19:
BindText1 = %MyText9%
PressN1 := 9
PressK1 := 1
Gui, hudsett1: Destroy
Gosub, sett
Return

DopGui20:
BindText1 = %MyText10%
PressN1 := 10
PressK1 := 1
Gui, hudsett1: Destroy
Gosub, sett
Return
;-------------------------------------------------------------------------------------------------------------------------------

DopGui21:
BindText2 = %MyText1%
PressN2 := 1
PressK2 := 1
Gui, hudsett2: Destroy
Gosub, sett
Return

DopGui22:
BindText2 = %MyText2%
PressN2 := 2
PressK2 := 1
Gui, hudsett2: Destroy
Gosub, sett
Return

DopGui23:
BindText2 = %MyText3%
PressN2 := 3
PressK2 := 1
Gui, hudsett2: Destroy
Gosub, sett
Return

DopGui24:
BindText2 = %MyText4%
PressN2 := 4
PressK2 := 1
Gui, hudsett2: Destroy
Gosub, sett
Return

DopGui25:
BindText2 = %MyText5%
PressN2 := 5
PressK2 := 1
Gui, hudsett2: Destroy
Gosub, sett
Return

DopGui26:
BindText2 = %MyText6%
PressN2 := 6
PressK2 := 1
Gui, hudsett2: Destroy
Gosub, sett
Return

DopGui27:
BindText2 = %MyText7%
PressN2 := 7
PressK2 := 1
Gui, hudsett2: Destroy
Gosub, sett
Return

DopGui28:
BindText2 = %MyText8%
PressN2 := 8
PressK2 := 1
Gui, hudsett2: Destroy
Gosub, sett
Return

DopGui29:
BindText2 = %MyText9%
PressN2 := 9
PressK2 := 1
Gui, hudsett2: Destroy
Gosub, sett
Return

DopGui30:
BindText2 = %MyText10%
PressN2 := 10
PressK2 := 1
Gui, hudsett2: Destroy
Gosub, sett
Return
;-------------------------------------------------------------------------------------------------------------------------------


DopGui31:
BindText3 = %MyText1%
PressN3 := 1
PressK3 := 1
Gui, hudsett3: Destroy
Gosub, sett
Return

DopGui32:
BindText3 = %MyText2%
PressN3 := 2
PressK3 := 1
Gui, hudsett3: Destroy
Gosub, sett
Return

DopGui33:
BindText3 = %MyText3%
PressN3 := 3
PressK3 := 1
Gui, hudsett3: Destroy
Gosub, sett
Return

DopGui34:
BindText3 = %MyText4%
PressN3 := 4
PressK3 := 1
Gui, hudsett3: Destroy
Gosub, sett
Return

DopGui35:
BindText3 = %MyText5%
PressN3 := 5
PressK3 := 1
Gui, hudsett3: Destroy
Gosub, sett
Return

DopGui36:
BindText3 = %MyText6%
PressN3 := 6
PressK3 := 1
Gui, hudsett3: Destroy
Gosub, sett
Return

DopGui37:
BindText3 = %MyText7%
PressN3 := 7
PressK3 := 1
Gui, hudsett3: Destroy
Gosub, sett
Return

DopGui38:
BindText3 = %MyText8%
PressN3 := 8
PressK3 := 1
Gui, hudsett3: Destroy
Gosub, sett
Return

DopGui39:
BindText3 = %MyText9%
PressN3 := 9
PressK3 := 1
Gui, hudsett3: Destroy
Gosub, sett
Return

DopGui40:
BindText3 = %MyText10%
PressN3 := 10
PressK3 := 1
Gui, hudsett3: Destroy
Gosub, sett
Return
;-------------------------------------------------------------------------------------------------------------------------------

DopGui41:
BindText4 = %MyText1%
PressN4 := 1
PressK4 := 1
Gui, hudsett4: Destroy
Gosub, sett
Return

DopGui42:
BindText4 = %MyText2%
PressN4 := 2
PressK4 := 1
Gui, hudsett4: Destroy
Gosub, sett
Return

DopGui43:
BindText4 = %MyText3%
PressN4 := 3
PressK4 := 1
Gui, hudsett4: Destroy
Gosub, sett
Return

DopGui44:
BindText4 = %MyText4%
PressN4 := 4
PressK4 := 1
Gui, hudsett4: Destroy
Gosub, sett
Return

DopGui45:
BindText4 = %MyText5%
PressN4 := 5
PressK4 := 1
Gui, hudsett4: Destroy
Gosub, sett
Return

DopGui46:
BindText4 = %MyText6%
PressN4 := 6
PressK4 := 1
Gui, hudsett4: Destroy
Gosub, sett
Return

DopGui47:
BindText4 = %MyText7%
PressN4 := 7
PressK4 := 1
Gui, hudsett4: Destroy
Gosub, sett
Return

DopGui48:
BindText4 = %MyText8%
PressN4 := 8
PressK4 := 1
Gui, hudsett4: Destroy
Gosub, sett
Return

DopGui49:
BindText4 = %MyText9%
PressN4 := 9
PressK4 := 1
Gui, hudsett4: Destroy
Gosub, sett
Return

DopGui50:
BindText4 = %MyText10%
PressN4 := 10
PressK4 := 1
Gui, hudsett4: Destroy
Gosub, sett
Return
;-------------------------------------------------------------------------------------------------------------------------------

DopGui51:
BindText5 = %MyText1%
PressN5 := 1
PressK5 := 1
Gui, hudsett5: Destroy
Gosub, sett
Return

DopGui52:
BindText5 = %MyText2%
PressN5 := 2
PressK5 := 1
Gui, hudsett5: Destroy
Gosub, sett
Return

DopGui53:
BindText5 = %MyText3%
PressN5 := 3
PressK5 := 1
Gui, hudsett5: Destroy
Gosub, sett
Return

DopGui54:
BindText5 = %MyText4%
PressN5 := 4
PressK5 := 1
Gui, hudsett5: Destroy
Gosub, sett
Return

DopGui55:
BindText5 = %MyText5%
PressN5 := 5
PressK5 := 1
Gui, hudsett5: Destroy
Gosub, sett
Return

DopGui56:
BindText5 = %MyText6%
PressN5 := 6
PressK5 := 1
Gui, hudsett5: Destroy
Gosub, sett
Return

DopGui57:
BindText5 = %MyText7%
PressN5 := 7
PressK5 := 1
Gui, hudsett5: Destroy
Gosub, sett
Return

DopGui58:
BindText5 = %MyText8%
PressN5 := 8
PressK5 := 1
Gui, hudsett5: Destroy
Gosub, sett
Return

DopGui59:
BindText5 = %MyText9%
PressN5 := 9
PressK5 := 1
Gui, hudsett5: Destroy
Gosub, sett
Return

DopGui60:
BindText5 = %MyText10%
PressN5 := 10
PressK5 := 1
Gui, hudsett5: Destroy
Gosub, sett
Return
;-------------------------------------------------------------------------------------------------------------------------------

DopGui61:
BindText6 = %MyText1%
PressN6 := 1
PressK6 := 1
Gui, hudsett6: Destroy
Gosub, sett
Return

DopGui62:
BindText6 = %MyText2%
PressN6 := 2
PressK6 := 1
Gui, hudsett6: Destroy
Gosub, sett
Return

DopGui63:
BindText6 = %MyText3%
PressN6 := 3
PressK6 := 1
Gui, hudsett6: Destroy
Gosub, sett
Return

DopGui64:
BindText6 = %MyText4%
PressN6 := 4
PressK6 := 1
Gui, hudsett6: Destroy
Gosub, sett
Return

DopGui65:
BindText6 = %MyText5%
PressN6 := 5
PressK6 := 1
Gui, hudsett6: Destroy
Gosub, sett
Return

DopGui66:
BindText6 = %MyText6%
PressN6 := 6
PressK6 := 1
Gui, hudsett6: Destroy
Gosub, sett
Return

DopGui67:
BindText6 = %MyText7%
PressN6 := 7
PressK6 := 1
Gui, hudsett6: Destroy
Gosub, sett
Return

DopGui68:
BindText6 = %MyText8%
PressN6 := 8
PressK6 := 1
Gui, hudsett6: Destroy
Gosub, sett
Return

DopGui69:
BindText6 = %MyText9%
PressN6 := 9
PressK6 := 1
Gui, hudsett6: Destroy
Gosub, sett
Return

DopGui70:
BindText6 = %MyText10%
PressN6 := 10
PressK6 := 1
Gui, hudsett6: Destroy
Gosub, sett
Return
;-------------------------------------------------------------------------------------------------------------------------------

DopGui71:
BindText7 = %MyText1%
PressN7 := 1
PressK7 := 1
Gui, hudsett7: Destroy
Gosub, sett
Return

DopGui72:
BindText7 = %MyText2%
PressN7 := 2
PressK7 := 1
Gui, hudsett7: Destroy
Gosub, sett
Return

DopGui73:
BindText7 = %MyText3%
PressN7 := 3
PressK7 := 1
Gui, hudsett7: Destroy
Gosub, sett
Return

DopGui74:
BindText7 = %MyText4%
PressN7 := 4
PressK7 := 1
Gui, hudsett7: Destroy
Gosub, sett
Return

DopGui75:
BindText7 = %MyText5%
PressN7 := 5
PressK7 := 1
Gui, hudsett7: Destroy
Gosub, sett
Return

DopGui76:
BindText7 = %MyText6%
PressN7 := 6
PressK7 := 1
Gui, hudsett7: Destroy
Gosub, sett
Return

DopGui77:
BindText7 = %MyText7%
PressN7 := 7
PressK7 := 1
Gui, hudsett7: Destroy
Gosub, sett
Return

DopGui78:
BindText7 = %MyText8%
PressN7 := 8
PressK7 := 1
Gui, hudsett7: Destroy
Gosub, sett
Return

DopGui79:
BindText7 = %MyText9%
PressN7 := 9
PressK7 := 1
Gui, hudsett7: Destroy
Gosub, sett
Return

DopGui80:
BindText7 = %MyText10%
PressN7 := 10
PressK7 := 1
Gui, hudsett7: Destroy
Gosub, sett
Return

;-------------------------------------------------------------------------------------------------------------------------------

DopGui81:
BindText8 = %MyText1%
PressN8 := 1
PressK8 := 1
Gui, hudsett8: Destroy
Gosub, sett
Return

DopGui82:
BindText8 = %MyText2%
PressN8 := 2
PressK8 := 1
Gui, hudsett8: Destroy
Gosub, sett
Return

DopGui83:
BindText8 = %MyText3%
PressN8 := 3
PressK8 := 1
Gui, hudsett8: Destroy
Gosub, sett
Return

DopGui84:
BindText8 = %MyText4%
PressN8 := 4
PressK8 := 1
Gui, hudsett8: Destroy
Gosub, sett
Return

DopGui85:
BindText4 = %MyText5%
PressN8 := 5
PressK8 := 1
Gui, hudsett8: Destroy
Gosub, sett
Return

DopGui86:
BindText8 = %MyText6%
PressN8 := 6
PressK8 := 1
Gui, hudsett8: Destroy
Gosub, sett
Return

DopGui87:
BindText8 = %MyText7%
PressN8 := 7
PressK8 := 1
Gui, hudsett8: Destroy
Gosub, sett
Return

DopGui88:
BindText8 = %MyText8%
PressN8 := 8
PressK8 := 1
Gui, hudsett8: Destroy
Gosub, sett
Return

DopGui89:
BindText8 = %MyText9%
PressN8 := 9
PressK8 := 1
Gui, hudsett8: Destroy
Gosub, sett
Return

DopGui90:
BindText8 = %MyText10%
PressN8 := 10
PressK8 := 1
Gui, hudsett8: Destroy
Gosub, sett
Return

;-------------------------------------------------------------------------------------------------------------------------------

DopGui91:
BindText9 = %MyText1%
PressN9 := 1
PressK9 := 1
Gui, hudsett9: Destroy
Gosub, sett
Return

DopGui92:
BindText9 = %MyText2%
PressN9 := 2
PressK9 := 1
Gui, hudsett9: Destroy
Gosub, sett
Return

DopGui93:
BindText9 = %MyText3%
PressN9 := 3
PressK9 := 1
Gui, hudsett9: Destroy
Gosub, sett
Return

DopGui94:
BindText9 = %MyText4%
PressN9 := 4
PressK9 := 1
Gui, hudsett9: Destroy
Gosub, sett
Return

DopGui95:
BindText9 = %MyText5%
PressN9 := 5
PressK9 := 1
Gui, hudsett9: Destroy
Gosub, sett
Return

DopGui96:
BindText9 = %MyText6%
PressN9 := 6
PressK9 := 1
Gui, hudsett9: Destroy
Gosub, sett
Return

DopGui97:
BindText9 = %MyText7%
PressN9 := 7
PressK9 := 1
Gui, hudsett9: Destroy
Gosub, sett
Return

DopGui98:
BindText9 = %MyText8%
PressN9 := 8
PressK9 := 1
Gui, hudsett9: Destroy
Gosub, sett
Return

DopGui99:
BindText9 = %MyText9%
PressN9 := 9
PressK9 := 1
Gui, hudsett9: Destroy
Gosub, sett
Return

DopGui100:
BindText9 = %MyText10%
PressN9 := 10
PressK9 := 1
Gui, hudsett9: Destroy
Gosub, sett
Return
;-------------------------------------------------------------------------------------------------------------------------------

DopGui101:
BindText10 = %MyText1%
PressN10 := 1
PressK10 := 1
Gui, hudsett10: Destroy
Gosub, sett
Return

DopGui102:
BindText10 = %MyText2%
PressN10 := 2
PressK10 := 1
Gui, hudsett10: Destroy
Gosub, sett
Return

DopGui103:
BindText10 = %MyText3%
PressN10 := 3
PressK10 := 1
Gui, hudsett10: Destroy
Gosub, sett
Return

DopGui104:
BindText10 = %MyText4%
PressN10 := 4
PressK10 := 1
Gui, hudsett10: Destroy
Gosub, sett
Return

DopGui105:
BindText10 = %MyText5%
PressN10 := 5
PressK10 := 1
Gui, hudsett10: Destroy
Gosub, sett
Return

DopGui106:
BindText10 = %MyText6%
PressN10 := 6
PressK10 := 1
Gui, hudsett10: Destroy
Gosub, sett
Return

DopGui107:
BindText10 = %MyText7%
PressN10 := 7
PressK10 := 1
Gui, hudsett10: Destroy
Gosub, sett
Return

DopGui108:
BindText10 = %MyText8%
PressN10 := 8
PressK10 := 1
Gui, hudsett10: Destroy
Gosub, sett
Return

DopGui109:
BindText10 = %MyText9%
PressN10 := 9
PressK10 := 1
Gui, hudsett10: Destroy
Gosub, sett
Return

DopGui110:
BindText10 = %MyText10%
PressN10 := 10
PressK10 := 1
Gui, hudsett10: Destroy
Gosub, sett
Return
;-------------------------------------------------------------------------------------------------------------------------------

DopGui111:
BindText11 = %MyText1%
PressN11 := 1
PressK11 := 1
Gui, hudsett11: Destroy
Gosub, sett
Return

DopGui112:
BindText11 = %MyText2%
PressN11 := 2
PressK11 := 1
Gui, hudsett11: Destroy
Gosub, sett
Return

DopGui113:
BindText11 = %MyText3%
PressN11 := 3
PressK11 := 1
Gui, hudsett11: Destroy
Gosub, sett
Return

DopGui114:
BindText11 = %MyText4%
PressN11 := 4
PressK11 := 1
Gui, hudsett11: Destroy
Gosub, sett
Return

DopGui115:
BindText11 = %MyText5%
PressN11 := 5
PressK11 := 1
Gui, hudsett11: Destroy
Gosub, sett
Return

DopGui116:
BindText11 = %MyText6%
PressN11 := 6
PressK11 := 1
Gui, hudsett11: Destroy
Gosub, sett
Return

DopGui117:
BindText11 = %MyText7%
PressN11 := 7
PressK11 := 1
Gui, hudsett11: Destroy
Gosub, sett
Return

DopGui118:
BindText11 = %MyText8%
PressN11 := 8
PressK11 := 1
Gui, hudsett11: Destroy
Gosub, sett
Return

DopGui119:
BindText11 = %MyText9%
PressN11 := 9
PressK11 := 1
Gui, hudsett11: Destroy
Gosub, sett
Return

DopGui120:
BindText11 = %MyText10%
PressN11 := 10
PressK11 := 1
Gui, hudsett11: Destroy
Gosub, sett
Return
;-------------------------------------------------------------------------------------------------------------------------------

DopGui121:
BindText12 = %MyText1%
PressN12 := 1
PressK12 := 1
Gui, hudsett12: Destroy
Gosub, sett
Return

DopGui122:
BindText12 = %MyText2%
PressN12 := 2
PressK12 := 1
Gui, hudsett12: Destroy
Gosub, sett
Return

DopGui123:
BindText12 = %MyText3%
PressN12 := 3
PressK12 := 1
Gui, hudsett12: Destroy
Gosub, sett
Return

DopGui124:
BindText12 = %MyText4%
PressN12 := 4
PressK12 := 1
Gui, hudsett12: Destroy
Gosub, sett
Return

DopGui125:
BindText12 = %MyText5%
PressN12 := 5
PressK12 := 1
Gui, hudsett12: Destroy
Gosub, sett
Return

DopGui126:
BindText12 = %MyText6%
PressN12 := 6
PressK12 := 1
Gui, hudsett12: Destroy
Gosub, sett
Return

DopGui127:
BindText12 = %MyText7%
PressN12 := 7
PressK12 := 1
Gui, hudsett12: Destroy
Gosub, sett
Return

DopGui128:
BindText12 = %MyText8%
PressN12 := 8
PressK12 := 1
Gui, hudsett12: Destroy
Gosub, sett
Return

DopGui129:
BindText12 = %MyText9%
PressN12 := 9
PressK12 := 1
Gui, hudsett12: Destroy
Gosub, sett
Return

DopGui130:
BindText12 = %MyText10%
PressN12 := 10
PressK12 := 1
Gui, hudsett12: Destroy
Gosub, sett
Return
;-------------------------------------------------------------------

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
2DopGui11:
BindText1 = %EditValue1%
PressN1 := 1
PressK1 := 2
Gui, hudsett1: Destroy
Gosub, sett
Return

2DopGui12:
BindText1 = %EditValue2%
PressN1 := 2
PressK1 := 2
Gui, hudsett1: Destroy
Gosub, sett
Return

2DopGui13:
BindText1 = %EditValue3%
PressN1 := 3
PressK1 := 2
Gui, hudsett1: Destroy
Gosub, sett
Return

2DopGui14:
BindText1 = %EditValue4%
PressN1 := 4
PressK1 := 2
Gui, hudsett1: Destroy
Gosub, sett
Return

2DopGui15:
BindText1 = %EditValue5%
PressN1 := 5
PressK1 := 2
Gui, hudsett1: Destroy
Gosub, sett
Return

2DopGui16:
BindText1 = %EditValue6%
PressN1 := 6
PressK1 := 2
Gui, hudsett1: Destroy
Gosub, sett
Return

2DopGui17:
BindText1 = %EditValue7%
PressN1 := 7
PressK1 := 2
Gui, hudsett1: Destroy
Gosub, sett
Return

2DopGui18:
BindText1 = %EditValue8%
PressN1 := 8
PressK1 := 2
Gui, hudsett1: Destroy
Gosub, sett
Return

2DopGui19:
BindText1 = %EditValue9%
PressN1 := 9
PressK1 := 2
Gui, hudsett1: Destroy
Gosub, sett
Return

2DopGui20:
BindText1 = %EditValue10%
PressN1 := 10
PressK1 := 2
Gui, hudsett1: Destroy
Gosub, sett
Return
;-------------------------------------------------------------------------------------------------------------------------------

2DopGui21:
BindText2 = %EditValue1%
PressN2 := 1
PressK2 := 2
Gui, hudsett2: Destroy
Gosub, sett
Return

2DopGui22:
BindText2 = %EditValue2%
PressN2 := 2
PressK2 := 2
Gui, hudsett2: Destroy
Gosub, sett
Return

2DopGui23:
BindText2 = %EditValue3%
PressN2 := 3
PressK2 := 2
Gui, hudsett2: Destroy
Gosub, sett
Return

2DopGui24:
BindText2 = %EditValue4%
PressN2 := 4
PressK2 := 2
Gui, hudsett2: Destroy
Gosub, sett
Return

2DopGui25:
BindText2 = %EditValue5%
PressN2 := 5
PressK2 := 2
Gui, hudsett2: Destroy
Gosub, sett
Return

2DopGui26:
BindText2 = %EditValue6%
PressN2 := 6
PressK2 := 2
Gui, hudsett2: Destroy
Gosub, sett
Return

2DopGui27:
BindText2 = %EditValue7%
PressN2 := 7
PressK2 := 2
Gui, hudsett2: Destroy
Gosub, sett
Return

2DopGui28:
BindText2 = %EditValue8%
PressN2 := 8
PressK2 := 2
Gui, hudsett2: Destroy
Gosub, sett
Return

2DopGui29:
BindText2 = %EditValue9%
PressN2 := 9
PressK2 := 2
Gui, hudsett2: Destroy
Gosub, sett
Return

2DopGui30:
BindText2 = %EditValue10%
PressN2 := 10
PressK2 := 2
Gui, hudsett2: Destroy
Gosub, sett
Return
;-------------------------------------------------------------------------------------------------------------------------------


2DopGui31:
BindText3 = %EditValue1%
PressN3 := 1
PressK3 := 2
Gui, hudsett3: Destroy
Gosub, sett
Return

2DopGui32:
BindText3 = %EditValue2%
PressN3 := 2
PressK3 := 2
Gui, hudsett3: Destroy
Gosub, sett
Return

2DopGui33:
BindText3 = %EditValue3%
PressN3 := 3
PressK3 := 2
Gui, hudsett3: Destroy
Gosub, sett
Return

2DopGui34:
BindText3 = %EditValue4%
PressN3 := 4
PressK3 := 2
Gui, hudsett3: Destroy
Gosub, sett
Return

2DopGui35:
BindText3 = %EditValue5%
PressN3 := 5
PressK3 := 2
Gui, hudsett3: Destroy
Gosub, sett
Return

2DopGui36:
BindText3 = %EditValue6%
PressN3 := 6
PressK3 := 2
Gui, hudsett3: Destroy
Gosub, sett
Return

2DopGui37:
BindText3 = %EditValue7%
PressN3 := 7
PressK3 := 2
Gui, hudsett3: Destroy
Gosub, sett
Return

2DopGui38:
BindText3 = %EditValue8%
PressN3 := 8
PressK3 := 2
Gui, hudsett3: Destroy
Gosub, sett
Return

2DopGui39:
BindText3 = %EditValue9%
PressN3 := 9
PressK3 := 2
Gui, hudsett3: Destroy
Gosub, sett
Return

2DopGui40:
BindText3 = %EditValue10%
PressN3 := 10
PressK3 := 2
Gui, hudsett3: Destroy
Gosub, sett
Return
;-------------------------------------------------------------------------------------------------------------------------------

2DopGui41:
BindText4 = %EditValue1%
PressN4 := 1
PressK4 := 2
Gui, hudsett4: Destroy
Gosub, sett
Return

2DopGui42:
BindText4 = %EditValue2%
PressN4 := 2
PressK4 := 2
Gui, hudsett4: Destroy
Gosub, sett
Return

2DopGui43:
BindText4 = %EditValue3%
PressN4 := 3
PressK4 := 2
Gui, hudsett4: Destroy
Gosub, sett
Return

2DopGui44:
BindText4 = %EditValue4%
PressN4 := 4
PressK4 := 2
Gui, hudsett4: Destroy
Gosub, sett
Return

2DopGui45:
BindText4 = %EditValue5%
PressN4 := 5
PressK4 := 2
Gui, hudsett4: Destroy
Gosub, sett
Return

2DopGui46:
BindText4 = %EditValue6%
PressN4 := 6
PressK4 := 2
Gui, hudsett4: Destroy
Gosub, sett
Return

2DopGui47:
BindText4 = %EditValue7%
PressN4 := 7
PressK4 := 2
Gui, hudsett4: Destroy
Gosub, sett
Return

2DopGui48:
BindText4 = %EditValue8%
PressN4 := 8
PressK4 := 2
Gui, hudsett4: Destroy
Gosub, sett
Return

2DopGui49:
BindText4 = %EditValue9%
PressN4 := 9
PressK4 := 2
Gui, hudsett4: Destroy
Gosub, sett
Return

2DopGui50:
BindText4 = %EditValue10%
PressN4 := 10
PressK4 := 2
Gui, hudsett4: Destroy
Gosub, sett
Return
;-------------------------------------------------------------------------------------------------------------------------------

2DopGui51:
BindText5 = %EditValue1%
PressN5 := 1
PressK5 := 2
Gui, hudsett5: Destroy
Gosub, sett
Return

2DopGui52:
BindText5 = %EditValue2%
PressN5 := 2
PressK5 := 2
Gui, hudsett5: Destroy
Gosub, sett
Return

2DopGui53:
BindText5 = %EditValue3%
PressN5 := 3
PressK5 := 2
Gui, hudsett5: Destroy
Gosub, sett
Return

2DopGui54:
BindText5 = %EditValue4%
PressN5 := 4
PressK5 := 2
Gui, hudsett5: Destroy
Gosub, sett
Return

2DopGui55:
BindText5 = %EditValue5%
PressN5 := 5
PressK5 := 2
Gui, hudsett5: Destroy
Gosub, sett
Return

2DopGui56:
BindText5 = %EditValue6%
PressN5 := 6
PressK5 := 2
Gui, hudsett5: Destroy
Gosub, sett
Return

2DopGui57:
BindText5 = %EditValue7%
PressN5 := 7
PressK5 := 2
Gui, hudsett5: Destroy
Gosub, sett
Return

2DopGui58:
BindText5 = %EditValue8%
PressN5 := 8
PressK5 := 2
Gui, hudsett5: Destroy
Gosub, sett
Return

2DopGui59:
BindText5 = %EditValue9%
PressN5 := 9
PressK5 := 2
Gui, hudsett5: Destroy
Gosub, sett
Return

2DopGui60:
BindText5 = %EditValue10%
PressN5 := 10
PressK5 := 2
Gui, hudsett5: Destroy
Gosub, sett
Return
;-------------------------------------------------------------------------------------------------------------------------------

2DopGui61:
BindText6 = %EditValue1%
PressN6 := 1
PressK6 := 2
Gui, hudsett6: Destroy
Gosub, sett
Return

2DopGui62:
BindText6 = %EditValue2%
PressN6 := 2
PressK6 := 2
Gui, hudsett6: Destroy
Gosub, sett
Return

2DopGui63:
BindText6 = %EditValue3%
PressN6 := 3
PressK6 := 2
Gui, hudsett6: Destroy
Gosub, sett
Return

2DopGui64:
BindText6 = %EditValue4%
PressN6 := 4
PressK6 := 2
Gui, hudsett6: Destroy
Gosub, sett
Return

2DopGui65:
BindText6 = %EditValue5%
PressN6 := 5
PressK6 := 2
Gui, hudsett6: Destroy
Gosub, sett
Return

2DopGui66:
BindText6 = %EditValue6%
PressN6 := 6
PressK6 := 2
Gui, hudsett6: Destroy
Gosub, sett
Return

2DopGui67:
BindText6 = %EditValue7%
PressN6 := 7
PressK6 := 2
Gui, hudsett6: Destroy
Gosub, sett
Return

2DopGui68:
BindText6 = %EditValue8%
PressN6 := 8
PressK6 := 2
Gui, hudsett6: Destroy
Gosub, sett
Return

2DopGui69:
BindText6 = %EditValue9%
PressN6 := 9
PressK6 := 2
Gui, hudsett6: Destroy
Gosub, sett
Return

2DopGui70:
BindText6 = %EditValue10%
PressN6 := 10
PressK6 := 2
Gui, hudsett6: Destroy
Gosub, sett
Return
;-------------------------------------------------------------------------------------------------------------------------------

2DopGui71:
BindText7 = %EditValue1%
PressN7 := 1
PressK7 := 2
Gui, hudsett7: Destroy
Gosub, sett
Return

2DopGui72:
BindText7 = %EditValue2%
PressN7 := 2
PressK7 := 2
Gui, hudsett7: Destroy
Gosub, sett
Return

2DopGui73:
BindText7 = %EditValue3%
PressN7 := 3
PressK7 := 2
Gui, hudsett7: Destroy
Gosub, sett
Return

2DopGui74:
BindText7 = %EditValue4%
PressN7 := 4
PressK7 := 2
Gui, hudsett7: Destroy
Gosub, sett
Return

2DopGui75:
BindText7 = %EditValue5%
PressN7 := 5
PressK7 := 2
Gui, hudsett7: Destroy
Gosub, sett
Return

2DopGui76:
BindText7 = %EditValue6%
PressN7 := 6
PressK7 := 2
Gui, hudsett7: Destroy
Gosub, sett
Return

2DopGui77:
BindText7 = %EditValue7%
PressN7 := 7
PressK7 := 2
Gui, hudsett7: Destroy
Gosub, sett
Return

2DopGui78:
BindText7 = %EditValue8%
PressN7 := 8
PressK7 := 2
Gui, hudsett7: Destroy
Gosub, sett
Return

2DopGui79:
BindText7 = %EditValue9%
PressN7 := 9
PressK7 := 2
Gui, hudsett7: Destroy
Gosub, sett
Return

2DopGui80:
BindText7 = %EditValue10%
PressN7 := 10
PressK7 := 2
Gui, hudsett7: Destroy
Gosub, sett
Return

;-------------------------------------------------------------------------------------------------------------------------------

2DopGui81:
BindText8 = %EditValue1%
PressN8 := 1
PressK8 := 2
Gui, hudsett8: Destroy
Gosub, sett
Return

2DopGui82:
BindText8 = %EditValue2%
PressN8 := 2
PressK8 := 2
Gui, hudsett8: Destroy
Gosub, sett
Return

2DopGui83:
BindText8 = %EditValue3%
PressN8 := 3
PressK8 := 2
Gui, hudsett8: Destroy
Gosub, sett
Return

2DopGui84:
BindText8 = %EditValue4%
PressN8 := 4
PressK8 := 2
Gui, hudsett8: Destroy
Gosub, sett
Return

2DopGui85:
BindText4 = %EditValue5%
PressN8 := 5
PressK8 := 2
Gui, hudsett8: Destroy
Gosub, sett
Return

2DopGui86:
BindText8 = %EditValue6%
PressN8 := 6
PressK8 := 2
Gui, hudsett8: Destroy
Gosub, sett
Return

2DopGui87:
BindText8 = %EditValue7%
PressN8 := 7
PressK8 := 2
Gui, hudsett8: Destroy
Gosub, sett
Return

2DopGui88:
BindText8 = %EditValue8%
PressN8 := 8
PressK8 := 2
Gui, hudsett8: Destroy
Gosub, sett
Return

2DopGui89:
BindText8 = %EditValue9%
PressN8 := 9
PressK8 := 2
Gui, hudsett8: Destroy
Gosub, sett
Return

2DopGui90:
BindText8 = %EditValue10%
PressN8 := 10
PressK8 := 2
Gui, hudsett8: Destroy
Gosub, sett
Return

;-------------------------------------------------------------------------------------------------------------------------------

2DopGui91:
BindText9 = %EditValue1%
PressN9 := 1
PressK9 := 2
Gui, hudsett9: Destroy
Gosub, sett
Return

2DopGui92:
BindText9 = %EditValue2%
PressN9 := 2
PressK9 := 2
Gui, hudsett9: Destroy
Gosub, sett
Return

2DopGui93:
BindText9 = %EditValue3%
PressN9 := 3
PressK9 := 2
Gui, hudsett9: Destroy
Gosub, sett
Return

2DopGui94:
BindText9 = %EditValue4%
PressN9 := 4
PressK9 := 2
Gui, hudsett9: Destroy
Gosub, sett
Return

2DopGui95:
BindText9 = %EditValue5%
PressN9 := 5
PressK9 := 2
Gui, hudsett9: Destroy
Gosub, sett
Return

2DopGui96:
BindText9 = %EditValue6%
PressN9 := 6
PressK9 := 2
Gui, hudsett9: Destroy
Gosub, sett
Return

2DopGui97:
BindText9 = %EditValue7%
PressN9 := 7
PressK9 := 2
Gui, hudsett9: Destroy
Gosub, sett
Return

2DopGui98:
BindText9 = %EditValue8%
PressN9 := 8
PressK9 := 2
Gui, hudsett9: Destroy
Gosub, sett
Return

2DopGui99:
BindText9 = %EditValue9%
PressN9 := 9
PressK9 := 2
Gui, hudsett9: Destroy
Gosub, sett
Return

2DopGui100:
BindText9 = %EditValue10%
PressN9 := 10
PressK9 := 2
Gui, hudsett9: Destroy
Gosub, sett
Return
;-------------------------------------------------------------------------------------------------------------------------------

2DopGui101:
BindText10 = %EditValue1%
PressN10 := 1
PressK10 := 2
Gui, hudsett10: Destroy
Gosub, sett
Return

2DopGui102:
BindText10 = %EditValue2%
PressN10 := 2
PressK10 := 2
Gui, hudsett10: Destroy
Gosub, sett
Return

2DopGui103:
BindText10 = %EditValue3%
PressN10 := 3
PressK10 := 2
Gui, hudsett10: Destroy
Gosub, sett
Return

2DopGui104:
BindText10 = %EditValue4%
PressN10 := 4
PressK10 := 2
Gui, hudsett10: Destroy
Gosub, sett
Return

2DopGui105:
BindText10 = %EditValue5%
PressN10 := 5
PressK10 := 2
Gui, hudsett10: Destroy
Gosub, sett
Return

2DopGui106:
BindText10 = %EditValue6%
PressN10 := 6
PressK10 := 2
Gui, hudsett10: Destroy
Gosub, sett
Return

2DopGui107:
BindText10 = %EditValue7%
PressN10 := 7
PressK10 := 2
Gui, hudsett10: Destroy
Gosub, sett
Return

2DopGui108:
BindText10 = %EditValue8%
PressN10 := 8
PressK10 := 2
Gui, hudsett10: Destroy
Gosub, sett
Return

2DopGui109:
BindText10 = %EditValue9%
PressN10 := 9
PressK10 := 2
Gui, hudsett10: Destroy
Gosub, sett
Return

2DopGui110:
BindText10 = %EditValue10%
PressN10 := 10
PressK10 := 2
Gui, hudsett10: Destroy
Gosub, sett
Return
;-------------------------------------------------------------------------------------------------------------------------------

2DopGui111:
BindText11 = %EditValue1%
PressN11 := 1
PressK11 := 2
Gui, hudsett11: Destroy
Gosub, sett
Return

2DopGui112:
BindText11 = %EditValue2%
PressN11 := 2
PressK11 := 2
Gui, hudsett11: Destroy
Gosub, sett
Return

2DopGui113:
BindText11 = %EditValue3%
PressN11 := 3
PressK11 := 2
Gui, hudsett11: Destroy
Gosub, sett
Return

2DopGui114:
BindText11 = %EditValue4%
PressN11 := 4
PressK11 := 2
Gui, hudsett11: Destroy
Gosub, sett
Return

2DopGui115:
BindText11 = %EditValue5%
PressN11 := 5
PressK11 := 2
Gui, hudsett11: Destroy
Gosub, sett
Return

2DopGui116:
BindText11 = %EditValue6%
PressN11 := 6
PressK11 := 2
Gui, hudsett11: Destroy
Gosub, sett
Return

2DopGui117:
BindText11 = %EditValue7%
PressN11 := 7
PressK11 := 2
Gui, hudsett11: Destroy
Gosub, sett
Return

2DopGui118:
BindText11 = %EditValue8%
PressN11 := 8
PressK11 := 2
Gui, hudsett11: Destroy
Gosub, sett
Return

2DopGui119:
BindText11 = %EditValue9%
PressN11 := 9
PressK11 := 2
Gui, hudsett11: Destroy
Gosub, sett
Return

2DopGui120:
BindText11 = %EditValue10%
PressN11 := 10
PressK11 := 2
Gui, hudsett11: Destroy
Gosub, sett
Return
;-------------------------------------------------------------------------------------------------------------------------------

2DopGui121:
BindText12 = %EditValue1%
PressN12 := 1
PressK12 := 2
Gui, hudsett12: Destroy
Gosub, sett
Return

2DopGui122:
BindText12 = %EditValue2%
PressN12 := 2
PressK12 := 2
Gui, hudsett12: Destroy
Gosub, sett
Return

2DopGui123:
BindText12 = %EditValue3%
PressN12 := 3
PressK12 := 2
Gui, hudsett12: Destroy
Gosub, sett
Return

2DopGui124:
BindText12 = %EditValue4%
PressN12 := 4
PressK12 := 2
Gui, hudsett12: Destroy
Gosub, sett
Return

2DopGui125:
BindText12 = %EditValue5%
PressN12 := 5
PressK12 := 2
Gui, hudsett12: Destroy
Gosub, sett
Return

2DopGui126:
BindText12 = %EditValue6%
PressN12 := 6
PressK12 := 2
Gui, hudsett12: Destroy
Gosub, sett
Return

2DopGui127:
BindText12 = %EditValue7%
PressN12 := 7
PressK12 := 2
Gui, hudsett12: Destroy
Gosub, sett
Return

2DopGui128:
BindText12 = %EditValue8%
PressN12 := 8
PressK12 := 2
Gui, hudsett12: Destroy
Gosub, sett
Return

2DopGui129:
BindText12 = %EditValue9%
PressN12 := 9
PressK12 := 2
Gui, hudsett12: Destroy
Gosub, sett
Return

2DopGui130:
BindText12 = %EditValue10%
PressN12 := 10
PressK12 := 2
Gui, hudsett12: Destroy
Gosub, sett
Return
;-------------------------------------------------------------------