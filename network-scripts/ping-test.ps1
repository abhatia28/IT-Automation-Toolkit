$ReportPath = ".\test-results\windows\ping-report.txt"

Test-Connection google.com -Count 4 |
Out-File $ReportPath

Write-Host "Ping report saved to $ReportPath"