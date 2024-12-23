#Powershell v7 script
#
# 12/22/2024
#
# A powershell script for saving current playing information. It will check what song is playing and if it changed will output a new current song 
# to be read by an ahk script. 
# Set your maindir (Working directory of this script)
# Set your filename for the spotify information
# Set your songplayingfile for output


# enter your working directory
# enter your filename for spotify api (this is to save current playing music)
$maindir = "C:\Users\csaig.DESKTOP-6GUPK6C\Documents\WindowsPowerShell\Modules\"      #change this


$filenm = "spotifyapi.txt"             # you can leave this default
$songplayingfile = "songplaying.txt"   # you can leave this default

Update-SpotifyAccessToken
Get-SpotifyCurrentlyPlaying Out-File > $maindir$filenm

$oldsong = Get-Content $maindir$filenm | Select-Object -Index 4
$newsong 

#status checks

#check for working directory
#and then check for volumechange ahk script exit if any files are missing
if (Test-Path $maindir) {
   Write-Host "launching script." 
}

#exit if there is no working directory
else {
    Write-Host "please change the working directory in script."
    Exit 1
}

if (Test-Path $maindir"volumechange.ahk") {
    #start auto hot key script
    Write-Host "Auto hot key is running." 
    & ./volumechange.ahk
}

else {
    Write-Host "volumechange.awk missing. ensure they are in the same path." 
    Exit 1
}



    #enter loop

do {
    Get-SpotifyCurrentlyPlaying Out-File > $maindir$filenm
    $newsong = Get-Content $maindir$filenm | Select-Object -Index 4
    start-sleep -seconds 1

    if ($newsong -eq $oldsong) {
    

        }
        else {
        Update-SpotifyAccessToken
        $oldsong = $newsong


        $newsong > $maindir$songplayingfile
        
        #take action
        Write-Host "The song has changed." 

        }
    } 
    until ($false) {

    }










