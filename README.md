# BlueTeam

## Tasks:
* Scan network: nmap -sn -v <IP RANGE>
* Address Firewall/Router vulnerabilities 
* Log onto machines and harden
  a. Change passwords (Do not forget services like SQL)
  b. Stop unnecessary services (remoting, remote desktop)
  c. Update
  d. Disable unused accounts (Do not delete them just in case)
  e. Enable windows defender, firewall
  f. Vuln scans + patch


To run Powershell on CMD: 
```
pwsh
```
Install PowerShell if not installed:
```
msiexec.exe /package PowerShell-7.2.2-win-x64.msi /quiet ADD_EXPLORER_CONTEXT_MENU_OPENPOWERSHELL=1 ENABLE_PSREMOTING=1 REGISTER_MANIFEST=1 USE_MU=1 ENABLE_MU=1
```

## Running the scripts
For computers in a domain (creates the list of computers and runs the script on each):
```
$COMPUTERS = Get-ADComputer -Filter * | % {$_.name} 
Invoke-Command -ComputerName $COMPUTERS -ScriptBlock {COMMAND}
```

## Scoring 
▪ Availability: Maintain high availability of your systems throughout
▪ Injects: Completing assigned business tasks graded by the White Team
▪ Social Engineering: students are expected to deal with social engineering measures appropriately.
▪ Attacks: Preventing unauthorized access by the Red Team / network intrusion teams
▪ Incident Reports: Documenting and remediating Red Team attacks
▪ Change Reports: Documenting and notification of network changes
  
## Useful commands:
Reset remote session if not working well
```
reset session {<sessionname> | <sessionID>} [/server:<servername>] [/v]
```
  
  
  
## Useful sites:
https://gist.github.com/alexiasa/fba4466849fde5b9ec3dd3cd7d1b3e9f
https://github.com/jordanpotti/ccdc
https://sites.google.com/site/howtoccdc/tips
