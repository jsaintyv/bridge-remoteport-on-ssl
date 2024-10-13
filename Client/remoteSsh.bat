call ./configure.bat

echo %TARGETHOST% %TARGETPORT%

ssh -v -p %TARGETPORT% -i secret remoteuser@%TARGETHOST%