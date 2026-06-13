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