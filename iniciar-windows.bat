@echo off
cd /d "%~dp0"
echo Lyric Sync se esta abriendo en http://127.0.0.1:8080/
echo Deja esta ventana abierta mientras uses la app. Cerrala para apagarla.
start "" cmd /c "timeout /t 2 >nul & start http://127.0.0.1:8080/"
where py >nul 2>nul && (py -m http.server 8080 --bind 127.0.0.1) || (python -m http.server 8080 --bind 127.0.0.1)
echo.
echo No se pudo iniciar. Hace falta tener Python instalado (python.org).
pause
