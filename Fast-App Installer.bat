@echo off
chcp 65001 > nul
setlocal enabledelayedexpansion
color 0

:menu
cls
echo ============================================================
echo             APPLICATION INSTALLATION MENU - TOTAL 30
echo ============================================================
echo [01] Google Chrome         [16] OBS Studio
echo [02] Mozilla Firefox       [17] HandBrake
echo [03] Microsoft Edge        [18] GIMP
echo [04] Opera Browser         [19] Inkscape
echo [05] Microsoft Office      [20] Blender
echo [06] LibreOffice           [21] WhatsApp
echo [07] Visual Studio Code    [22] Discord
echo [08] Notepad++             [23] Telegram
echo [09] Sublime Text          [24] Zoom
echo [10] WinRAR                [25] Slack
echo [11] 7-Zip                 [26] TeamViewer
echo [12] Adobe Reader          [27] AnyDesk
echo [13] SumatraPDF            [28] Steam
echo [14] VLC Media Player      [29] Git
echo [15] Spotify               [30] Python
echo ------------------------------------------------------------
echo [31] Exit
echo ============================================================
echo.

set /p choice=Enter the number of the application you want to install: 
echo.

:: Installation Logic
if "%choice%"=="1"  winget install --id=Google.Chrome -e
if "%choice%"=="2"  winget install --id=Mozilla.Firefox -e
if "%choice%"=="3"  winget install --id=Microsoft.Edge -e
if "%choice%"=="4"  winget install --id=Opera.Opera -e
if "%choice%"=="5"  winget install --id=Microsoft.Office -e
if "%choice%"=="6"  winget install --id=TheDocumentFoundation.LibreOffice -e
if "%choice%"=="7"  winget install --id=Microsoft.VisualStudioCode -e
if "%choice%"=="8"  winget install --id=Notepad++.Notepad++ -e
if "%choice%"=="9"  winget install --id=SublimeHQ.SublimeText.4 -e
if "%choice%"=="10" winget install --id=RARLab.WinRAR -e
if "%choice%"=="11" winget install --id=7zip.7zip -e
if "%choice%"=="12" winget install --id=Adobe.Acrobat.Reader.64-bit -e
if "%choice%"=="13" winget install --id=KrzysztofKowalczyk.SumatraPDF -e
if "%choice%"=="14" winget install --id=VideoLAN.VLC -e
if "%choice%"=="15" winget install --id=Spotify.Spotify -e
if "%choice%"=="16" winget install --id=OBSProject.OBSStudio -e
if "%choice%"=="17" winget install --id=HandBrake.HandBrake -e
if "%choice%"=="18" winget install --id=GIMP.GIMP -e
if "%choice%"=="19" winget install --id=Inkscape.Inkscape -e
if "%choice%"=="20" winget install --id=BlenderFoundation.Blender -e
if "%choice%"=="21" winget install --id=WhatsApp.WhatsApp -e
if "%choice%"=="22" winget install --id=Discord.Discord -e
if "%choice%"=="23" winget install --id=Telegram.TelegramDesktop -e
if "%choice%"=="24" winget install --id=Zoom.Zoom -e
if "%choice%"=="25" winget install --id=SlackTechnologies.Slack -e
if "%choice%"=="26" winget install --id=TeamViewer.TeamViewer -e
if "%choice%"=="27" winget install --id=AnyDeskSoftware.AnyDesk -e
if "%choice%"=="28" winget install --id=Valve.Steam -e
if "%choice%"=="29" winget install --id=Git.Git -e
if "%choice%"=="30" winget install --id=Python.Python.3 -e

if "%choice%"=="31" (
    echo Exiting the program...
    timeout /t 2 > nul
    exit
)

echo.
set /p continue=Would you like to install another application? (Y/N): 
if /i "%continue%"=="Y" goto menu

echo.
echo All tasks completed. Exiting...
timeout /t 2 > nul
exit
