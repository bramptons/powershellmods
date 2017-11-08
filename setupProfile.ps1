
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
    Write-Output "You cool Boss, carry on.."}

set-location c:\