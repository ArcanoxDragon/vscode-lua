function New-Directory() {
    param([string] $Path)
    
    New-Item -ItemType Directory -Path $Path -ErrorAction "SilentlyContinue" | Out-Null
}

Write-Output "Compiling TypeScript..."

Push-Location "client"
tsc
Pop-Location

$PackageJson = Get-Content "package.json" | ConvertFrom-Json

$Version = $PackageJson.Version
$Out = Join-Path "publish" $Version

Write-Output "Publishing $Version to $Out..."

Remove-Item -Force -Recurse $Out -ErrorAction "SilentlyContinue"
New-Directory $Out

$CopyList = @(
    "client\node_modules"
    "client\out"
    "client\package-lock.json"
    "client\package.json"
    "client\tsconfig.json"
    "client\3rd\vscode-lua-doc\doc"
    "client\3rd\vscode-lua-doc\extension.js"
    "server\bin"
    "server\libs"
    "server\locale"
    "server\script"
    "server\main.lua"
    "server\platform.lua"
    "server\test"
    "server\test.lua"
    "server\debugger.lua"
    "server\changelog.md"
    "server\meta\template"
    "server\meta\3rd"
    "images\logo.png"
    "syntaxes"
    "package-lock.json"
    "package.json"
    "README.md"
    "changelog.md"
    "tsconfig.json"
    "package.nls.json"
    "package.nls.zh-cn.json"
)

foreach ($Item in $CopyList) {
    [string] $From = $null
    [string] $To = $null
    
    if ($Item -is [array]) {
        $From = $Item[0]
        $To = $Item[1]
    } else {
        $From = $Item
        $To = Split-Path $From
    }
    
    if (!(Test-Path $From)) {
        continue
    }
    
    $From = Resolve-Path -Relative $From
    $To = Join-Path $Out $To
    
    New-Directory $To
    Write-Output "Copying $From to $To"
    Copy-Item -Recurse $From $To
}
    

$VSIX = Join-Path (Resolve-Path "publish") "lua-$version.vsix"

Write-Output "Packaging $Version to $VSIX..."

Remove-Item $VSIX -Force -ErrorAction "SilentlyContinue"
Push-Location $Out
vsce package -o $VSIX
Pop-Location
