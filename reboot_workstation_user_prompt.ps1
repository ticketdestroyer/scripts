$wshell = New-Object -ComObject Wscript.Shell

$wshell.Popup("This computer is scheduled for shutdown",10,"Save Data",0x0)

$wshell.Popup("30 seconds to shutdown",2,"Save it or it will be gone",0x0)

$xCmdString = {sleep 30}

Invoke-Command $xCmdString -ComputerName mfisher8300x 

Restart-Computer -ComputerName mfisher8300x -Force
