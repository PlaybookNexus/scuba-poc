# ScubaGear Debug Report

> **Log file:** `C:\dev\scuba-poc\scuba-output\M365BaselineConformance_2026_06_13_12_05_06\DebugLogs\ScubaGear-DebugLog-20260613-120506-641.log`
> **Report generated:** 2026-06-13 12:05:16

## Run Summary

| Field | Value |
|-------|-------|
| **Start Time** | 2026-06-13 12:05:06.647 |
| **Command** | `Invoke-SCuBA -ProductNames aad -OutPath "C:\dev\scuba-poc\scuba-output"` |
| **ScubaGear Version (loaded)** | 1.8.0 |
| **Environment** | commercial |
| **Products Assessed** | aad |
| **Output Folder** | `C:\dev\scuba-poc\scuba-output\M365BaselineConformance_2026_06_13_12_05_06` |

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
| **Loaded From** | `C:\Users\[***REDACTED***]\OneDrive\Documents\WindowsPowerShell\Modules\ScubaGear\1.8.0` |
| **Installed Version(s)** | 1.8.0 |
| **Installed Path(s)** | `C:\Users\[***REDACTED***]\OneDrive\Documents\WindowsPowerShell\Modules\ScubaGear\1.8.0` |
| **Install Source** | PowerShell Gallery |
| **Gallery Published Date** | 2026-05-07 |
| **Gallery Installed Date** | 2026-06-13 |
| **Gallery Repository** | PSGallery |

## Module Loading Progression

| Snapshot | Module | Version | Path |
|----------|--------|---------|------|
| InitialLoad | ScubaGear | 1.8.0 | `C:\Tools\ScubaGear\PowerShell\ScubaGear` |
| PostAuthentication | Microsoft.Graph.Authentication | 2.25.0 | `C:\Users\[***REDACTED***]\OneDrive\Documents\WindowsPowerShell\Modules\Microsoft.Graph.Authentication\2.25.0` |

## OPA Executable

| Field | Value |
|-------|-------|
| **OPAPath (configured)** | `C:\Users\[***REDACTED***]\.scubagear\Tools` |
| **OPA at configured path** | :white_check_mark: Found |
| **Resolved OPA binary** | `C:\Users\[***REDACTED***]\.scubagear\Tools\opa_windows_amd64.exe` |
| **Version (configured path)** | 1.15.2 |
| **Default path (discovered)** | `C:\Users\[***REDACTED***]\.scubagear\Tools\opa_windows_amd64.exe` |
| **Version (default path)** | 1.15.2 |
| **Size (default path)** | 87.08 MB |

## Network Connectivity

| Check | Result |
|-------|--------|
| **Internet (www.microsoft.com)** | Connected |
| **DNS Resolution** | OK |
| **Proxy** | Not detected |

## Phase Timing

| Phase | Duration | Status |
|-------|----------|--------|
| Authentication | 1.8 s | Success |
| Provider Execution | 2.2 s | Success |
| Rego Evaluation | 243 ms | Success |
| Report Creation | 95 ms | Error |

## Warnings and Errors

- :warning: **[12:05:14.358]** `[ProviderList]` Error running command — `{"Error":"Response status code does not indicate success: BadRequest (Bad Request).","Command":"Get-MgBetaIdentityConditionalAccessPolicy","StackTrace":"at Invoke-GraphDirectly, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Utility\\Utility.psm1: line 257\r\nat TryCommand, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Providers\\ProviderHelpers\\CommandTracker.psm1: line 47\r\nat Export-AADProvider, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Providers\\ExportAADProvider.psm1: line 25\r\nat Invoke-ProviderList\u003cProcess\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 829\r\nat \u003cScriptBlock\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 591\r\nat Trace-ScubaFunction, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Utility\\ScubaLogging.psm1: line 345\r\nat Invoke-SCuBA\u003cProcess\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 584\r\nat \u003cScriptBlock\u003e, \u003cNo file\u003e: line 1"}`
- :warning: **[12:05:14.473]** `[ProviderList]` Error running command — `{"Error":"Response status code does not indicate success: BadRequest (Bad Request).","Command":"Get-MgBetaSubscribedSku","StackTrace":"at Invoke-GraphDirectly, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Utility\\Utility.psm1: line 257\r\nat TryCommand, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Providers\\ProviderHelpers\\CommandTracker.psm1: line 47\r\nat Export-AADProvider, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Providers\\ExportAADProvider.psm1: line 48\r\nat Invoke-ProviderList\u003cProcess\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 829\r\nat \u003cScriptBlock\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 591\r\nat Trace-ScubaFunction, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Utility\\ScubaLogging.psm1: line 345\r\nat Invoke-SCuBA\u003cProcess\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 584\r\nat \u003cScriptBlock\u003e, \u003cNo file\u003e: line 1"}`
- :warning: **[12:05:14.676]** `[ProviderList]` Error running command — `{"Error":"Response status code does not indicate success: NotFound (Not Found).","Command":"Get-MgBetaUserCount","StackTrace":"at Invoke-GraphDirectly, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Utility\\Utility.psm1: line 257\r\nat TryCommand, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Providers\\ProviderHelpers\\CommandTracker.psm1: line 47\r\nat Export-AADProvider, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Providers\\ExportAADProvider.psm1: line 119\r\nat Invoke-ProviderList\u003cProcess\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 829\r\nat \u003cScriptBlock\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 591\r\nat Trace-ScubaFunction, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Utility\\ScubaLogging.psm1: line 345\r\nat Invoke-SCuBA\u003cProcess\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 584\r\nat \u003cScriptBlock\u003e, \u003cNo file\u003e: line 1"}`
- :warning: **[12:05:14.754]** `[ProviderList]` Error running command — `{"Error":"Response status code does not indicate success: BadRequest (Bad Request).","Command":"Get-MgBetaPolicyAuthorizationPolicy","StackTrace":"at Invoke-GraphDirectly, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Utility\\Utility.psm1: line 257\r\nat TryCommand, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Providers\\ProviderHelpers\\CommandTracker.psm1: line 47\r\nat Export-AADProvider, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Providers\\ExportAADProvider.psm1: line 127\r\nat Invoke-ProviderList\u003cProcess\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 829\r\nat \u003cScriptBlock\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 591\r\nat Trace-ScubaFunction, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Utility\\ScubaLogging.psm1: line 345\r\nat Invoke-SCuBA\u003cProcess\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 584\r\nat \u003cScriptBlock\u003e, \u003cNo file\u003e: line 1"}`
- :warning: **[12:05:14.821]** `[ProviderList]` Error running command — `{"Error":"Response status code does not indicate success: BadRequest (Bad Request).","Command":"Get-MgBetaDirectorySetting","StackTrace":"at Invoke-GraphDirectly, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Utility\\Utility.psm1: line 257\r\nat TryCommand, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Providers\\ProviderHelpers\\CommandTracker.psm1: line 47\r\nat Export-AADProvider, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Providers\\ExportAADProvider.psm1: line 130\r\nat Invoke-ProviderList\u003cProcess\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 829\r\nat \u003cScriptBlock\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 591\r\nat Trace-ScubaFunction, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Utility\\ScubaLogging.psm1: line 345\r\nat Invoke-SCuBA\u003cProcess\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 584\r\nat \u003cScriptBlock\u003e, \u003cNo file\u003e: line 1"}`
- :warning: **[12:05:14.907]** `[ProviderList]` Error running command — `{"Error":"Response status code does not indicate success: BadRequest (Bad Request).","Command":"Get-MgBetaPolicyAuthenticationMethodPolicy","StackTrace":"at Invoke-GraphDirectly, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Utility\\Utility.psm1: line 257\r\nat TryCommand, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Providers\\ProviderHelpers\\CommandTracker.psm1: line 47\r\nat Export-AADProvider, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Providers\\ExportAADProvider.psm1: line 133\r\nat Invoke-ProviderList\u003cProcess\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 829\r\nat \u003cScriptBlock\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 591\r\nat Trace-ScubaFunction, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Utility\\ScubaLogging.psm1: line 345\r\nat Invoke-SCuBA\u003cProcess\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 584\r\nat \u003cScriptBlock\u003e, \u003cNo file\u003e: line 1"}`
- :warning: **[12:05:15.001]** `[ProviderList]` Error running command — `{"Error":"Response status code does not indicate success: BadRequest (Bad Request).","Command":"Get-MgBetaDomain","StackTrace":"at Invoke-GraphDirectly, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Utility\\Utility.psm1: line 257\r\nat TryCommand, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Providers\\ProviderHelpers\\CommandTracker.psm1: line 47\r\nat Export-AADProvider, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Providers\\ExportAADProvider.psm1: line 151\r\nat Invoke-ProviderList\u003cProcess\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 829\r\nat \u003cScriptBlock\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 591\r\nat Trace-ScubaFunction, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Utility\\ScubaLogging.psm1: line 345\r\nat Invoke-SCuBA\u003cProcess\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 584\r\nat \u003cScriptBlock\u003e, \u003cNo file\u003e: line 1"}`
- :warning: **[12:05:16.008]** `[ProviderList]` Error running command — `{"Error":"Response status code does not indicate success: Forbidden (Forbidden).","Command":"Get-ApplicationsWithRiskyPermissions","StackTrace":"at Invoke-GraphDirectly, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Utility\\Utility.psm1: line 257\r\nat Get-ApplicationsWithRiskyPermissions\u003cProcess\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Providers\\ProviderHelpers\\AADRiskyPermissionsHelper.psm1: line 205\r\nat TryCommand, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Providers\\ProviderHelpers\\CommandTracker.psm1: line 57\r\nat Export-AADProvider, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Providers\\ExportAADProvider.psm1: line 161\r\nat Invoke-ProviderList\u003cProcess\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 829\r\nat \u003cScriptBlock\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 591\r\nat Trace-ScubaFunction, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Utility\\ScubaLogging.psm1: line 345\r\nat Invoke-SCuBA\u003cProcess\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 584\r\nat \u003cScriptBlock\u003e, \u003cNo file\u003e: line 1"}`
- :warning: **[12:05:16.163]** `[ProviderList]` Error running command — `{"Error":"Response status code does not indicate success: BadRequest (Bad Request).","Command":"Get-ServicePrincipalsWithRiskyPermissions","StackTrace":"at Invoke-GraphDirectly, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Utility\\Utility.psm1: line 257\r\nat Get-ServicePrincipalsWithRiskyPermissions\u003cProcess\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Providers\\ProviderHelpers\\AADRiskyPermissionsHelper.psm1: line 328\r\nat TryCommand, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Providers\\ProviderHelpers\\CommandTracker.psm1: line 57\r\nat Export-AADProvider, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Providers\\ExportAADProvider.psm1: line 165\r\nat Invoke-ProviderList\u003cProcess\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 829\r\nat \u003cScriptBlock\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 591\r\nat Trace-ScubaFunction, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Utility\\ScubaLogging.psm1: line 345\r\nat Invoke-SCuBA\u003cProcess\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 584\r\nat \u003cScriptBlock\u003e, \u003cNo file\u003e: line 1"}`
- :warning: **[12:05:16.295]** `[ProviderList]` Error running command — `{"Error":"Response status code does not indicate success: BadRequest (Bad Request).","Command":"Get-LegacyExchangeServicePrincipal","StackTrace":"at Invoke-GraphDirectly, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Utility\\Utility.psm1: line 257\r\nat Get-LegacyExchangeServicePrincipal\u003cProcess\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Providers\\ProviderHelpers\\AADHybridExchangeHelper.psm1: line 72\r\nat TryCommand, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Providers\\ProviderHelpers\\CommandTracker.psm1: line 57\r\nat Export-AADProvider, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Providers\\ExportAADProvider.psm1: line 210\r\nat Invoke-ProviderList\u003cProcess\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 829\r\nat \u003cScriptBlock\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 591\r\nat Trace-ScubaFunction, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Utility\\ScubaLogging.psm1: line 345\r\nat Invoke-SCuBA\u003cProcess\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 584\r\nat \u003cScriptBlock\u003e, \u003cNo file\u003e: line 1"}`
- :x: **[12:05:16.697]** `[CreateReport]` Fatal error in report creation — `{"Error":"Invalid JSON primitive: .","StackTrace":"at New-Report, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\CreateReport\\CreateReport.psm1: line 202\r\nat Invoke-ReportCreation\u003cProcess\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 1536\r\nat \u003cScriptBlock\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 650\r\nat Trace-ScubaFunction, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Utility\\ScubaLogging.psm1: line 345\r\nat Invoke-SCuBA\u003cProcess\u003e, C:\\Tools\\ScubaGear\\PowerShell\\ScubaGear\\Modules\\Orchestrator.psm1: line 642\r\nat \u003cScriptBlock\u003e, \u003cNo file\u003e: line 1"}`
- :x: **[12:05:16.701]** `[FunctionTrace]` EXIT: Invoke-ReportCreation (ERROR) — `{"Status":"Error","ExecutionTimeMs":95,"ErrorType":"RuntimeException"}`

## Run Timeline

```
12:05:06.647 [INFO ] [LoggingSystem]        ScubaGear Logging Initialized - Level: Debug, Tracing: True, Transcript: False
12:05:06.659 [INFO ] [LoggingSystem]        Enhanced debug logging enabled - automatic function tracing active
12:05:06.660 [INFO ] [InvokeScuba]          ScubaGear logging initialized  | Version=1.8.0; TranscriptEnabled=@{IsPresent=False}; Environment=commercial; LogFolder=C:\dev\scuba-poc\scuba-output\M365BaselineConformance_2026_06_13_12_05_06\DebugLogs; OutputFolder=C:\dev\scuba-poc\scuba-output\M365BaselineConformance_2026_06_13_12_05_06; ProductNames=aad
12:05:06.678 [INFO ] [InvokeScuba]          Cmdlet invocation captured  | Command=Invoke-SCuBA; BoundParameterCount=2
12:05:06.681 [INFO ] [InvokeScuba]          Capturing environment diagnostics
12:05:11.713 [INFO ] [ModuleSnapshot]       Module snapshot 'InitialLoad' captured: 2 module(s)  | SnapshotName=InitialLoad; ModulePathsSummary=ScubaGear=C:\Users\[***REDACTED***]\OneDrive\Documents\WindowsPowerShell\Modules\ScubaGear\1.8.0; ScubaGear=C:\Tools\ScubaGear\PowerShell\ScubaGear; ModulePaths=ScubaGear=C:\Users\[***REDACTED***]\OneDrive\Documents\WindowsPowerShell\Modules\ScubaGear\1.8.0 ScubaGear=C:\Tools\ScubaGear\PowerShell\ScubaGear; ModuleCount=2; ModuleSummary=ScubaGear (1.8.0); ScubaGear (1.8.0); Modules=ScubaGear (1.8.0) ScubaGear (1.8.0)
12:05:11.717 [INFO ] [InvokeScuba]          Starting product authentication...  | ProductNames=aad; M365Environment=commercial; UsesServicePrincipal=False
12:05:13.513 [INFO ] [ModuleSnapshot]       Module snapshot 'PostAuthentication' captured: 3 module(s)  | SnapshotName=PostAuthentication; ModulePathsSummary=Microsoft.Graph.Authentication=C:\Users\[***REDACTED***]\OneDrive\Documents\WindowsPowerShell\Modules\Microsoft.Graph.Authentication\2.25.0; ScubaGear=C:\Users\[***REDACTED***]\OneDrive\Documents\WindowsPowerShell\Modules\ScubaGear\1.8.0; ScubaGear=C:\Tools\ScubaGear\PowerShell\ScubaGear; ModulePaths=Microsoft.Graph.Authentication=C:\Users\[***REDACTED***]\OneDrive\Documents\WindowsPowerShell\Modules\Microsoft.Graph.Authentication\2.25.0 ScubaGear=C:\Users\[***REDACTED***]\OneDrive\Documents\WindowsPowerShell\Modules\ScubaGear\1.8.0 ScubaGear=C:\Tools\ScubaGear\PowerShell\ScubaGear; ModuleCount=3; ModuleSummary=Microsoft.Graph.Authentication (2.25.0); ScubaGear (1.8.0); ScubaGear (1.8.0); Modules=Microsoft.Graph.Authentication (2.25.0) ScubaGear (1.8.0) ScubaGear (1.8.0)
12:05:13.516 [INFO ] [InvokeScuba]          Retrieving tenant details...  | ProductNames=aad; M365Environment=commercial
12:05:14.093 [INFO ] [InvokeScuba]          Starting provider execution...  | ModuleVersion=1.8.0; ProductNames=aad; Guid=bb51eb7e-ede7-47cd-837c-28385fe1e0c7
12:05:14.111 [INFO ] [FunctionTrace]        ENTER: Invoke-ProviderList  | ModuleVersion=1.8.0; ScubaConfig=[ScubaConfig Object]; OutFolderPath=C:\dev\scuba-poc\scuba-output\M365BaselineConformance_2026_06_13_12_05_06; Guid=bb51eb7e-ede7-47cd-837c-28385fe1e0c7; TenantDetails=[TenantDetails Object]
12:05:14.358 [WARN ] [ProviderList]         Error running command  | Error=Response status code does not indicate success: BadRequest (Bad Request).; Command=Get-MgBetaIdentityConditionalAccessPolicy; StackTrace=at Invoke-GraphDirectly, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\Utility.psm1: line 257
at TryCommand, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 47
at Export-AADProvider, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ExportAADProvider.psm1: line 25
at Invoke-ProviderList<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 829
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 591
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 345
at Invoke-SCuBA<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 584
at <ScriptBlock>, <No file>: line 1
12:05:14.473 [WARN ] [ProviderList]         Error running command  | Error=Response status code does not indicate success: BadRequest (Bad Request).; Command=Get-MgBetaSubscribedSku; StackTrace=at Invoke-GraphDirectly, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\Utility.psm1: line 257
at TryCommand, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 47
at Export-AADProvider, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ExportAADProvider.psm1: line 48
at Invoke-ProviderList<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 829
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 591
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 345
at Invoke-SCuBA<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 584
at <ScriptBlock>, <No file>: line 1
12:05:14.676 [WARN ] [ProviderList]         Error running command  | Error=Response status code does not indicate success: NotFound (Not Found).; Command=Get-MgBetaUserCount; StackTrace=at Invoke-GraphDirectly, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\Utility.psm1: line 257
at TryCommand, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 47
at Export-AADProvider, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ExportAADProvider.psm1: line 119
at Invoke-ProviderList<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 829
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 591
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 345
at Invoke-SCuBA<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 584
at <ScriptBlock>, <No file>: line 1
12:05:14.754 [WARN ] [ProviderList]         Error running command  | Error=Response status code does not indicate success: BadRequest (Bad Request).; Command=Get-MgBetaPolicyAuthorizationPolicy; StackTrace=at Invoke-GraphDirectly, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\Utility.psm1: line 257
at TryCommand, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 47
at Export-AADProvider, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ExportAADProvider.psm1: line 127
at Invoke-ProviderList<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 829
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 591
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 345
at Invoke-SCuBA<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 584
at <ScriptBlock>, <No file>: line 1
12:05:14.821 [WARN ] [ProviderList]         Error running command  | Error=Response status code does not indicate success: BadRequest (Bad Request).; Command=Get-MgBetaDirectorySetting; StackTrace=at Invoke-GraphDirectly, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\Utility.psm1: line 257
at TryCommand, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 47
at Export-AADProvider, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ExportAADProvider.psm1: line 130
at Invoke-ProviderList<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 829
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 591
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 345
at Invoke-SCuBA<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 584
at <ScriptBlock>, <No file>: line 1
12:05:14.907 [WARN ] [ProviderList]         Error running command  | Error=Response status code does not indicate success: BadRequest (Bad Request).; Command=Get-MgBetaPolicyAuthenticationMethodPolicy; StackTrace=at Invoke-GraphDirectly, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\Utility.psm1: line 257
at TryCommand, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 47
at Export-AADProvider, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ExportAADProvider.psm1: line 133
at Invoke-ProviderList<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 829
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 591
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 345
at Invoke-SCuBA<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 584
at <ScriptBlock>, <No file>: line 1
12:05:15.001 [WARN ] [ProviderList]         Error running command  | Error=Response status code does not indicate success: BadRequest (Bad Request).; Command=Get-MgBetaDomain; StackTrace=at Invoke-GraphDirectly, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\Utility.psm1: line 257
at TryCommand, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 47
at Export-AADProvider, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ExportAADProvider.psm1: line 151
at Invoke-ProviderList<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 829
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 591
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 345
at Invoke-SCuBA<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 584
at <ScriptBlock>, <No file>: line 1
12:05:16.008 [WARN ] [ProviderList]         Error running command  | Error=Response status code does not indicate success: Forbidden (Forbidden).; Command=Get-ApplicationsWithRiskyPermissions; StackTrace=at Invoke-GraphDirectly, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\Utility.psm1: line 257
at Get-ApplicationsWithRiskyPermissions<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\AADRiskyPermissionsHelper.psm1: line 205
at TryCommand, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 57
at Export-AADProvider, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ExportAADProvider.psm1: line 161
at Invoke-ProviderList<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 829
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 591
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 345
at Invoke-SCuBA<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 584
at <ScriptBlock>, <No file>: line 1
12:05:16.163 [WARN ] [ProviderList]         Error running command  | Error=Response status code does not indicate success: BadRequest (Bad Request).; Command=Get-ServicePrincipalsWithRiskyPermissions; StackTrace=at Invoke-GraphDirectly, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\Utility.psm1: line 257
at Get-ServicePrincipalsWithRiskyPermissions<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\AADRiskyPermissionsHelper.psm1: line 328
at TryCommand, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 57
at Export-AADProvider, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ExportAADProvider.psm1: line 165
at Invoke-ProviderList<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 829
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 591
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 345
at Invoke-SCuBA<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 584
at <ScriptBlock>, <No file>: line 1
12:05:16.295 [WARN ] [ProviderList]         Error running command  | Error=Response status code does not indicate success: BadRequest (Bad Request).; Command=Get-LegacyExchangeServicePrincipal; StackTrace=at Invoke-GraphDirectly, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\Utility.psm1: line 257
at Get-LegacyExchangeServicePrincipal<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\AADHybridExchangeHelper.psm1: line 72
at TryCommand, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ProviderHelpers\CommandTracker.psm1: line 57
at Export-AADProvider, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Providers\ExportAADProvider.psm1: line 210
at Invoke-ProviderList<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 829
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 591
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 345
at Invoke-SCuBA<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 584
at <ScriptBlock>, <No file>: line 1
12:05:16.330 [INFO ] [FunctionTrace]        EXIT: Invoke-ProviderList  (2.2 s)
12:05:16.330 [INFO ] [InvokeScuba]          Starting OPA Rego evaluation...  | ProductNames=aad; OPAPath=C:\Users\[***REDACTED***]\.scubagear\Tools
12:05:16.348 [INFO ] [FunctionTrace]        ENTER: Invoke-RunRego  | OutFolderPath=C:\dev\scuba-poc\scuba-output\M365BaselineConformance_2026_06_13_12_05_06; ScubaConfig=[ScubaConfig Object]; ParentPath=C:\Tools\ScubaGear\PowerShell\ScubaGear
12:05:16.597 [INFO ] [FunctionTrace]        EXIT: Invoke-RunRego  (243 ms)
12:05:16.599 [INFO ] [InvokeScuba]          Starting report creation...  | DarkMode=False; KeepIndividualJSON=False; Quiet=False
12:05:16.604 [INFO ] [FunctionTrace]        ENTER: Invoke-ReportCreation  | OutFolderPath=C:\dev\scuba-poc\scuba-output\M365BaselineConformance_2026_06_13_12_05_06; ModuleVersion=1.8.0; TenantDetails=[TenantDetails Object]; ScubaConfig=[ScubaConfig Object]; Quiet=@{IsPresent=False}; DarkMode=@{IsPresent=False}
12:05:16.697 [ERROR] [CreateReport]         Fatal error in report creation  | Error=Invalid JSON primitive: .; StackTrace=at New-Report, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\CreateReport\CreateReport.psm1: line 202
at Invoke-ReportCreation<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 1536
at <ScriptBlock>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 650
at Trace-ScubaFunction, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Utility\ScubaLogging.psm1: line 345
at Invoke-SCuBA<Process>, C:\Tools\ScubaGear\PowerShell\ScubaGear\Modules\Orchestrator.psm1: line 642
at <ScriptBlock>, <No file>: line 1
12:05:16.701 [ERROR] [FunctionTrace]        EXIT: Invoke-ReportCreation (ERROR)  (95 ms)
12:05:16.767 [INFO ] [InvokeScuba]          ScubaGear assessment completed! Check report in [C:\dev\scuba-poc\scuba-output\M365BaselineConformance_2026_06_13_12_05_06]
12:05:16.772 [INFO ] [LoggingSystem]        ScubaGear logging session ending
```

## Comments / Additional Notes

_Use this section to add any additional context, observations, or notes about the issue:_






