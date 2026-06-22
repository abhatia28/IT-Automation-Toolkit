$ReportPath = ".\test-results\windows\network-config-report.txt"

ipconfig /all |
Out-File $ReportPath

Write-Host "Network configuration report saved to $ReportPath"