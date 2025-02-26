---
title: AskUI-CompressErrorReport
---


### SYNOPSIS

Compresses an AskUI error report.

### DESCRIPTION

The AskUI-CompressErrorReport cmdlet creates a compressed archive of an expanded error report 
identified by its GUID. The expanded report directory can optionally be preserved after compression.

### PARAMETERS

- `-ErrorReportGUID` | _&lt;String&gt;_ - Error report GUIDs to be compressed. 
- `-SkipCleanup` | _&lt;SwitchParameter&gt;_ - Skip cleanup of the expanded error report directory.

### EXAMPLES

#### EXAMPLE 1

```powershell
AskUI-CompressErrorReport -ErrorReportGUID "550e8400-e29b-41d4-a716-446655440000"
Compresses the error report with the specified GUID and removes the expanded directory.
```
 
#### EXAMPLE 2

```powershell
AskUI-CompressErrorReport -ErrorReportGUID "550e8400-e29b-41d4-a716-446655440000" -SkipCleanup
Compresses the error report while preserving the expanded directory.
```

