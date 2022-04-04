@echo off
echo "VGMToolbox must be used to convert B archives to HCA archives."
echo "Drop files in [Misc. Tools] > [Extraction Tools] > [Common Archives] > [CRI ACB/AWB Archive...]"
echo "Once complete: Close VGMToolbox then Press [Space] to continue"
P:\Users\Fried\Tools\vgmtoolbox_bin_r1040\VGMToolbox.exe
pause

mkdir CONVERT
FOR /R . %%i IN (*.hca) DO MOVE /y "%%i" ".\CONVERT\" >nul

cd CONVERT

P:\Users\Fried\Tools\vgaudiocli.exe -b --out-format wav -i . -o .

mkdir PURGE
FOR /R . %%i IN (warcry*.wav) DO MOVE /y "%%i" ".\PURGE\" >nul 
FOR /R . %%i IN (upgrade*.wav ) DO MOVE /y "%%i" ".\PURGE\" >nul  
FOR /R . %%i IN (unlock*.wav) DO MOVE /y "%%i" ".\PURGE\" >nul  
FOR /R . %%i IN (ui-*.wav) DO MOVE /y "%%i" ".\PURGE\" >nul  
FOR /R . %%i IN (touch*.wav) DO MOVE /y "%%i" ".\PURGE\" >nul  
FOR /R . %%i IN (tb-*.wav) DO MOVE /y "%%i" ".\PURGE\" >nul 
FOR /R . %%i IN (task*.wav) DO MOVE /y "%%i" ".\PURGE\" >nul  
FOR /R . %%i IN (skill*.wav) DO MOVE /y "%%i" ".\PURGE\" >nul  
FOR /R . %%i IN (shop*.wav) DO MOVE /y "%%i" ".\PURGE\" >nul 
FOR /R . %%i IN (profile*.wav) DO MOVE /y "%%i" ".\PURGE\" >nul 
FOR /R . %%i IN (present*.wav) DO MOVE /y "%%i" ".\PURGE\" >nul  
FOR /R . %%i IN (mvp*.wav) DO MOVE /y "%%i" ".\PURGE\" >nul 
FOR /R . %%i IN (main*.wav) DO MOVE /y "%%i" ".\PURGE\" >nul 
FOR /R . %%i IN (mission*.wav) DO MOVE /y "%%i" ".\PURGE\" >nul  
FOR /R . %%i IN (mail*.wav) DO MOVE /y "%%i" ".\PURGE\" >nul  
FOR /R . %%i IN (lose_*.wav) DO MOVE /y "%%i" ".\PURGE\" >nul 
FOR /R . %%i IN (login_*.wav) DO MOVE /y "%%i" ".\PURGE\" >nul  
FOR /R . %%i IN (link*.wav) DO MOVE /y "%%i" ".\PURGE\" >nul 
FOR /R . %%i IN (kizuna*.wav) DO MOVE /y "%%i" ".\PURGE\" >nul  
FOR /R . %%i IN (hp*.wav) DO MOVE /y "%%i" ".\PURGE\" >nul  
FOR /R . %%i IN (home*.wav) DO MOVE /y "%%i" ".\PURGE\" >nul 
FOR /R . %%i IN (get*.wav) DO MOVE /y "%%i" ".\PURGE\" >nul 
FOR /R . %%i IN (feeling*.wav) DO MOVE /y "%%i" ".\PURGE\" >nul  
FOR /R . %%i IN (extra*.wav) DO MOVE /y "%%i" ".\PURGE\" >nul 
FOR /R . %%i IN (enter*.wav) DO MOVE /y "%%i" ".\PURGE\" >nul  
FOR /R . %%i IN (detail*.wav) DO MOVE /y "%%i" ".\PURGE\" >nul  
FOR /R . %%i IN (expedition*.wav) DO MOVE /y "%%i" ".\PURGE\" >nul  
FOR /R . %%i IN (buy*.wav) DO MOVE /y "%%i" ".\PURGE\" >nul  
FOR /R . %%i IN (logo.wav) DO MOVE /y "%%i" ".\PURGE\" >nul  
FOR /R . %%i IN (lose.wav) DO MOVE /y "%%i" ".\PURGE\" >nul  
FOR /R . %%i IN (presnet_like.wav) DO MOVE /y "%%i" ".\PURGE\" >nul 
FOR /R . %%i IN (propose.wav) DO MOVE /y "%%i" ".\PURGE\" >nul  
FOR /R . %%i IN (purchase.wav) DO MOVE /y "%%i" ".\PURGE\" >nul 
FOR /R . %%i IN (build_ai.wav) DO MOVE /y "%%i" ".\PURGE\" >nul 
FOR /R . %%i IN (hololivevoice.wav) DO MOVE /y "%%i" ".\PURGE\" >nul
echo "PURGE directory made for undesired files, INSPECT BEFORE DELETING"
del /f *.hca 
cd ..
for /f "delims=" %%i in ('dir /s /b /ad ^| sort /r') do rd "%%i" 