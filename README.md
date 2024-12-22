# spotifyPopups
Windows 11 modern flyout popup on song change


12/22/2024

Sources: https://github.com/lennyomg/Spotify-PowerShell
Visit here for what my scripts are based off of and use.


Installation instructions

Requires powershell v7
Requires ahk v2        https://www.autohotkey.com/

download zip from for the powershell module https://github.com/lennyomg/Spotify-PowerShell  
unpack it and execute below commands

Powershell commands:

import-module ./Spotify-PowerShell-master/module/Spotify.psm1


$url = New-SpotifyAccessToken -ClientId "putyourclientidhere" -PassThru
Start-Process $url

Follow onscreen instructions and paste the code into terminal

once you paste and run the code

Update-SpotifyAccessToken


Once you have done that

download my powershell script and ahk file and put in the same directory.
open spotifyPopups.ps1 and edit your working directory
open volumechange.ahk and edit your working directory

./stopifyPopups.ps1

once that is running 
double click  volumechange.ahk  to get popups on modern fly outs v2.








