---
title: AskUI-BuildErrorReport
---

# AskUI-BuildErrorReport

### SYNOPSIS

Builds an error report for AskUI issues.

### DESCRIPTION

The AskUI-BuildErrorReport cmdlet creates a comprehensive error report by gathering logs, 
project files, and additional artifacts to help troubleshoot AskUI issues.

### PARAMETERS

- `-Project` | _&lt;String[]&gt;_ - Project directories to be included in the error report. 
- `-AdditionalFiles` | _&lt;String[]&gt;_ - Additional files to be included in the error report. (e.g. annotations, screenshots) 
- `-MaxLogFileAgeInHours` | _&lt;Int32&gt;_ - Maximum age of log files to be included in the error report.
Default: 96 hours (4 days)

### EXAMPLES

#### EXAMPLE 1

```powershell
AskUI-BuildErrorReport
Creates an error report using default settings.
```
 
#### EXAMPLE 2

```powershell
AskUI-BuildErrorReport -Project "C:\MyProject" -MaxLogFileAgeInHours 48
Creates an error report including specified project files and logs from last 48 hours.
```
 
#### EXAMPLE 3

```powershell
AskUI-BuildErrorReport -AdditionalFiles "screenshot.png","error.log" 
Creates an error report including specified additional files.
```

