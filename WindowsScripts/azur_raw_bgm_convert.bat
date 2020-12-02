@echo off
echo "VGMToolbox must be used to convert B archives to HCA archives. Contine to populate archives"
pause
mkdir CONVERT
FOR /R . %%i IN (*.hca) DO MOVE /y "%%i" ".\CONVERT\" >nul
echo "CONVERT directory populated with HCA archives. Continue to Clean up CONVERT directory"
pause
cd CONVERT
del /f warcry*.hca upgrade*.hca unlock*.hca ui-*.hca touch*.hca task*.hca skill*.hca shop*.hca profile*.hca present*.hca mvp*.hca main*.hca mission*.hca mail*.hca lose_*.hca login_*.hca link*.hca kizuna*.hca hp*.hca home*.hca get*.hca feeling*.hca extra*.hca enter*.hca detail*.hca expedition*.hca buy*.hca logo.hca lose.hca presnet_like.hca propose.hca purchase.hca build_ai.hca hololivevoice.hca 
echo "Directory Cleaned. Continue to convert HCA archives to WAV"
pause
vgaudiocli.exe -b --out-format wav -i . -o .
echo "Continue to purge HCA archives"
pause
del /f *.hca