﻿$ErrorActionPreference = 'Stop';

Update-SessionEnvironment

$npmPath = Get-Command npm | ForEach-Object { $_.Path }
"Installing $env:chocolateyPackageName using nodejs..."
Start-ChocolateyProcessAsAdmin $npmPath -statements install,"-g","typescript@3.7.2"
