@echo off
chcp 65001 >nul
cd /d "%~dp0assets\video"
echo Pobieram wideo do ramki CTV...
yt-dlp -f "bv*[height<=720][ext=mp4]+ba[ext=m4a]/b[height<=720][ext=mp4]/b[ext=mp4]" --merge-output-format mp4 -o "ctv_src.%%(ext)s" "https://www.youtube.com/watch?v=7SFtYd1mWgs"
if errorlevel 1 (
  echo Pierwsza proba nie wyszla, probuje formatu bez laczenia sciezek...
  yt-dlp -f "b[ext=mp4]" -o "ctv_src.%%(ext)s" "https://www.youtube.com/watch?v=7SFtYd1mWgs"
)
echo.
echo Gotowe. Mozesz zamknac to okno.
pause
