@echo off
IF NOT exist log\*.* mkdir log
IF NOT exist result\*.* mkdir result
echo off
set  A=XXX
set  B=XXX
set  C=XXX


:debut
@title pinger ! BY STONOX



color 07
cls
echo.
echo.
echo.
echo.
echo.
echo                     ษออออออออออออออออออออออออออออออออออออออออป
echo                     บ                                        บ 
echo                     บ                                        บ     
echo                     บ     PINGER SHOT !    BY    STONOX      บ
echo                     บ                                        บ  
echo                     บ                                 vs-0.1 บ 
echo                     ศออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
echo.
echo.
echo.
pause
cls
:Avar
cls
echo                     ษออออออออออออออออออออออออออออออออออออออออป
echo                     บ                                        บ     
echo                     บ     PINGER SHOT !    BY    STONOX      บ
echo                     บ                                        บ 
echo                     ศออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
echo.
echo.
echo.
echo                     ษออออออออออออออออออออออออออออออออออออออออป
echo                     บ                                        บ     
echo                     บ              %A%.%B%.%C%.*              บ
echo                     บ                                        บ 
echo                     ศออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
echo.
echo.
if "%A%" GTR "256" ( 
echo A dois etre compris entre {0-256}
    
)
echo.

echo Definisez A?
set /p A= 
if "%A%" GTR "256" ( 
    
goto :Avar
) ELSE (
echo %A%.%B%.%C%.*  !
   )


:Bvar
cls
echo                     ษออออออออออออออออออออออออออออออออออออออออป
echo                     บ                                        บ     
echo                     บ     PINGER SHOT !    BY    STONOX      บ
echo                     บ                                        บ 
echo                     ศออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
echo.
echo.
echo.
echo                     ษออออออออออออออออออออออออออออออออออออออออป
echo                     บ                                        บ     
echo                     บ              %A%.%B%.%C%.*              บ
echo                     บ                                        บ 
echo                     ศออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
echo.
echo.
if "%B%" GTR "256" ( 
echo B dois etre compris entre {0-256}
    
)
echo.

echo Definisez B?
set /p B= %A%.
if "%B%" GTR "256" ( 
    
goto :Bvar
) ELSE (
echo %A%.%B%.%C%.*  !
   )




:Cvar
cls
echo                     ษออออออออออออออออออออออออออออออออออออออออป
echo                     บ                                        บ     
echo                     บ     PINGER SHOT !    BY    STONOX      บ
echo                     บ                                        บ 
echo                     ศออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
echo.
echo.
echo.
echo                     ษออออออออออออออออออออออออออออออออออออออออป
echo                     บ                                        บ     
echo                     บ              %A%.%B%.%C%.*              บ
echo                     บ                                        บ 
echo                     ศออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
echo.
echo.
if "%C%" GTR "256" ( 
echo C dois etre compris entre {0-256}
    
)
echo.

echo Definisez C?
set /p C= %A%.%B%.
if "%C%" GTR "256" ( 
    
goto :Cvar
) ELSE (
echo %A%.%B%.%C%.*  !
   )



set /p go= Lancer ? o ou n
if %go%==o goto ping
if %go%==n goto debut

 


cls
:ping

echo off
color 0a
cls
echo                     ษออออออออออออออออออออออออออออออออออออออออป
echo                     บ                                        บ     
echo                     บ     PINGER SHOT !    BY    STONOX      บ
echo                     บ                                        บ 
echo                     ศออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
echo.
echo.
echo.
set /a count = count + 1
if %count%==226 goto finboucle
ping %A%.%B%.%C%.%count% -n 1 -w 100 > result/%A%.%B%.%C%.%count%.txt




if "%errorlevel%" NEQ "0" (
    ECHO %A%.%B%.%C%.%count% Hors ligne เ %Time% >>log/POSTES-NON-CONNECTES.txt 
) ELSE (
    ECHO %A%.%B%.%C%.%count% En ligne! เ %Time%%Time% >>log/POSTES-CONNECTES.txt 
)

if "%errorlevel%" NEQ "0" (
    ECHO %A%.%B%.%C%.%count% Hors ligne เ %Time% >>log/log-ip-connect.txt
) ELSE (
    ECHO %A%.%B%.%C%.%count% En ligne! เ %Time% >>log/log-ip-connect.txt
)
if "%errorlevel%" NEQ "0" (
    ECHO %A%.%B%.%C%.%count% >>log-temp-non-connect.txt
) ELSE (
    ECHO %A%.%B%.%C%.%count%>>log-temp-connect.txt
)
if "%errorlevel%" NEQ "0" (
    ^G
) ELSE (
    @echo HORS LIGNE
)

if "%errorlevel%" NEQ "0" (
    @title pinger ! BY STONOX -  %A%.%B%.%C%.%count% hors ligne
) ELSE (
    @title pinger ! BY STONOX -  %A%.%B%.%C%.%count%  en ligne
)
 call :PingTest

goto ping
:finboucle

@title pinger ! BY STONOX
echo off
color 0c
cls
echo                     ษออออออออออออออออออออออออออออออออออออออออป
echo                     บ                                        บ     
echo                     บ       PINGER !    BY    STONOX         บ
echo                     บ                                        บ 
echo                     ศออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
echo.
echo.
echo.
color 0a
echo Postes actuellement connect้s:
echo.
more log-temp-connect.txt
echo.
echo.
pause 
del log-temp-connect.txt
del log-temp-non-connect.txt
echo POUR FERMER PROPREMENT L'APPLICATION APPUIER SUR ENTREE ! 
echo CELLA SUPPRIMERA LES FICHIERS TEMPORERE .
pause
exit
:iperror
echo                     ษออออออออออออออออออออออออออออออออออออออออป
echo                     บ                                        บ     
echo                     บ     PINGER SHOT !    BY    STONOX      บ
echo                     บ                                        บ 
echo                     ศออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
echo.
echo.
echo.
echo                     ษออออออออออออออออออออออออออออออออออออออออป
echo                     บ                                        บ     
echo                     บ    B dois etre compris entre(0-256)    บ
echo                     บ                                        บ 
echo                     ศออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
echo.
echo.
echo.
:ipaffiche
echo                     ษออออออออออออออออออออออออออออออออออออออออป
echo                     บ                                        บ     
echo                     บ     PINGER SHOT !    BY    STONOX      บ
echo                     บ                                        บ 
echo                     ศออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
echo.
echo.
echo.
echo                     ษออออออออออออออออออออออออออออออออออออออออป
echo                     บ                                        บ     
echo                     บ              %A%.%B%.%C%.*             บ
echo                     บ                                        บ 
echo                     ศออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
echo.
echo.
echo.
:PingTest
IF %errorlevel% EQU 1 (echo %DATE% a %TIME% : %A%.%B%.%C%.%count% is Offline > log/%A%.%B%.%C%.%count%.txt) else (echo %DATE% a %TIME% %A%.%B%.%C%.%count% is Online > log/%A%.%B%.%C%.%count%.txt)  
