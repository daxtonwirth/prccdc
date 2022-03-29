# https://docs.microsoft.com/en-us/powershell/scripting/learn/ps101/08-powershell-remoting?view=powershell-7.2 
# One-To-One Remoting: 
# WinRM
# Enter-PSSession COMPUTERNAME
# Enable-PSRemoting # Winrm
# One-To-Many Remoting is invoke-command

# Get-Command -ParameterName ComputerName


$COMPUTERS = Get-ADComputer -Filter * | % {$_.name} 

Invoke-Command -ComputerName $COMPUTERS -ScriptBlock {.\update.ps1}

Disable-PSRemoting
stop-service winrm
start-service Windefend
Update-MpSignature
# Updates
wuauclt /detectnow /updatenow

# Deactivate guest account + admin
net user Guest /active:NO
# net user Administrator /active:NO



## Other userful commmands:
* Reduce overhead:
$Session = New-PSSession -ComputerName dc01, sql02, web01 -Credential $Cred
$Cred = Get-Credential