$ReportPath = ".\test-results\windows\event-log-report.txt"

Get-WinEvent -LogName System -MaxEvents 100 |
Select-Object TimeCreated, Id, LevelDisplayName, ProviderName, Message |
Out-File $ReportPath

Write-Host "Event log report saved to $ReportPath"