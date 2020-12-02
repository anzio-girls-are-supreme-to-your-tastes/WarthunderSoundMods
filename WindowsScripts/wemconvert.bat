for %%f in (*.wem) do "C:\Users\Fried\Documents\Tools\ww2ogg024\ww2ogg.exe" %%f --pcb "C:\Users\Fried\Documents\Tools\ww2ogg024\packed_codebooks_aoTuV_603.bin"
for %%f in (*.ogg) do "C:\Users\Fried\Documents\Tools\revorb.exe" %%f
mkdir OUTPUT
for /r . %%a in (*.ogg) do "C:\Users\Fried\Documents\Tools\ffmpeg-2020-11-14-git-46e362b765-full_build\bin\ffmpeg.exe" -i "%%a" "%%~pa\OUTPUT\%%~na.wav"
pause
del *.ogg