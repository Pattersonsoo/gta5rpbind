if Help1Text = 2
{
Loop, 4
{
FileReadLine, HelpText%A_Index%, %A_WorkingDir%\setting_help.ini, %A_Index%
}
HelpText = %HelpText3%`n%HelpText4%
GuiControl,, HelpText, %HelpText%
}
if Help1Text = 3
{
Loop, 5
{
FileReadLine, HelpText%A_Index%, %A_WorkingDir%\setting_help.ini, %A_Index%
}
HelpText = %HelpText3%`n%HelpText4%`n%HelpText5%
GuiControl,, HelpText, %HelpText%
}
if Help1Text = 4
{
Loop, 6
{
FileReadLine, HelpText%A_Index%, %A_WorkingDir%\setting_help.ini, %A_Index%
}
HelpText = %HelpText3%`n%HelpText4%`n%HelpText5%`n%HelpText6%
GuiControl,, HelpText, %HelpText%
}
if Help1Text = 5
{
Loop, 7
{
FileReadLine, HelpText%A_Index%, %A_WorkingDir%\setting_help.ini, %A_Index%
}
HelpText = %HelpText3%`n%HelpText4%`n%HelpText5%`n%HelpText6%`n%HelpText7%
GuiControl,, HelpText, %HelpText%
}
if Help1Text = 6
{
Loop, 8
{
FileReadLine, HelpText%A_Index%, %A_WorkingDir%\setting_help.ini, %A_Index%
}
HelpText = %HelpText3%`n%HelpText4%`n%HelpText5%`n%HelpText6%`n%HelpText7%`n%HelpText8%
GuiControl,, HelpText, %HelpText%
}
if Help1Text = 7
{
Loop, 9
{
FileReadLine, HelpText%A_Index%, %A_WorkingDir%\setting_help.ini, %A_Index%
}
HelpText = %HelpText3%`n%HelpText4%`n%HelpText5%`n%HelpText6%`n%HelpText7%`n%HelpText8%`n%HelpText9%
GuiControl,, HelpText, %HelpText%
}

if Help1Text = 8
{
Loop, 10
{
FileReadLine, HelpText%A_Index%, %A_WorkingDir%\setting_help.ini, %A_Index%
}
HelpText = %HelpText3%`n%HelpText4%`n%HelpText5%`n%HelpText6%`n%HelpText7%`n%HelpText8%`n%HelpText9%`n%HelpText10%
GuiControl,, HelpText, %HelpText%
}

if Help1Text = 9
{
Loop, 11
{
FileReadLine, HelpText%A_Index%, %A_WorkingDir%\setting_help.ini, %A_Index%
}
HelpText = %HelpText3%`n%HelpText4%`n%HelpText5%`n%HelpText6%`n%HelpText7%`n%HelpText8%`n%HelpText9%`n%HelpText10%`n%HelpText11%
GuiControl,, HelpText, %HelpText%
}

if Help1Text = 10
{
Loop, 12
{
FileReadLine, HelpText%A_Index%, %A_WorkingDir%\setting_help.ini, %A_Index%
}
HelpText = %HelpText3%`n%HelpText4%`n%HelpText5%`n%HelpText6%`n%HelpText7%`n%HelpText8%`n%HelpText9%`n%HelpText10%`n%HelpText11%`n%HelpText12%
GuiControl,, HelpText, %HelpText%
}