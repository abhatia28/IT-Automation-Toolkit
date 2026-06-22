$ReportPath = ".\test-results\windows\security-report.txt"

Get-MpComputerStatus |
Out-File $ReportPath

Write-Host "Security report saved to $ReportPath"