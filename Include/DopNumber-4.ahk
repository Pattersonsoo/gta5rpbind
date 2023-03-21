Return

;----------------------------------------------------------------------------------------------------------------------------------------------------

hudsett1:
Gui, sett: Destroy
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
Gui, sett: Destroy
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

Gui, hudsett2: Show, w498 h158, %A_Space%
Return

hudsett2GuiEscape:
hudsett2GuiClose:
    Gui, hudsett2: Destroy
    Gosub, sett
Return
;-------------------------------------------------------------------------------------------------------------------------------

hudsett3:
Gui, sett: Destroy
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

Gui, hudsett3: Show, w498 h158, %A_Space%
Return

hudsett3GuiEscape:
hudsett3GuiClose:
    Gui, hudsett3: Destroy
    Gosub, sett
Return
;-------------------------------------------------------------------------------------------------------------------------------

hudsett4:
Gui, sett: Destroy
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

Gui, hudsett4: Show, w498 h158, %A_Space%
Return

hudsett4GuiEscape:
hudsett4GuiClose:
    Gui, hudsett4: Destroy
    Gosub, sett
Return

hudsett5:
Gui, sett: Destroy
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

Gui, hudsett5: Show, w498 h158, %A_Space%
Return

hudsett5GuiEscape:
hudsett5GuiClose:
    Gui, hudsett5: Destroy
    Gosub, sett
Return

hudsett6:
Gui, sett: Destroy
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

Gui, hudsett6: Show, w498 h158, %A_Space%
Return

hudsett6GuiEscape:
hudsett6GuiClose:
    Gui, hudsett6: Destroy
    Gosub, sett
Return

hudsett7:
Gui, sett: Destroy
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

Gui, hudsett7: Show, w498 h158, %A_Space%
Return

hudsett7GuiEscape:
hudsett7GuiClose:
    Gui, hudsett7: Destroy
    Gosub, sett
Return

hudsett8:
Gui, sett: Destroy
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

Gui, hudsett8: Show, w498 h158, %A_Space%
Return

hudsett8GuiEscape:
hudsett8GuiClose:
    Gui, hudsett8: Destroy
    Gosub, sett
Return

hudsett9:
Gui, sett: Destroy
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

Gui, hudsett9: Show, w498 h158, %A_Space%
Return

hudsett9GuiEscape:
hudsett9GuiClose:
    Gui, hudsett9: Destroy
    Gosub, sett
Return

hudsett10:
Gui, sett: Destroy
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

Gui, hudsett10: Show, w498 h158, %A_Space%
Return

hudsett10GuiEscape:
hudsett10GuiClose:
    Gui, hudsett10: Destroy
    Gosub, sett
Return

hudsett11:
Gui, sett: Destroy
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

Gui, hudsett11: Show, w498 h158, %A_Space%
Return

hudsett11GuiEscape:
hudsett11GuiClose:
    Gui, hudsett11: Destroy
    Gosub, sett
Return

hudsett12:
Gui, sett: Destroy
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

Gui, hudsett12: Show, w498 h158, %A_Space%
Return

hudsett12GuiEscape:
hudsett12GuiClose:
    Gui, hudsett12: Destroy
    Gosub, sett
Return

;-------------------------------------------------------------------------------------------------------------------------------

DopGui11:
Gui, Submit, NoHide
BindText1 = %MyText1%
PressN1 := 1
PressK1 := 1
IniWrite, %PressN1%, %A_WorkingDir%\setting_console.ini, Setup, PressN123
Gui, hudsett1: Destroy
Gosub, sett
Return

DopGui12:
Gui, Submit, NoHide
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