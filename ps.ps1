# make sure we are at the correct location
Set-Location -Path $PSScriptRoot

if($args.Length -eq 0) {
    .\dc.ps1 ps
}
else {
    .\dc.ps1 ps $args
}