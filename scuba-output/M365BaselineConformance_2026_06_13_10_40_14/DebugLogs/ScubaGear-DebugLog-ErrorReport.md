# ScubaGear Debug Report

> **Log file:** `C:\dev\scuba-poc\scuba-output\M365BaselineConformance_2026_06_13_10_40_14\DebugLogs\ScubaGear-DebugLog-20260613-104014-699.log`
> **Report generated:** 2026-06-13 10:42:19

## Run Summary

| Field | Value |
|-------|-------|
| **Start Time** | 2026-06-13 10:40:14.705 |
| **Command** | `Invoke-SCuBA -ProductNames aad -OutPath "C:\dev\scuba-poc\scuba-output"` |
| **ScubaGear Version (loaded)** | 1.8.0 |
| **Environment** | Unknown |
| **Products Assessed** | aad |
| **Output Folder** | `C:\dev\scuba-poc\scuba-output\M365BaselineConformance_2026_06_13_10_40_14` |

## System Environment

| Field | Value |
|-------|-------|
| **OS** | Microsoft Windows 11 Home |
| **OS Build** | 26200 (ARM 64-bit Processor) |
| **PowerShell Version** | 5.1.26100.8246 (Desktop edition) |
| **.NET CLR Version** | 4.0.30319.42000 |

## ScubaGear Installation

| Field | Value |
|-------|-------|
| **Loaded Version** | 1.8.0 |
| **Loaded From** | `C:\Tools\ScubaGear\PowerShell\ScubaGear` |
| **Installed Version(s)** | Not in PSModulePath |
| **Installed Path(s)** | `N/A` |
| **Install Source** | Development / GitHub clone |

> :warning: **Version mismatch**: loaded **1.8.0** but installed version is **Not in PSModulePath**. Running ScubaGear from a development or non-default path.

## Module Loading Progression

_No module snapshots captured. Use Write-ScubaRunDetails with -IncludeLoadedModules to enable module tracking._

## OPA Executable

| Field | Value |
|-------|-------|
| **OPAPath (configured)** | `C:\Users\[***REDACTED***]\.scubagear\Tools` |
| **OPA at configured path** | :white_check_mark: Found |
| **Resolved OPA binary** | `C:\Users\[***REDACTED***]\.scubagear\Tools\opa_windows_amd64.exe` |
| **Version (configured path)** | 1.17.1 |
| **Default path (discovered)** | `C:\Users\[***REDACTED***]\.scubagear\Tools\opa_windows_amd64.exe` |
| **Version (default path)** | 1.17.1 |
| **Size (default path)** | 92.81 MB |

## Network Connectivity

| Check | Result |
|-------|--------|
| **Internet (www.microsoft.com)** | Connected |
| **DNS Resolution** | OK |
| **Proxy** | Not detected |

## Phase Timing

| Phase | Duration | Status |
|-------|----------|--------|
| Authentication | 2m 1s | :warning: Failed |
| Provider Execution | N/A | N/A |
| Rego Evaluation | N/A | N/A |

## Warnings and Errors

- :x: **[10:42:19.200]** `[ConnectTenant]` Authentication failed for product: aad - `{"ErrorType":"System.Diagnostics.Tracing.EventSourceException","ScriptStackTrace":"at Connect-GraphHelper, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Connection\\ConnectHelpers.psm1: line 47\r\nat Connect-Tenant, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Connection\\Connection.psm1: line 93\r\nat Invoke-Connection, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 1786\r\nat Invoke-SCuBA\u003cProcess\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 545\r\nat \u003cScriptBlock\u003e, \u003cNo file\u003e: line 1","ErrorMessage":"An error occurred when writing to a listener.","TargetObject":"N/A","Product":"aad"}`
- :warning: **[10:42:19.216]** `[InvokeScuba]` Some products failed authentication - `{"FailedProducts":"aad"}`
- :x: **[10:42:19.220]** `[InvokeScuba]` CRITICAL: All products failed authentication - aborting execution - `{"RequestedProducts":"aad","FailedProducts":"aad"}`

## Run Timeline

```
10:40:14.705 [INFO ] [LoggingSystem]        ScubaGear Logging Initialized - Level: Debug, Tracing: True, Transcript: False
10:40:14.710 [INFO ] [LoggingSystem]        Enhanced debug logging enabled - automatic function tracing active
10:40:14.716 [INFO ] [InvokeScuba]          ScubaGear logging initialized  | Version=1.8.0; TranscriptEnabled=@{IsPresent=False}; LogFolder=C:\dev\scuba-poc\scuba-output\M365BaselineConformance_2026_06_13_10_40_14\DebugLogs; OutputFolder=C:\dev\scuba-poc\scuba-output\M365BaselineConformance_2026_06_13_10_40_14; UserPassedEnvironment=commercial; ProductNames=aad
10:40:14.736 [INFO ] [InvokeScuba]          Cmdlet invocation captured  | Command=Invoke-SCuBA; BoundParameterCount=2
10:40:14.736 [INFO ] [InvokeScuba]          Capturing environment diagnostics
10:40:17.895 [INFO ] [ModuleSnapshot]       Module snapshot 'InitialLoad' captured: 1 module(s)  | SnapshotName=InitialLoad; ModulePathsSummary=ScubaGear=C:\Tools\ScubaGear\PowerShell\ScubaGear; ModulePaths=ScubaGear=C:\Tools\ScubaGear\PowerShell\ScubaGear; ModuleCount=1; ModuleSummary=ScubaGear (1.8.0); Modules=ScubaGear (1.8.0)
10:40:17.899 [INFO ] [InvokeScuba]          Starting product authentication...  | ProductNames=aad; M365Environment=commercial; UsesServicePrincipal=False
10:42:19.200 [ERROR] [ConnectTenant]        Authentication failed for product: aad  | ErrorType=System.Diagnostics.Tracing.EventSourceException; ScriptStackTrace=at Connect-GraphHelper, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Connection\ConnectHelpers.psm1: line 47
at Connect-Tenant, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Connection\Connection.psm1: line 93
at Invoke-Connection, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 1786
at Invoke-SCuBA<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 545
at <ScriptBlock>, <No file>: line 1; ErrorMessage=An error occurred when writing to a listener.; TargetObject=N/A; Product=aad
10:42:19.216 [WARN ] [InvokeScuba]          Some products failed authentication  | FailedProducts=aad
10:42:19.220 [ERROR] [InvokeScuba]          CRITICAL: All products failed authentication - aborting execution  | RequestedProducts=aad; FailedProducts=aad
10:42:19.223 [INFO ] [LoggingSystem]        ScubaGear logging session ending
```

## Comments / Additional Notes

_Use this section to add any additional context, observations, or notes about the issue:_






