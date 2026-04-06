# ISA Scanner (Docker)

[![Container image (latest)](https://img.shields.io/badge/ghcr.io-intellisoftalpin%2Fisa%3Alatest-blue?logo=docker)](https://github.com/orgs/intellisoftalpin/packages/container/package/isa)

Run **ISA Scanner** locally using Docker Compose. The published image is **multi-arch** (works on **linux/amd64** and **linux/arm64**), so it runs on Intel/AMD machines and Apple Silicon.

> Pull the latest image:
> `docker pull ghcr.io/intellisoftalpin/isa:latest`

## Requirements

- Linux/macOS/Windows
- Docker Engine / Docker Desktop
- Docker Compose (both `docker compose` and `docker-compose` are supported)

## Quick start

### Bash

```bash
chmod +x install.sh update.sh
./install.sh
./update.sh
```

### Makefile

```bash
make help
make start
```

### Windows (PowerShell)

```powershell
powershell -ExecutionPolicy Bypass -File .\install.ps1
powershell -ExecutionPolicy Bypass -File .\update.ps1
```

### Windows (WSL)

```bash
wsl bash ./install.sh
wsl bash ./update.sh
```

> Use `install_wsl_dependencies.sh` to install `dos2unix`
> and convert scripts/env files to Unix line endings if needed.

## Stop / remove containers

```bash
docker compose down
# or: docker-compose down
# or: make down
```

## Health endpoint

- http://localhost:${ISA_PORT}/health

