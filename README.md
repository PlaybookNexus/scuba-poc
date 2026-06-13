# SCUBA-POC

A Node.js proof-of-concept application that integrates Microsoft's
[ScubaGear](https://github.com/cisagov/ScubaGear) assessment tool with a
web-based compliance dashboard. The app exposes REST endpoints that invoke
PowerShell remediation and break scripts against an M365 tenant, displays
live findings, and logs every action taken.

---

## Table of Contents

- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Project Structure](#project-structure)
- [Installation](#installation)
- [Running the App](#running-the-app)
- [Environment Variables](#environment-variables)
- [ScubaGear Integration](#scubagear-integration)
- [PowerShell Scripts](#powershell-scripts)
- [API Routes](#api-routes)
- [SCuBA Output](#scuba-output)
- [Dashboard UI](#dashboard-ui)
- [Development Notes](#development-notes)

---

## Overview

```
Browser UI  ──►  Express Server (server.js)
                      │
                      ├──► /api/remediate  ──►  PowerShell (fix-*.ps1)
                      ├──► /api/break      ──►  PowerShell (break-*.ps1)
                      └──► /api/scan       ──►  ScubaGear (Invoke-SCuBA)
                                                      │
                                                      └──►  scuba-output/
```

The Node server shells out to PowerShell 7 using `child_process.execFile`.
Each fix or break action maps to a dedicated `.ps1` script. ScubaGear writes
its JSON results to `scuba-output/`, which the server reads back and serves
to the dashboard.

---

## Prerequisites

Install and verify each item before running the app.

### 1. Node.js (v18 LTS or later)

```bash
# Verify
node --version   # should be v18.x.x or higher
npm --version
```

Download: https://nodejs.org/en/download

### 2. PowerShell 7+ (pwsh)

ScubaGear and all `.ps1` scripts require PowerShell 7 (`pwsh`), **not**
Windows PowerShell 5 (`powershell.exe`).

```bash
# Verify
pwsh --version   # should be 7.x.x
```

Download: https://github.com/PowerShell/PowerShell/releases

### 3. ScubaGear PowerShell Module

```powershell
# Install from PSGallery (run in pwsh as Administrator)
Install-Module -Name ScubaGear -Scope CurrentUser -Force

# Verify
Get-Module -ListAvailable ScubaGear
```

ScubaGear also requires the following modules (installed automatically as
dependencies):

| Module | Purpose |
|--------|---------|
| `ImportExcel` | Excel report generation |
| `Microsoft.Graph` | Graph API calls |
| `ExchangeOnlineManagement` | Exchange policy checks |
| `MicrosoftTeams` | Teams policy checks |
| `PnP.PowerShell` | SharePoint/OneDrive checks |

### 4. M365 Tenant Access

- A **Global Reader** or **Global Administrator** account for scan-only runs
- A **Global Administrator** account for fix/break scripts (they modify tenant
  settings)
- The account must be able to authenticate interactively or via a service
  principal (see [Environment Variables](#environment-variables))

### 5. Git (optional but recommended)

```bash
git --version
```

---

## Project Structure

```
SCUBA-POC/
├── node_modules/           # npm dependencies (not committed)
│
├── powershell/             # All PowerShell remediation scripts
│   ├── fix-admin-consent.ps1
│   ├── fix-conditional-access-baseline.ps1
│   ├── fix-domain-verify.ps1
│   ├── fix-guest-access.ps1
│   ├── fix-legacy-auth.ps1
│   ├── fix-sharepoint-sharing.ps1
│   ├── fix-teams-external.ps1
│   ├── break-admin-consent.ps1
│   ├── break-conditional-access-baseline.ps1
│   ├── break-guest-access.ps1
│   ├── break-legacy-auth.ps1
│   ├── break-sharepoint-sharing.ps1
│   └── break-teams-external.ps1
│
├── routes/
│   └── remediation.js      # Express router: /api/remediate, /api/break
│
├── scripts/                # Helper/utility scripts (scan runner, parsers)
│
├── scuba-output/           # ScubaGear JSON + HTML reports (git-ignored)
│
├── server.js               # Express app entry point
├── package.json
└── package-lock.json
```

---

## Installation

```bash
# 1. Clone the repo
git clone <your-repo-url> SCUBA-POC
cd SCUBA-POC

# 2. Install Node dependencies
npm install

# 3. (Optional) Set up environment variables
cp .env.example .env
# Edit .env with your tenant credentials
```

Ensure `scuba-output/` exists and is writable:

```bash
mkdir -p scuba-output
```

---

## Running the App

```bash
# Development (auto-restart on file changes)
npm run dev

# Production
npm start
```

The server starts on **http://localhost:3000** by default.

Open the dashboard in your browser:

```
http://localhost:3000
```

> **Note:** The first time you run a scan, ScubaGear will open a browser
> window for interactive M365 authentication. Subsequent runs within the same
> session may reuse the token cache.

---

## Environment Variables

Create a `.env` file at the project root (never commit this file):

```env
PORT=3000

# M365 tenant details
TENANT_ID=your-tenant-id-here
CLIENT_ID=your-app-registration-client-id

# Optional: service principal secret for non-interactive auth
CLIENT_SECRET=your-client-secret

# Path to pwsh binary (defaults to 'pwsh' on PATH)
PWSH_PATH=pwsh

# ScubaGear output directory (relative to project root)
SCUBA_OUTPUT_DIR=./scuba-output
```

---

## ScubaGear Integration

ScubaGear is invoked from Node via `child_process.execFile` pointing at
`pwsh`. A typical invocation looks like this (inside `scripts/`):

```javascript
const { execFile } = require('child_process');

execFile('pwsh', [
  '-NonInteractive',
  '-Command',
  `Import-Module ScubaGear; Invoke-SCuBA -ProductNames teams,exo,aad,sharepoint -OutPath ./scuba-output`
], (err, stdout, stderr) => {
  if (err) { /* handle */ }
  // parse scuba-output/*.json
});
```

ScubaGear writes one JSON results file per product to `scuba-output/`. The
server reads these files and merges them into the findings array served to
the dashboard.

### Supported Products

| ScubaGear Product Name | Display Name |
|------------------------|--------------|
| `teams` | Microsoft Teams |
| `exo` | Exchange Online |
| `aad` | Azure AD |
| `sharepoint` | SharePoint / OneDrive |
| `powerplatform` | Power Platform |
| `defender` | Microsoft Defender |

---

## PowerShell Scripts

All scripts live in `powershell/` and follow a **fix / break** naming
convention. They are invoked by the Express routes with `-NonInteractive` and
accept parameters via command-line arguments.

### Fix Scripts

Restore a control to its compliant (passing) state:

| Script | Control |
|--------|---------|
| `fix-admin-consent.ps1` | Disable user consent for apps (admin only) |
| `fix-conditional-access-baseline.ps1` | Enable MFA Conditional Access policy |
| `fix-domain-verify.ps1` | Verify custom domain DMARC/SPF records |
| `fix-guest-access.ps1` | Restrict external guest access in Teams/AAD |
| `fix-legacy-auth.ps1` | Block legacy authentication protocols |
| `fix-sharepoint-sharing.ps1` | Restrict SharePoint external sharing |
| `fix-teams-external.ps1` | Disable external access in Teams |

### Break Scripts

Intentionally misconfigure a control to simulate a failing state (PoC/demo
use only — **do not run in production**):

| Script | What It Breaks |
|--------|---------------|
| `break-admin-consent.ps1` | Re-enables user consent for OAuth apps |
| `break-conditional-access-baseline.ps1` | Disables the MFA Conditional Access policy |
| `break-guest-access.ps1` | Opens guest access to any external user |
| `break-legacy-auth.ps1` | Re-enables legacy authentication |
| `break-sharepoint-sharing.ps1` | Sets sharing to "Anyone with a link" |
| `break-teams-external.ps1` | Enables external access for all domains |

### Running Scripts Manually

```powershell
# Example: fix legacy auth
pwsh -File ./powershell/fix-legacy-auth.ps1 -TenantId $env:TENANT_ID

# Example: break SharePoint sharing (PoC demo only)
pwsh -File ./powershell/break-sharepoint-sharing.ps1 -TenantId $env:TENANT_ID
```

---

## API Routes

Defined in `routes/remediation.js` and mounted at `/api` in `server.js`.

| Method | Endpoint | Body | Description |
|--------|----------|------|-------------|
| `POST` | `/api/remediate` | `{ "controlId": "MS.AAD.1.1v1" }` | Run the matching `fix-*.ps1` script |
| `POST` | `/api/break` | `{ "controlId": "MS.AAD.1.1v1" }` | Run the matching `break-*.ps1` script |
| `POST` | `/api/scan` | `{ "products": ["teams","exo"] }` | Invoke ScubaGear and return findings |
| `GET` | `/api/findings` | — | Return last parsed ScubaGear output |
| `GET` | `/api/log` | — | Return current action log |

### Example: Trigger a Fix

```bash
curl -X POST http://localhost:3000/api/remediate \
  -H "Content-Type: application/json" \
  -d '{"controlId": "MS.TEAMS.1.1v1"}'
```

Response:

```json
{
  "success": true,
  "controlId": "MS.TEAMS.1.1v1",
  "script": "fix-teams-external.ps1",
  "output": "External access has been disabled for all domains.",
  "timestamp": "2026-06-13T17:50:00.000Z"
}
```

---

## SCuBA Output

ScubaGear writes reports to `scuba-output/` after each scan:

```
scuba-output/
├── ScubaResults_<timestamp>/
│   ├── BaselineReports/
│   │   ├── teams.json
│   │   ├── exo.json
│   │   ├── aad.json
│   │   └── ...
│   └── index.html          # Human-readable HTML report
```

The server watches this directory for new output and exposes the merged JSON
via `/api/findings`. Add `scuba-output/` to `.gitignore` to avoid committing
tenant-specific scan data.

---

## Dashboard UI

The compliance dashboard (`index.html` served from the Express static
middleware) provides:

- **Summary cards** — Total / Compliant / Non-Compliant / Manual counts
- **Findings table** — Filterable by product, severity, and status
- **Fix / Break buttons** — Each row calls `/api/remediate` or `/api/break`
- **Scan button** — Calls `/api/scan` and refreshes findings
- **Audit log panel** — Streams action history (FIX, BREAK, SCAN events)
- **Export CSV** — Downloads the current filtered view

---

## Development Notes

- **PowerShell execution policy:** If scripts fail with an execution policy
  error, run once in an elevated `pwsh` shell:
  ```powershell
  Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned
  ```

- **Token caching:** ScubaGear caches M365 tokens in `~/.orca/` by default.
  Delete this folder to force re-authentication.

- **Adding a new control:** 
  1. Add `fix-<name>.ps1` and `break-<name>.ps1` to `powershell/`
  2. Add the control-ID → script mapping to `routes/remediation.js`
  3. Add a row to the mock data in the dashboard HTML (or wire it to
     `/api/findings` if using live ScubaGear output)

- **Linting:** `npm run lint` (ESLint configured for Node/CommonJS)

- **Tested on:** Windows 11, PowerShell 7.4, Node.js 20 LTS, ScubaGear 1.4+

---

## Disclaimer

This is a **proof-of-concept** application intended for lab and demo
environments only. The `break-*.ps1` scripts intentionally misconfigure
security controls. **Never run break scripts against a production M365
tenant.**
