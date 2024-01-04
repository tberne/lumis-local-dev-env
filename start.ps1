# make sure we are at the correct location
Set-Location -Path $PSScriptRoot

if($args.Length -eq 0) {
    .\dc.ps1 start ws bd db k
}
else {
    $newArgs = $args -split " "
    .\dc.ps1 start $newArgs
}
