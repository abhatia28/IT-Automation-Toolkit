$ReportPath = ".\test-results\windows\windows-update-report.txt"

Get-HotFix |
Sort-Object InstalledOn -Descending |
Out-File $ReportPath

Write-Host "Windows update report saved to $ReportPath"