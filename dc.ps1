# make sure we are at the correct location
Set-Location -Path $PSScriptRoot

# invoke docker compose with correct parameters
docker compose -p "lxp-trunk" $args
