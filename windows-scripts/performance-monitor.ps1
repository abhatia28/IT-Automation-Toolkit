$ReportPath = ".\test-results\windows\performance-report.txt"

Get-Counter '\Processor(_Total)\% Processor Time',
'\Memory\Available MBytes' |
Out-File $ReportPath

Write-Host "Performance report saved to $ReportPath"