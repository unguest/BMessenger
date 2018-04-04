@echo off
title MSGBatch Installer Ver:1.0.0
color b




if NOT exist C:\Users\Public\Chat goto :1
if EXIST C:\Users\Public\Chat goto :2

:1
md C:\Users\Public\Chat
echo 9%
goto :2

:2
if NOT exist C:\Users\Public\Chat\Program_Files goto :3
if EXIST C:\Users\Public\Chat\Program_Files goto :4
.
:3
md C:\Users\Public\Chat\Program_Files
echo 18%
goto :4

:4
if NOT exist C:\Users\Public\Chat\Users goto :5
if EXIST C:\Users\Public\Chat\Users  goto :6

:5
md C:\Users\Public\Chat\Users
echo 27%
goto :6

:6
if NOT exist  C:\Users\Public\Chat\Program_Files\chatroom.chatfile goto :7
if EXIST C:\Users\Public\Chat\Program_Files\chatroom.chatfile goto :8

:7
echo >>C:\Users\Public\Chat\Program_Files\chatroom.chatfile
echo 36%
goto :8

:8
if NOT exist C:\Users\Public\Chat\Program_Files\clear.cmd goto :9
if EXIST C:\Users\Public\Chat\Program_Files\clear.cmd goto :10

:9
echo @echo off >>C:\Users\Public\Chat\Program_Files\clear.cmd
echo :start >>C:\Users\Public\Chat\Program_Files\clear.cmd
echo echo >>C:\Users\Public\chat\Program_Files\chatroom.chatfile >>C:\Users\Public\Chat\Program_Files\clear.cmd
echo  >>C:\Users\Public\Chat\Program_Files\clear.cmd
echo 75%
goto :10

:10
if NOT exist C:\Users\Public\Chat\Program_Files\msgbox.cmd goto :11
if EXIST C:\Users\Public\Chat\Program_Files\msgbox.cmd goto :12

:11
echo @echo off>>C:\Users\Public\Chat\Program_Files\msgbox.cmd
echo cls>>C:\Users\Public\Chat\Program_Files\msgbox.cmd
echo color 0b>>C:\Users\Public\Chat\Program_Files\msgbox.cmd
echo cls>>C:\Users\Public\Chat\Program_Files\msgbox.cmd
echo title Message Box>>C:\Users\Public\Chat\Program_Files\msgbox.cmd
echo :home>>C:\Users\Public\Chat\Program_Files\msgbox.cmd
echo cls>>C:\Users\Public\Chat\Program_Files\msgbox.cmd
echo findstr /v "sdlkfjsdlkfs98dfu9sd8f6ysd954" C:\Users\Public\Chat\Program_Files\chatroom.chatfile>>C:\Users\Public\Chat\Program_Files\msgbox.cmd
echo ping localhost -n 2 >nul>>C:\Users\Public\Chat\Program_Files\msgbox.cmd
echo goto home>>C:\Users\Public\Chat\Program_Files\msgbox.cmd
echo 100%
pause
goto 12

:12
exit /b
