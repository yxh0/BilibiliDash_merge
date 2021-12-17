@echo off
TITLE Lossless package mp4
color 0F

if not exist /output md output

for %%i in (*.mp4) do ffmpeg -i "%%~ni.mp4" -i "%%~ni.m4a" -map 0:0 -c:v copy -map 1:0 -c:a copy "output\%%~ni.mp4"

pause
