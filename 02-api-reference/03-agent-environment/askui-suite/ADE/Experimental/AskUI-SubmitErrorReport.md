---
title: AskUI-SubmitErrorReport
---

# AskUI-SubmitErrorReport

### SYNOPSIS

Submits an AskUI error report.

### DESCRIPTION

The AskUI-SubmitErrorReport cmdlet uploads a compressed error report archive to AskUI's support system
for analysis and troubleshooting.

### PARAMETERS

- `-AbsoluteZipFileName` | _&lt;String&gt;_ - Absolute path to the error report archive to be submitted.

### EXAMPLES

#### EXAMPLE 1

```powershell
AskUI-SubmitErrorReport -AbsoluteZipFileName "C:\ErrorReports\askui-error-report-20240318.zip"
Submits the specified error report archive for analysis.
```

