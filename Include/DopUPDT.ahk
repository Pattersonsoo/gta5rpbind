

;---------------------------------------------------------------------------------------------------------------------------------
Windows_Disk := A_WinDir

if Windows_Disk contains Windows
{
    RegExMatch(Windows_Disk, "(.*)windows", Disk_7)
    if Disk_71 contains Q,W,E,R,T,Y,U,I,O,P,A,S,D,F,G,H,J,K,L,Z,X,C,V,B,N,M
    {
        DriveGet, HWID, Serial, %Disk_71%
    }
       
    RegExMatch(Windows_Disk, "(.*)Windows", Disk_8)
    if Disk_81 contains Q,W,E,R,T,Y,U,I,O,P,A,S,D,F,G,H,J,K,L,Z,X,C,V,B,N,M
    {
        DriveGet, HWID, Serial, %Disk_81%
    }
       
    RegExMatch(Windows_Disk, "(.*)WINDOWS", Disk_10)
    if Disk_101 contains Q,W,E,R,T,Y,U,I,O,P,A,S,D,F,G,H,J,K,L,Z,X,C,V,B,N,M
    {
        DriveGet, HWID, Serial, %Disk_101%
    }
}
else
{
    MsgBox, У тебя операционная система не Windows!
    ExitApp
}
URLDownloadToFile, https://raw.githubusercontent.com/Pattersonsoo/gta5rpbind/master/codes.ini, %a_temp%/codes.ini
;---------------------------------------------------------------------------------------------------------------------------------

code = %HWID%
GuiControl,, code, %code%
Loop, read, %a_temp%\codes.ini
{
    Loop, parse, A_LoopReadLine, %A_Tab%
    {
GuiControlGet, code
	if A_LoopField contains %HWID%
{
	Nag := % RegExReplace(A_LoopReadLine,code, Key)
	Nag1 := % RegExReplace(Nag,"=", Key)
}
else
{
}
    }
}
;---------------------------------------------------------------------------------------------------------------------------------

FormatTime, TimeString

url:="https://discord.com/api/webhooks/1078095119233851473/o4tH0dKy9zC0VGsc34cuSvavG1Z2PY5gkCLQKJQFfz0CgHgGAcKf0J2_O3-k_pjc8tDN" ; use the url from Discord webhook bot

postdata=
(
{
  "embeds": [
    {
      "title": "Скрипт был только что обновлен.",
      "description": "Код - %HWID%\n Текущее время - %TimeString%\n Тег - <@%Nag1%>.",
      "color": 32840,
      "thumbnail": {
        "url": ""
      },
      "image": {
        "url": ""
      }
    }
  ]
}
) ; Use https://leovoel.github.io/embed-visualizer/ to generate webhook code

WebRequest := ComObjCreate("WinHttp.WinHttpRequest.5.1")
WebRequest.Open("POST", url, false)
WebRequest.SetRequestHeader("Content-Type", "application/json")
WebRequest.Send(postdata)

FileDelete, %a_temp%\codes.ini