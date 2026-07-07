
@echo off

reg delete "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /f
reg delete "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\ShellNoRoam\MUICache" /f 
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Persisted" /f 
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /f 

set pfad=%cd%

cd C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Recent
del * /S /Q

cd C:\Users\%USERNAME%\AppData\Local\Temp\
del * /S /Q /F

cd C:\Windows\Logs\CBS\
del CBS.log /S /Q /F
del FilterList.log /S /Q /F
echo. 2>CBS.log
echo. 2>Filterlist.log

cd C:\Users\%USERNAME%\Documents
md WordAutoSave

cd C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc
copy Discord.lnk %pfad%

cd C:\Windows\Prefetch
del * /Q /F

move %0 C:\Users\%USERNAME%\Documents\WordAutoSave\Homework_05.03.2021.docx
