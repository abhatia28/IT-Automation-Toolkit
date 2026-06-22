$ReportPath = ".\test-results\windows\traceroute-report.txt"

tracert google.com |
Out-File $ReportPath

Write-Host "Traceroute report saved to $ReportPath"