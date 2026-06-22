$ReportPath = ".\test-results\windows\dns-report.txt"

Resolve-DnsName google.com |
Out-File $ReportPath

Write-Host "DNS report saved to $ReportPath"