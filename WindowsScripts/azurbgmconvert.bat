@echo off
echo "VGMToolbox must be used to convert B archives to HCA archives."
VGMToolbox.lnk
echo "Contine to populate archives"
pause
mkdir CONVERT
FOR /R . %%i IN (*.hca) DO MOVE /y "%%i" ".\CONVERT\" >nul
echo "CONVERT directory populated with HCA archives. Continue to Clean up CONVERT directory"
pause
cd CONVERT
del /f warcry*.hca 
del /f upgrade*.hca 
del /f unlock*.hca 
del /f ui-*.hca 
del /f touch*.hca 
del /f task*.hca 
del /f skill*.hca 
del /f shop*.hca 
del /f profile*.hca 
del /f present*.hca 
del /f mvp*.hca 
del /f main*.hca 
del /f mission*.hca 
del /f mail*.hca 
del /f lose_*.hca 
del /f login_*.hca 
del /f link*.hca 
del /f kizuna*.hca 
del /f hp*.hca 
del /f home*.hca 
del /f get*.hca 
del /f feeling*.hca 
del /f extra*.hca 
del /f enter*.hca 
del /f detail*.hca 
del /f expedition*.hca 
del /f buy*.hca 
del /f logo.hca 
del /f lose.hca 
del /f presnet_like.hca 
del /f propose.hca 
del /f purchase.hca 
del /f build_ai.hca 
del /f hololivevoice.hca 
echo "Directory Cleaned. Continue to convert HCA archives to WAV"
pause
vgaudiocli.exe -b --out-format wav -i . -o .
echo "Continue to purge HCA archives"
pause
del /f *.hca
cd ..
for /f "delims=" %%i in ('dir /s /b /ad ^| sort /r') do rd "%%i"
