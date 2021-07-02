@echo off

set /p h=User:

cls
:menu
cls
Set /a num=(%Random% %%9)+1
color %num%
echo.
echo.
echo 			Ola, %h% Escolha sua opcao. Eu farei o resto das coisas :D
echo.
echo.
echo  1. Derrubar Call
echo.
echo  2. Ping
echo.
echo  3. Sair
echo.

set /p abcd=Selecione Sua Opcao:  
if %abcd%==1 goto Call
if %abcd%==2 goto Ping
if %abcd%==3 goto Sair
goto menu

:Call
cls
set /p j=Ip Da Call:
ping -l- 65500 -t %j%
goto menu:

:Ping
cls
set /p k=Link Da Call:
Ping %k%
pause
goto menu

:Sair
cls
echo.
echo  voce tem certeza que quer sair
echo.
Set /p l=S/N:
goto %p%

:S
cls
exit

:N
cls
goto menu