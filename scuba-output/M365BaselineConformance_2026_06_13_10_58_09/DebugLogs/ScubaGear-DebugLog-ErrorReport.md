# ScubaGear Debug Report

> **Log file:** `C:\dev\scuba-poc\scuba-output\M365BaselineConformance_2026_06_13_10_58_09\DebugLogs\ScubaGear-DebugLog-20260613-105809-264.log`
> **Report generated:** 2026-06-13 10:58:13

## Run Summary

| Field | Value |
|-------|-------|
| **Start Time** | 2026-06-13 10:58:09.265 |
| **Command** | `Invoke-SCuBA `` |
| **ScubaGear Version (loaded)** | 1.8.0 |
| **Environment** | Unknown |
| **Products Assessed** | aad |
| **Output Folder** | `C:\dev\scuba-poc\scuba-output\M365BaselineConformance_2026_06_13_10_58_09` |

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

| Snapshot | Module | Version | Path |
|----------|--------|---------|------|
| InitialLoad | Microsoft.Graph.Authentication | 2.25.0 | `C:\Users\[***REDACTED***]\OneDrive\Documents\WindowsPowerShell\Modules\Microsoft.Graph.Authentication\2.25.0` |
| InitialLoad | ScubaGear | 1.8.0 | `C:\Tools\ScubaGear\PowerShell\ScubaGear` |

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
| Authentication | 919 ms | Success |
| Provider Execution | 1.8 s | Success |
| Rego Evaluation | 144 ms | Success |
| Report Creation | 37 ms | Error |

## Warnings and Errors

- :x: **[10:58:13.219]** `[CreateReport]` Fatal error in report creation - `{"Error":"Invalid JSON primitive: .","StackTrace":"at New-Report, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\CreateReport\\CreateReport.psm1: line 202\r\nat Invoke-ReportCreation\u003cProcess\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 1573\r\nat \u003cScriptBlock\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 668\r\nat Trace-ScubaFunction, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Utility\\ScubaLogging.psm1: line 352\r\nat Invoke-SCuBA\u003cProcess\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 660\r\nat \u003cScriptBlock\u003e, \u003cNo file\u003e: line 1"}`
- :x: **[10:58:13.222]** `[FunctionTrace]` EXIT: Invoke-ReportCreation (ERROR) - `{"Status":"Error","ExecutionTimeMs":37,"ErrorType":"RuntimeException"}`

## Run Timeline

```
10:58:09.265 [INFO ] [LoggingSystem]        ScubaGear Logging Initialized - Level: Debug, Tracing: True, Transcript: False
10:58:09.267 [INFO ] [LoggingSystem]        Enhanced debug logging enabled - automatic function tracing active
10:58:09.268 [INFO ] [InvokeScuba]          ScubaGear logging initialized  | Version=1.8.0; TranscriptEnabled=@{IsPresent=False}; LogFolder=C:\dev\scuba-poc\scuba-output\M365BaselineConformance_2026_06_13_10_58_09\DebugLogs; OutputFolder=C:\dev\scuba-poc\scuba-output\M365BaselineConformance_2026_06_13_10_58_09; UserPassedEnvironment=commercial; ProductNames=aad
10:58:09.271 [INFO ] [InvokeScuba]          Cmdlet invocation captured  | Command=Invoke-SCuBA; BoundParameterCount=3
10:58:09.274 [INFO ] [InvokeScuba]          Capturing environment diagnostics
10:58:09.729 [INFO ] [ModuleSnapshot]       Module snapshot 'InitialLoad' captured: 2 module(s)  | SnapshotName=InitialLoad; ModulePathsSummary=Microsoft.Graph.Authentication=C:\Users\[***REDACTED***]\OneDrive\Documents\WindowsPowerShell\Modules\Microsoft.Graph.Authentication\2.25.0; ScubaGear=C:\Tools\ScubaGear\PowerShell\ScubaGear; ModulePaths=Microsoft.Graph.Authentication=C:\Users\[***REDACTED***]\OneDrive\Documents\WindowsPowerShell\Modules\Microsoft.Graph.Authentication\2.25.0 ScubaGear=C:\Tools\ScubaGear\PowerShell\ScubaGear; ModuleCount=2; ModuleSummary=Microsoft.Graph.Authentication (2.25.0); ScubaGear (1.8.0); Modules=Microsoft.Graph.Authentication (2.25.0) ScubaGear (1.8.0)
10:58:09.729 [INFO ] [InvokeScuba]          Starting product authentication...  | ProductNames=aad; M365Environment=commercial; UsesServicePrincipal=False
10:58:10.645 [INFO ] [ModuleSnapshot]       Module snapshot 'PostAuthentication' captured: 2 module(s)  | SnapshotName=PostAuthentication; ModulePathsSummary=Microsoft.Graph.Authentication=C:\Users\[***REDACTED***]\OneDrive\Documents\WindowsPowerShell\Modules\Microsoft.Graph.Authentication\2.25.0; ScubaGear=C:\Tools\ScubaGear\PowerShell\ScubaGear; ModulePaths=Microsoft.Graph.Authentication=C:\Users\[***REDACTED***]\OneDrive\Documents\WindowsPowerShell\Modules\Microsoft.Graph.Authentication\2.25.0 ScubaGear=C:\Tools\ScubaGear\PowerShell\ScubaGear; ModuleCount=2; ModuleSummary=Microsoft.Graph.Authentication (2.25.0); ScubaGear (1.8.0); Modules=Microsoft.Graph.Authentication (2.25.0) ScubaGear (1.8.0)
10:58:10.648 [INFO ] [InvokeScuba]          Retrieving tenant details...  | ProductNames=aad; M365Environment=commercial
10:58:11.204 [INFO ] [InvokeScuba]          Starting provider execution...  | ModuleVersion=1.8.0; ProductNames=aad; Guid=5be3798c-f436-4011-af9d-6339a3ed9d21
10:58:11.207 [INFO ] [FunctionTrace]        ENTER: Invoke-ProviderList  | ModuleVersion=1.8.0; ScubaConfig=[ScubaConfig Object]; OutFolderPath=C:\dev\scuba-poc\scuba-output\M365BaselineConformance_2026_06_13_10_58_09; Guid=5be3798c-f436-4011-af9d-6339a3ed9d21; TenantDetails=[TenantDetails Object]
10:58:11.246 [INFO ] [FunctionTrace]        ENTER: Get-MgBetaIdentityConditionalAccessPolicy
10:58:11.323 [INFO ] [TryCommand]           Error running command  | Error=Response status code does not indicate success: BadRequest (Bad Request).; Command=Get-MgBetaIdentityConditionalAccessPolicy; StackTrace=at Invoke-GraphDirectly, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\Utility.psm1: line 257
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 49
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 352
at TryCommand, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 48
at TryCommand, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 96
at Export-AADProvider, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ExportAADProvider.psm1: line 32
at Invoke-ProviderList<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 851
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 609
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 352
at Invoke-SCuBA<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 602
at <ScriptBlock>, <No file>: line 1
10:58:11.337 [INFO ] [FunctionTrace]        ENTER: Get-MgBetaSubscribedSku
10:58:11.438 [INFO ] [TryCommand]           Error running command  | Error=Response status code does not indicate success: BadRequest (Bad Request).; Command=Get-MgBetaSubscribedSku; StackTrace=at Invoke-GraphDirectly, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\Utility.psm1: line 257
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 49
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 352
at TryCommand, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 48
at TryCommand, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 96
at Export-AADProvider, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ExportAADProvider.psm1: line 55
at Invoke-ProviderList<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 851
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 609
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 352
at Invoke-SCuBA<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 602
at <ScriptBlock>, <No file>: line 1
10:58:11.442 [INFO ] [FunctionTrace]        ENTER: Get-MgBetaUserCount
10:58:11.602 [INFO ] [TryCommand]           Error running command  | Error=Response status code does not indicate success: NotFound (Not Found).; Command=Get-MgBetaUserCount; StackTrace=at Invoke-GraphDirectly, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\Utility.psm1: line 257
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 49
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 352
at TryCommand, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 48
at TryCommand, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 96
at Export-AADProvider, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ExportAADProvider.psm1: line 69
at Invoke-ProviderList<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 851
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 609
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 352
at Invoke-SCuBA<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 602
at <ScriptBlock>, <No file>: line 1
10:58:11.606 [INFO ] [FunctionTrace]        ENTER: Get-MgBetaPolicyAuthorizationPolicy
10:58:11.676 [INFO ] [TryCommand]           Error running command  | Error=Response status code does not indicate success: BadRequest (Bad Request).; Command=Get-MgBetaPolicyAuthorizationPolicy; StackTrace=at Invoke-GraphDirectly, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\Utility.psm1: line 257
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 49
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 352
at TryCommand, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 48
at TryCommand, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 96
at Export-AADProvider, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ExportAADProvider.psm1: line 80
at Invoke-ProviderList<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 851
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 609
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 352
at Invoke-SCuBA<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 602
at <ScriptBlock>, <No file>: line 1
10:58:11.678 [INFO ] [FunctionTrace]        ENTER: Get-MgBetaDirectorySetting
10:58:11.753 [INFO ] [TryCommand]           Error running command  | Error=Response status code does not indicate success: BadRequest (Bad Request).; Command=Get-MgBetaDirectorySetting; StackTrace=at Invoke-GraphDirectly, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\Utility.psm1: line 257
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 49
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 352
at TryCommand, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 48
at TryCommand, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 96
at Export-AADProvider, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ExportAADProvider.psm1: line 83
at Invoke-ProviderList<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 851
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 609
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 352
at Invoke-SCuBA<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 602
at <ScriptBlock>, <No file>: line 1
10:58:11.755 [INFO ] [FunctionTrace]        ENTER: Get-MgBetaPolicyAuthenticationMethodPolicy
10:58:11.831 [INFO ] [TryCommand]           Error running command  | Error=Response status code does not indicate success: BadRequest (Bad Request).; Command=Get-MgBetaPolicyAuthenticationMethodPolicy; StackTrace=at Invoke-GraphDirectly, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\Utility.psm1: line 257
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 49
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 352
at TryCommand, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 48
at TryCommand, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 96
at Export-AADProvider, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ExportAADProvider.psm1: line 86
at Invoke-ProviderList<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 851
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 609
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 352
at Invoke-SCuBA<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 602
at <ScriptBlock>, <No file>: line 1
10:58:11.837 [INFO ] [FunctionTrace]        ENTER: Get-MgBetaDomain
10:58:11.929 [INFO ] [TryCommand]           Error running command  | Error=Response status code does not indicate success: BadRequest (Bad Request).; Command=Get-MgBetaDomain; StackTrace=at Invoke-GraphDirectly, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\Utility.psm1: line 257
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 49
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 352
at TryCommand, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 48
at TryCommand, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 96
at Export-AADProvider, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ExportAADProvider.psm1: line 103
at Invoke-ProviderList<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 851
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 609
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 352
at Invoke-SCuBA<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 602
at <ScriptBlock>, <No file>: line 1
10:58:11.932 [INFO ] [FunctionTrace]        ENTER: Get-ServicePrincipalsWithRiskyDelegatedPermissionClassifications
10:58:12.014 [INFO ] [TryCommand]           Error running command  | Error=Response status code does not indicate success: BadRequest (Bad Request).; Command=Get-ServicePrincipalsWithRiskyDelegatedPermissionClassifications; StackTrace=at Invoke-GraphDirectly, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\Utility.psm1: line 257
at Get-ServicePrincipalsWithRiskyDelegatedPermissionClassifications<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\AADRiskyPermissionsHelper.psm1: line 520
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 62
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 352
at TryCommand, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 61
at TryCommand, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 96
at Export-AADProvider, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ExportAADProvider.psm1: line 106
at Invoke-ProviderList<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 851
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 609
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 352
at Invoke-SCuBA<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 602
at <ScriptBlock>, <No file>: line 1
10:58:12.015 [INFO ] [FunctionTrace]        ENTER: Get-MgBetaPolicyDefaultAppManagementPolicy
10:58:12.088 [INFO ] [TryCommand]           Error running command  | Error=Response status code does not indicate success: BadRequest (Bad Request).; Command=Get-MgBetaPolicyDefaultAppManagementPolicy; StackTrace=at Invoke-GraphDirectly, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\Utility.psm1: line 257
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 49
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 352
at TryCommand, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 48
at TryCommand, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 96
at Export-AADProvider, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ExportAADProvider.psm1: line 110
at Invoke-ProviderList<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 851
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 609
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 352
at Invoke-SCuBA<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 602
at <ScriptBlock>, <No file>: line 1
10:58:12.090 [INFO ] [FunctionTrace]        ENTER: Get-MgBetaPolicyAppManagementPolicy
10:58:12.154 [INFO ] [TryCommand]           Error running command  | Error=Response status code does not indicate success: BadRequest (Bad Request).; Command=Get-MgBetaPolicyAppManagementPolicy; StackTrace=at Invoke-GraphDirectly, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\Utility.psm1: line 257
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 49
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 352
at TryCommand, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 48
at TryCommand, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 96
at Export-AADProvider, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ExportAADProvider.psm1: line 111
at Invoke-ProviderList<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 851
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 609
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 352
at Invoke-SCuBA<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 602
at <ScriptBlock>, <No file>: line 1
10:58:12.159 [INFO ] [FunctionTrace]        ENTER: Get-ApplicationsWithRiskyPermissions
10:58:12.794 [INFO ] [TryCommand]           Error running command  | Error=Response status code does not indicate success: Forbidden (Forbidden).; Command=Get-ApplicationsWithRiskyPermissions; StackTrace=at Invoke-GraphDirectly, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\Utility.psm1: line 257
at Get-ApplicationsWithRiskyPermissions<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\AADRiskyPermissionsHelper.psm1: line 230
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 62
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 352
at TryCommand, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 61
at TryCommand, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 96
at Export-AADProvider, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ExportAADProvider.psm1: line 189
at Invoke-ProviderList<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 851
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 609
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 352
at Invoke-SCuBA<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 602
at <ScriptBlock>, <No file>: line 1
10:58:12.795 [INFO ] [FunctionTrace]        ENTER: Get-ServicePrincipalsWithRiskyPermissions
10:58:12.911 [INFO ] [TryCommand]           Error running command  | Error=Response status code does not indicate success: BadRequest (Bad Request).; Command=Get-ServicePrincipalsWithRiskyPermissions; StackTrace=at Invoke-GraphDirectly, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\Utility.psm1: line 257
at Get-ServicePrincipalsWithRiskyPermissions<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\AADRiskyPermissionsHelper.psm1: line 359
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 62
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 352
at TryCommand, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 61
at TryCommand, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 96
at Export-AADProvider, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ExportAADProvider.psm1: line 193
at Invoke-ProviderList<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 851
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 609
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 352
at Invoke-SCuBA<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 602
at <ScriptBlock>, <No file>: line 1
10:58:12.913 [INFO ] [FunctionTrace]        ENTER: Get-LegacyExchangeServicePrincipal
10:58:12.993 [INFO ] [TryCommand]           Error running command  | Error=Response status code does not indicate success: BadRequest (Bad Request).; Command=Get-LegacyExchangeServicePrincipal; StackTrace=at Invoke-GraphDirectly, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\Utility.psm1: line 257
at Get-LegacyExchangeServicePrincipal<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\AADHybridExchangeHelper.psm1: line 72
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 62
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 352
at TryCommand, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 61
at TryCommand, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 96
at Export-AADProvider, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ExportAADProvider.psm1: line 241
at Invoke-ProviderList<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 851
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 609
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 352
at Invoke-SCuBA<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 602
at <ScriptBlock>, <No file>: line 1
10:58:12.994 [INFO ] [FunctionTrace]        ENTER: Get-DedicatedExchangeHybridApplications
10:58:13.000 [INFO ] [FunctionTrace]        EXIT: Get-DedicatedExchangeHybridApplications  (4 ms)
10:58:13.008 [INFO ] [FunctionTrace]        EXIT: Invoke-ProviderList  (1.8 s)
10:58:13.011 [INFO ] [InvokeScuba]          Starting OPA Rego evaluation...  | ProductNames=aad; OPAPath=C:\Users\[***REDACTED***]\.scubagear\Tools
10:58:13.014 [INFO ] [FunctionTrace]        ENTER: Invoke-RunRego  | OutFolderPath=C:\dev\scuba-poc\scuba-output\M365BaselineConformance_2026_06_13_10_58_09; ScubaConfig=[ScubaConfig Object]; ParentPath=C:\Tools\ScubaGear\PowerShell\ScubaGear
10:58:13.160 [INFO ] [FunctionTrace]        EXIT: Invoke-RunRego  (144 ms)
10:58:13.178 [INFO ] [InvokeScuba]          Starting report creation...  | DarkMode=False; KeepIndividualJSON=False; Quiet=True
10:58:13.183 [INFO ] [FunctionTrace]        ENTER: Invoke-ReportCreation  | OutFolderPath=C:\dev\scuba-poc\scuba-output\M365BaselineConformance_2026_06_13_10_58_09; ModuleVersion=1.8.0; TenantDetails=[TenantDetails Object]; ScubaConfig=[ScubaConfig Object]; Quiet=@{IsPresent=True}; DarkMode=@{IsPresent=False}
10:58:13.219 [ERROR] [CreateReport]         Fatal error in report creation  | Error=Invalid JSON primitive: .; StackTrace=at New-Report, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\CreateReport\CreateReport.psm1: line 202
at Invoke-ReportCreation<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 1573
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 668
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 352
at Invoke-SCuBA<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 660
at <ScriptBlock>, <No file>: line 1
10:58:13.222 [ERROR] [FunctionTrace]        EXIT: Invoke-ReportCreation (ERROR)  (37 ms)
10:58:13.284 [INFO ] [InvokeScuba]          ScubaGear assessment completed! Check report in [C:\dev\scuba-poc\scuba-output\M365BaselineConformance_2026_06_13_10_58_09]
10:58:13.290 [INFO ] [LoggingSystem]        ScubaGear logging session ending
```

## Comments / Additional Notes

_Use this section to add any additional context, observations, or notes about the issue:_






