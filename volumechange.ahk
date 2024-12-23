;Song change popup script
;
;
; 12/22/2024
;
; This script reads a file and if it changes lowers and raises the volume to open up the modern flyout 2 overlay. 
;this is to allow for popup on song change for spotify on Windows 11.
;
;
;Requires AHK v2

; Set your working directory
workingDir := "C:\Users\csaig.DESKTOP-6GUPK6C\Documents\WindowsPowerShell\Modules\songplaying.txt" 


;function to get string for line number
FileReadLine(file_to_read, line_number)
{
    file_object := FileOpen(file_to_read, "r")
    loop line_number
        line_text := file_object.ReadLine() 
    file_object.Close
    return line_text
}

;checking if youre in the right directory
;exit on error or notify Auto Hot Key is running.
if not fileCheck := FileExist(workingDir) {
    MsgBox "ahk failed. please set your working directory in volumechange.ahk."
    Sleep 15
    Exit(ExitCode := 1) ;
}



oldsong := FileReadLine(workingDir, 1)



loop {
    newsong := FileReadLine(workingDir, 1)
    sleep 1 ; 
    

if oldsong != newsong  {
    oldsong := newsong ;
    Send "{Volume_Down 3}" ; 
    Send "{Volume_Up 3}" ;
    sleep 3000 ; 
} 


}

; future updates. left here.
;
;
;
;
;
;run powershell script   left here for future
;Run('Powershell.exe Pathtoscript\spotifyPopups.ps1')


