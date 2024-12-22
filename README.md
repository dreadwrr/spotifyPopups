# spotifyPopups
<br/><br/>
12/22/2024
<br/><br/>
Windows 11 modern flyout popup on song change <br/><br/>
<br/><br/>
<br/><br/>
Requires powershell v7 <br/><br/>
Requires ahk v2     https://www.autohotkey.com/  <br/><br/>
Requires modern flyouts   https://apps.microsoft.com/detail/9mt60qv066rp?hl=en-US&gl=US
<br/><br/>
<br/><br/>


Sources: https://github.com/lennyomg/Spotify-PowerShell
Visit here for what my scripts are based off of and use.
you can follow his guide for these 4 steps below
<p>&nbsp;</p>  
Initial steps

First of all setup a spotify developer account


&ensp;&ensp;1. create app   https://developer.spotify.com/dashboard 
&ensp;&ensp;2. label it anything

&ensp;&ensp;3. give it a description

&ensp;&ensp;4. redirect uri   https://lennyomg.github.io/Spotify-PowerShell/index.html  &
                  http://localhost/callback


your clientid and client secret will be shown. follow the below steps.

<br/><br/>
<br/><br/>
<br/><br/>
<br/><br/>
<br/><br/>
<br/><br/>

**Installation instructions**


download zip to my scripts  https://github.com/dreadwrr/spotifyPopups/tree/main
unpack it to a directory of your choosing. make sure to edit working directory in both scripts.

then

download zip from for the powershell module https://github.com/lennyomg/Spotify-PowerShell  
unpack it and execute below commands

Powershell commands:

1. import-module ./Spotify-PowerShell-master/module/Spotify.psm1


2. $url = New-SpotifyAccessToken -ClientId "putyourclientidhere" -PassThru
3. Start-Process $url
.
.
Follow onscreen instructions and paste the code into terminal
.
.
once you paste and run the code
4. follow unscreen instructions and paste into command and execute
.
5. Update-SpotifyAccessToken
.
.
.
Once you have done that
.
.
.
.
download my powershell script and ahk file and put in the same directory of your choosing.
open spotifyPopups.ps1 and edit your working directory
open volumechange.ahk and edit your working directory

./stopifyPopups.ps1

once that is running 
double click  volumechange.ahk  to get popups on modern fly outs v2.










