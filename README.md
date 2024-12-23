# spotifyPopups

12/22/2024
Windows 11 modern flyout popup on song change
<pre>

Requires powershell v7 
Requires ahk v2     https://www.autohotkey.com/  
Requires modern flyouts   https://apps.microsoft.com/detail/9mt60qv066rp?hl=en-US&gl=US
</pre>
The intent of these two scripts the .ps1 and .ahk script is to get the modern flyout to appear when a spotify song changes. In windows 11 spotify disabled desktop notifications. Most likely due to a buggy on screen display. Modern flyouts allows you to see your song metadata and artwork. My script allows you to see all this as the song changes.

Influence from this came from https://www.reddit.com/r/spotify/comments/5yftah/show_notification_on_song_change_windows_10/
I simply implemented what his idea was. What the ahk file does is read from a file and determines if the song has changed. it then lowers the volume by 2 and raises by 2. thus showing the OSD of modern flyout.

I find it nice when developing or chilling that the song is shown on screen as it changes. While gaming you could just not run the scripts. I hope this gives people that would like a popup a solution. 


Sources: https://github.com/lennyomg/Spotify-PowerShell
Visit here for what my scripts are based off of and use.
you can follow his guide for these 4 steps below
<br>
<br>
<br>
<br>


Initial steps

First of all setup a spotify developer account


1. create app   https://developer.spotify.com/dashboard 

2. label it anything

3. give it a description

4. redirect uri   https://lennyomg.github.io/Spotify-PowerShell/index.html  &
                  http://localhost/callback

your clientid and client secret will be shown. follow the below steps.

<br>
<br>
<br>
<br>


**Installation instructions**


download zip to my scripts  https://github.com/dreadwrr/spotifyPopups/tree/main  <br>
unpack it to a directory of your choosing. make sure to edit working directory in both scripts.
<br>
<br>
then
<br>
<br>

download zip from for the powershell module https://github.com/lennyomg/Spotify-PowerShell  
unpack it and execute below commands

Loading the module

go to \modules\
<br>
Open your powershell v7 console in administrative mode <br>
Go to directory where you put the module
in my case its
<br><br><br>
C:\Users\csaig.DESKTOP-6GUPK6C\Documents\WindowsPowerShell\Modules  <br>
so <br>
cd \Users\csaig.DESKTOP-6GUPK6C\Documents\WindowsPowerShell\Modules
<br>
<br>
<br>


Powershell commands:
<br>
<br>

1.
```
import-module ./Spotify-PowerShell-master/module/Spotify.psm1
```

2.
```
$url = New-SpotifyAccessToken -ClientId "putyourclientidhere" -PassThru
```

3.
```
Start-Process $url
```

Follow onscreen instructions and paste the code into terminal

once you paste and run the code


4. follow unscreen instructions and paste into command and execute

5.
```
Update-SpotifyAccessToken
```


Once you have done that



download my powershell script and ahk file and put in the same directory of your choosing.
open spotifyPopups.ps1 and edit your working directory
open volumechange.ahk and edit your working directory

Run my script in powershell 

./stopifyPopups.ps1

finally once that is running 

double click  volumechange.ahk  to get popups on modern fly outs v2.










