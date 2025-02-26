---
title: AskUI-TestConnection
---


### SYNOPSIS

Tests the connection to a specified URL using the current proxy settings.

### PARAMETERS

- `-TestURL` | _&lt;String&gt;_ - (Optional) The URL to test the connection. The default is 'https://inference.askui.com/health'.

### NOTES

This function supports the -Verbose switch. When the -Verbose switch is used,
the function provides detailed output during the execution.

### EXAMPLES

#### EXAMPLE 1

```powershell
AskUI-TestConnection
```
 
#### EXAMPLE 2

```powershell
AskUI-TestConnection -TestURL 'https://example.com'
```

