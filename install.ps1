$ErrorActionPreference = "Stop"

$EnvFile = $env:ENV_FILE
if ([string]::IsNullOrWhiteSpace($EnvFile)) { $EnvFile = ".env" }

function Get-ComposeCmd {
  try {
    docker compose version *> $null
    return "docker compose"
  } catch {}
  try {
    docker-compose version *> $null
    return "docker-compose"
  } catch {}
  throw "Docker Compose not found (need 'docker compose' or 'docker-compose')."
}

docker version *> $null

New-Item -ItemType Directory -Force -Path ".\data" | Out-Null
New-Item -ItemType Directory -Force -Path ".\ssh_keys" | Out-Null

if (!(Test-Path $EnvFile) -and (Test-Path ".env.local")) {
  Copy-Item ".env.local" $EnvFile
  Write-Host "Created $EnvFile from .env.local (edit if needed)."
}

$COMPOSE = Get-ComposeCmd
Invoke-Expression "$COMPOSE --env-file `"$EnvFile`" pull"
Invoke-Expression "$COMPOSE --env-file `"$EnvFile`" up -d"
Invoke-Expression "$COMPOSE --env-file `"$EnvFile`" ps"
