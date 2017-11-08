
set-alias npp 'C:\Program Files\Notepad++\notepad++.exe'
set-alias np 'C:\Windows\notepad.exe'

update-help
Clear-Host
$PSVersionTable.PSVersion
function Test-IsAdmin ()
{
    ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")
}
if (!(Test-IsAdmin)){
    Write-Output "You aint no admin! check ya self"}
else{
    $host.ui.RawUI.WindowTitle="Boss Mode"
    Write-Output "You cool Boss, carry on.."

    start-job{
        [console]::beep(440,500)
        
        [console]::beep(440,500)
        
        [console]::beep(440,500)
        
        [console]::beep(349,350)
        
        [console]::beep(523,150)
        
        [console]::beep(440,500)
        
        [console]::beep(349,350)
        
        [console]::beep(523,150)
        
        [console]::beep(440,1000)
        
        [console]::beep(659,500)
        
        [console]::beep(659,500)
        
        [console]::beep(659,500)
        
        [console]::beep(698,350)
        
        [console]::beep(523,150)
        
        [console]::beep(415,500)
        
        [console]::beep(349,350)
        
        [console]::beep(523,150)
        
        [console]::beep(440,1000)
        }
}

set-location c:\