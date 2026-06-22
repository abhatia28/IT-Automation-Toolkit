$ReportPath = ".\test-results\windows\port-report.txt"

Test-NetConnection google.com -Port 443 |
Out-File $ReportPath

Write-Host "Port report saved to $ReportPath"