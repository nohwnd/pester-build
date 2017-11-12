param($Path = '.')

if ([string]::IsNullOrWhiteSpace($Path)) { $Path = '.' }

Get-Module Pester | Remove-Module
Import-Module ./Pester.psd1
Invoke-Pester $path