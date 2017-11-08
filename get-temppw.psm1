<#
.Synopsis
Creates a random password using the get-random function
.Description
Using Get-Random and the character source of choice the script iterates through the character set and produces a random password
.Example
Get-Temppw -length 12 -sourcedata $ascii
#>
Function Get-Temppw(){
    Param(
        [int]$length=10,
        [string[]]$sourcedata
    )

    For ($a=33;$a –le 126;$a++) {
        
        $sourcedata+=,[char][byte]$a 
        }

    For($loop = 1; $loop -le $length; $loop++){
        $TempPassword += ($sourcedata|Get-Random)
    }

    return $TempPassword
}