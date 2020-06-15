rem Wifi Hotspot Manager
rem version: 1.0.0
rem Made By: roXtar
rem Description: This batch script can create Hotspot, Stop Hotspot, Show WiFi Status(Enabled or Disabled) and can change the Username and password of the Hotspot

@echo off
cls
color 0A
title WiFi Hotspot Manager
goto start

:start
cls
echo    *****************************************************************************************************************************************************************
echo    *                                                         Manage Wifi Hotspot Without any Software                                                              *
echo    *****************************************************************************************************************************************************************
echo.
echo.
echo Main Menu:
echo.
rem Menu options for the operations
echo 1)Turn on Hotspot
echo 2)Turn off Hotspot
echo 3)Show Hotspot status
echo 4)Change Hotspot Username and Password
echo 5)Exit
echo.
echo.
echo.
echo.

rem Enter functions to the menu optoins
choice /n /c 12345 /m "Please select an option from the above menu: "

if errorlevel 5 goto exit
if errorlevel 4 goto Password
if errorlevel 3 goto status
if errorlevel 2 goto off
if errorlevel 1 goto on

:on
cls

netsh wlan start hosted network
echo.
echo.
echo Menu
echo.
echo 1)Go back to the Main Menu
echo 2)Exit
echo.
echo.
echo.
choice /n /c 12 /m "Please select an option from the above menu: "

if errorlevel 2 goto exit
if errorlevel 1 goto start

:off
cls

netsh wlan stop hosted network
echo.
echo.
echo Menu
echo.
echo 1)Go back to the Main Menu
echo 2)Exit          
echo.                
echo.                
echo.                
choice /n /c 12 /m "Please select an option from the above menu: "
					 
if errorlevel 2 goto exit
if errorlevel 1 goto start
					 
:status              
cls                  
					 
netsh wlan show hostednetwork
echo.                
echo.                
echo Menu            
echo.                
echo 1)Go back to the Main Menu
echo 2)Exit          
echo.                
echo.                
echo.                
choice /n /c 12 /m "Please select an option from the above menu: "
					 
if errorlevel 2 goto exit
if errorlevel 1 goto start
					 
:Password            
cls                  
					 
set /p usr="Please enter new Username for the Hotspot: "
set /p pwd="Please enter new Password for the Hotspot: "
					 
					 
netsh wlan set hostednetwork mode=allow ssid=%usr% key=%pwd%
echo.                
echo.                
echo Menu            
echo.                
echo 1)Go back to the Main Menu
echo 2)Exit
echo.
echo.
echo.
choice /n /c 12 /m "Please select an option from the above menu: "

if errorlevel 2 goto exit
if errorlevel 1 goto start

:exit
