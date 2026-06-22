$ReportPath = ".\test-results\windows\internet-status-report.txt"

Test-NetConnection google.com |
Out-File $ReportPath

Write-Host "Internet status report saved to $ReportPath"