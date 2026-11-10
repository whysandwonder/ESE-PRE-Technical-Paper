@echo off
title UPSC ESE Paper II PYQ portal (keep this window open)
cd /d "%~dp0"
set PORT=8790
echo Starting the portal at http://localhost:%PORT%/
echo Keep this window open while using it. After installing the app it also works offline.
where python >nul 2>nul && (start "" /min cmd /c "timeout /t 2 >NUL & start http://localhost:%PORT%/" & python -m http.server %PORT% --bind 127.0.0.1 & goto :eof)
where py >nul 2>nul && (start "" /min cmd /c "timeout /t 2 >NUL & start http://localhost:%PORT%/" & py -m http.server %PORT% --bind 127.0.0.1 & goto :eof)
echo Python was not found. Install it from https://www.python.org/downloads/ (tick "Add to PATH"), then run this file again.
pause
