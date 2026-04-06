# defaudit - Defensive Audit

[![Container Image](https://img.shields.io/badge/ghcr.io-intellisoftalpin%2Fisa%3Alatest-blue?logo=docker)](https://github.com/orgs/intellisoftalpin/packages/container/package/isa)
[![Platform](https://img.shields.io/badge/platform-linux%20%7C%20macOS%20%7C%20windows-lightgrey)](https://defaudit.com)
[![Architecture](https://img.shields.io/badge/arch-amd64%20%7C%20arm64-green)](https://defaudit.com)

**defaudit** (Defensive Audit) is a self-hosted security scanning and vulnerability assessment platform for modern development teams. It performs static application security testing (SAST), software composition analysis (SCA), secrets detection, and Software Bill of Materials (SBOM) generation across 13+ programming languages — all running on your own infrastructure with a zero-knowledge architecture.

Designed for organizations that need to meet compliance requirements such as the **EU Cyber Resilience Act (CRA)**, **ISO 27001**, **SOC 2**, and **GDPR**, defaudit keeps your source code on-premises and never transfers it to external servers.

> **[defaudit.com](https://defaudit.com)** | Free tier available — get started in minutes with Docker Compose.

---

## Why defaudit

- **Zero-Knowledge Architecture** — Your code stays on your servers. No cloud uploads, no external data transfers. Full GDPR compliance with data kept in your jurisdiction.
- **13+ Languages in One Tool** — Replace multiple scanners with a single platform covering Go, Java, JavaScript, TypeScript, Python, PHP, Kotlin, Rust, C/C++, C#, Swift, Dart/Flutter, and ABAP.
- **Compliance-Ready Reporting** — Generate ISO 27001-compliant PDF reports, SBOM documents, and audit trails. Track vulnerability lifecycle and remediation progress over time.
- **Enterprise Security Built In** — Role-based access control (RBAC), mandatory two-factor authentication (TOTP) for administrators, LDAP/Active Directory integration, and comprehensive audit logging.
- **Shift-Left Security** — Integrate vulnerability detection early in your development lifecycle. Schedule automated scans, track trends, and reduce your security backlog before code reaches production.

---

## Key Features

### Vulnerability Detection & Analysis

- Multi-language static application security testing (SAST)
- Software composition analysis (SCA) for dependency vulnerabilities
- Secrets detection with Gitleaks and TruffleHog
- CVE integration with CVSS scoring and NVD references
- Supply chain security analysis for third-party dependencies
- Dockerfile security linting

### Reporting & Compliance

- PDF reports with executive summaries and technical details
- Software Bill of Materials (SBOM) generation
- Vulnerability lifecycle tracking with historical analysis
- Risk scoring and trend analysis dashboards
- Remediation guidance and fix recommendations
- Custom branding for client-facing reports

### Enterprise Features

- Role-based access control with four user roles (Admin, Manager, User, Viewer)
- Mandatory TOTP two-factor authentication for admin accounts
- LDAP and Active Directory integration
- Audit logging for all security-relevant actions
- SSH key management with Ed25519 encryption
- Git repository integration with branch-specific scanning
- Cron-based scan scheduling

### Integrated Security Tools (44 Tools)

defaudit bundles and orchestrates 44 security tools — a combination of industry-standard open-source scanners and proprietary defaudit native analyzers:

#### Universal Tools

| Tool | Purpose | License |
|------|---------|---------|
| Syft | Software Bill of Materials (SBOM) generation | Apache 2.0 |
| Grype | Dependency vulnerability scanning | Apache 2.0 |
| Trivy | Multi-purpose security scanner | Apache 2.0 |
| Opengrep | Static code analysis (SAST) | LGPL 2.1 |
| vet (SafeDep) | Dependency risk assessment | Apache 2.0 |
| Gitleaks | Secrets and credentials detection | MIT |
| TruffleHog | High-signal secrets scanning with verification | AGPL-3.0 |
| Hadolint | Dockerfile security linting | GPL 3.0 |

#### Go

| Tool | Purpose | License |
|------|---------|---------|
| defaudit native Go scanner | Go-specific vulnerability analysis | Proprietary |
| Gosec | Go security analyzer | Apache 2.0 |
| Nancy | Go dependency vulnerability scanning | Apache 2.0 |
| go vet | Go static analysis | BSD 3-Clause |
| Staticcheck | Advanced Go static analysis | MIT |

#### JavaScript / TypeScript

| Tool | Purpose | License |
|------|---------|---------|
| defaudit native JS scanner | JavaScript/TypeScript vulnerability analysis | Proprietary |
| npm audit | Node.js dependency vulnerability scanning | Artistic 2.0 |
| ESLint Security Plugin | Security-focused linting rules | Apache 2.0 |
| NodeJsScan | Node.js SAST scanner | GPL 3.0 |

#### Python

| Tool | Purpose | License |
|------|---------|---------|
| defaudit native Python scanner | Python-specific vulnerability analysis | Proprietary |
| pip-audit | Python dependency vulnerability scanning | Apache 2.0 |
| Bandit | Python SAST scanner | Apache 2.0 |

#### Java

| Tool | Purpose | License |
|------|---------|---------|
| defaudit native Java scanner | Java-specific vulnerability analysis | Proprietary |
| OWASP Dependency-Check | Java/JVM dependency vulnerability scanning | Apache 2.0 |
| SpotBugs | Java static analysis and bug detection | LGPL 2.1 |

#### Kotlin

| Tool | Purpose | License |
|------|---------|---------|
| defaudit native Kotlin scanner | Kotlin-specific vulnerability analysis | Proprietary |
| Detekt | Kotlin static code analysis | Apache 2.0 |

#### PHP

| Tool | Purpose | License |
|------|---------|---------|
| defaudit native PHP scanner | PHP-specific vulnerability analysis | Proprietary |
| Composer Audit | PHP dependency vulnerability scanning | MIT |
| Psalm | PHP static analysis | MIT |
| PHPStan | PHP static analysis | MIT |

#### C# / .NET

| Tool | Purpose | License |
|------|---------|---------|
| defaudit native C# scanner | C#-specific vulnerability analysis | Proprietary |
| dotnet list vulnerable | .NET dependency vulnerability scanning | MIT |
| Security Code Scan | .NET SAST scanner | LGPL 3.0 |

#### Rust

| Tool | Purpose | License |
|------|---------|---------|
| defaudit native Rust scanner | Rust-specific vulnerability analysis | Proprietary |
| Cargo Audit | Rust dependency vulnerability scanning | Apache 2.0 / MIT |
| Cargo Deny | Rust dependency license and advisory checking | Apache 2.0 / MIT |
| Clippy | Rust linting and code quality | Apache 2.0 / MIT |

#### C / C++

| Tool | Purpose | License |
|------|---------|---------|
| Flawfinder | C/C++ source code vulnerability scanner | GPL 2.0+ |
| Cppcheck | C/C++ static analysis | GPL 3.0 |

#### Mobile (iOS / Android / Flutter)

| Tool | Purpose | License |
|------|---------|---------|
| defaudit native iOS scanner | iOS/Swift vulnerability analysis | Proprietary |
| defaudit native Android scanner | Android/Kotlin vulnerability analysis | Proprietary |
| defaudit native Flutter scanner | Flutter/Dart vulnerability analysis | Proprietary |
| MobSFScan | Mobile application security scanning | LGPL 3.0+ |

#### ABAP

| Tool | Purpose | License |
|------|---------|---------|
| defaudit native ABAP scanner | ABAP-specific vulnerability analysis | Proprietary |
| abaplint | ABAP static code analysis | MIT |

---

## Supported Technologies

| Technology | Frameworks & Build Systems |
|------------|---------------------------|
| **Go** | Standard library, modules |
| **Java** | Maven, Gradle, Spring Boot, Jakarta EE |
| **Kotlin** | Gradle, Android |
| **JavaScript / TypeScript** | Node.js, React, Angular, Vue.js, Next.js, npm |
| **Python** | pip, Django, Flask |
| **PHP** | Composer, Laravel, Symfony, WordPress |
| **Rust** | Cargo |
| **C / C++** | CMake, Make |
| **C#** | .NET, NuGet |
| **Swift / Objective-C** | Xcode, CocoaPods, SPM |
| **Dart** | Flutter |
| **Android** | Gradle (Kotlin/Java) |
| **ABAP** | abapGit |

---

## System Requirements

| | Minimum | Recommended |
|---|---------|-------------|
| **CPU** | 2 cores | 4+ cores |
| **RAM** | 4 GB | 8+ GB |
| **Storage** | 20 GB | 50+ GB |
| **OS** | Linux, macOS, or Windows | Linux |
| **Software** | Docker Engine + Docker Compose | Docker Engine 24+ |
| **Network** | Internet access for vulnerability database updates | |

The published container image is **multi-arch** and supports both **linux/amd64** (Intel/AMD) and **linux/arm64** (Apple Silicon, ARM servers).

---

## Quick Start

Pull the latest image:

```bash
docker pull ghcr.io/intellisoftalpin/isa:latest
```

### Linux / macOS

```bash
./install.sh
```

To update to the latest version:

```bash
./update.sh
```

### Makefile

```bash
make help       # show available commands
make start      # init + pull + start
make down       # stop services
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

> Use `install_wsl_dependencies.sh` to install `dos2unix` and convert scripts to Unix line endings if needed.

### Stop / Remove

```bash
docker compose down
```

After starting, open **http://localhost:18080** in your browser. The setup wizard will guide you through initial configuration — creating your admin account and setting up two-factor authentication.

---

## Docker Compose Reference

The `docker-compose.yml` defines two services: the defaudit scanner and Watchtower for automatic updates.

### Services

#### `isa-scanner` — defaudit Application

The main application container running the security scanner.

| Parameter | Description | Default |
|-----------|-------------|---------|
| `image` | Container image from GitHub Container Registry | `ghcr.io/intellisoftalpin/isa:${ISA_IMAGE_TAG:-latest}` |
| `container_name` | Name for the running container | `isa-scanner` |
| `ports` | Host-to-container port mapping. The application listens on port 18080 inside the container. | `${ISA_PORT:-18080}:18080` |
| `restart` | Restart policy — container restarts automatically unless manually stopped | `unless-stopped` |

**Volumes:**

| Host Path | Container Path | Purpose |
|-----------|---------------|---------|
| `${ISA_DATA_HOST_DIR:-./data}` | `/app/data` | Persistent storage for the SQLite database, scan results, and application data. Must survive container restarts. |
| `${ISA_SSH_KEYS_HOST_DIR:-./ssh_keys}` | `/app/ssh_keys` | SSH key storage for Git repository authentication. Keys are generated and managed through the web interface. |

**Environment Variables:**

| Variable | Description | Default |
|----------|-------------|---------|
| `ISA_PORT` | Internal application port (should match the container port mapping) | `18080` |
| `ISA_DATA_DIR` | Data directory path inside the container | `/app/data` |
| `LOG_LEVEL` | Application log verbosity: `debug`, `info`, `warn`, `error` | `info` |
| `ISA_IMAGE_TAG` | Container image tag to pull (set in `.env` file) | `latest` |
| `ISA_DATA_HOST_DIR` | Host directory for persistent data (set in `.env` file) | `./data` |
| `ISA_SSH_KEYS_HOST_DIR` | Host directory for SSH keys (set in `.env` file) | `./ssh_keys` |

**Health Check:**

The container includes a built-in health check that polls the `/health` endpoint every 30 seconds. The service is considered healthy when it responds with HTTP 200. Docker will restart the container after 3 consecutive failures.

| Parameter | Value |
|-----------|-------|
| Endpoint | `http://localhost:18080/health` |
| Interval | 30 seconds |
| Timeout | 10 seconds |
| Start period | 30 seconds (grace period after container start) |
| Retries | 3 |

#### `watchtower` — Automatic Updates

[Watchtower](https://containrrr.dev/watchtower/) monitors the defaudit container and automatically pulls and deploys new image versions.

| Parameter | Description | Value |
|-----------|-------------|-------|
| `image` | Watchtower container image | `containrrr/watchtower:latest` |
| `TZ` | Timezone for the update schedule | `Europe/Stockholm` |
| `--label-enable` | Only watch containers with the `com.centurylinklabs.watchtower.enable=true` label | Enabled |
| `--cleanup` | Remove old images after updating | Enabled |
| `--schedule` | Cron schedule for update checks (daily at 07:00) | `0 7 * * *` |
| `--rolling-restart` | Restart containers one at a time to minimize downtime | Enabled |

Watchtower requires access to the Docker socket (`/var/run/docker.sock`) to manage containers.

---

## Health Endpoint

```
GET http://localhost:${ISA_PORT}/health
```

Returns HTTP 200 when the application is running and the database is accessible. Use this for monitoring, load balancer health checks, or container orchestration readiness probes.

---

## Security & Compliance

defaudit helps organizations meet security and compliance requirements across multiple regulatory frameworks:

- **EU Cyber Resilience Act (CRA)** — Continuous vulnerability monitoring, SBOM generation, and documented security processes for products with digital elements sold in the EU market.
- **ISO 27001** — Audit-ready PDF reports, vulnerability lifecycle tracking, role-based access control, and comprehensive audit logging support information security management system (ISMS) requirements.
- **SOC 2** — Access controls, audit trails, and security monitoring capabilities align with SOC 2 Trust Service Criteria for security, availability, and confidentiality.
- **GDPR** — Self-hosted deployment keeps all data in your jurisdiction. Zero-knowledge architecture ensures source code and vulnerability data never leave your infrastructure.
- **Supply Chain Security** — Software composition analysis (SCA) and SBOM generation help manage third-party dependency risks and meet supply chain security requirements such as NIST SP 800-161 and Executive Order 14028.

---

## About

**defaudit** is developed by **[IntelliSoftAlpin eG](https://intellisoftalpin.com)**, a company specializing in software security solutions.

- Product website: **[defaudit.com](https://defaudit.com)**
- Company website: **[intellisoftalpin.com](https://intellisoftalpin.com)**
- Container registry: **[ghcr.io/intellisoftalpin/isa](https://github.com/orgs/intellisoftalpin/packages/container/package/isa)**

---
