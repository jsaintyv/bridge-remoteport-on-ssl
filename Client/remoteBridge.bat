call ./configure.bat

echo %TARGETHOST% %TARGETPORT%

ssh -N -v -R 0.0.0.0:3389:127.0.0.1:8080 -p %TARGETPORT% -i secret remoteuser@%TARGETHOST% 