$ReportPath = ".\test-results\windows\network-monitor-report.txt"

Get-NetAdapter |
Out-File $ReportPath

Write-Host "Network monitor report saved to $ReportPath"