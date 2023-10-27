@echo off
echo Starting Print.  
title HWID CHECKER
color a
mode con: cols=90 lines=62
echo.
echo Your HWID
echo [91m-------------------------------[
echo [91m       Disk Number
echo [91m-------------------------------[
wmic diskdrive get serialnumber
echo [92m-------------------------------[
echo [94m      Motherboard
echo [92m-------------------------------[
wmic   baseboard get serialnumber
echo [93m-------------------------------[
echo [97m        SMBios
echo [93m-------------------------------[
wmic path win32_computersystemproduct get uuid
echo [94m-------------------------------[
echo [95m         GPU
echo [94m-------------------------------[
wmic PATH Win32_VideoController GET Description,PNPDeviceID
echo [95m-------------------------------[
echo [93m         RAM
echo [95m-------------------------------[
wmic memorychip get serialnumber
echo [96m-------------------------------[
echo [92m         Bios
echo [96m-------------------------------[
wmic csproduct get uuid
echo [97m-------------------------------[
echo [95m         CPU
echo [97m-------------------------------[
wmic cpu get processorid
echo [99m-------------------------------[
echo [94m         Mac Address
echo [99m-------------------------------[
wmic path Win32_NetworkAdapter where "PNPDeviceID like '%%PCI%%' AND NetConnectionStatus=2 AND AdapterTypeID='0'" get MacAddress
pause