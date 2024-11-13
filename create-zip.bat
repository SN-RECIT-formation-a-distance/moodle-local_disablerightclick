echo off
set folderName=moodle-local_disablerightclick
set zipName=local_disablerightclick
set pluginName=disablerightclick

rem remove the current 
del %zipName%

rem zip the folder except the folder .git
"c:\Program Files\7-Zip\7z.exe" a -mx "%zipName%.zip" "..\%folderName%\"  -mx0 -xr!".git"  -xr!"create-zip.bat" -xr!"sync.ps1" -xr!"node_modules" -xr!"package-lock.json"

rem set the plugin name
"c:\Program Files\7-Zip\7z.exe" rn "%zipName%.zip" "%folderName%\" "%pluginName%\"

pause