---
title: AskUI-StartRunner
---

# AskUI-StartRunner

### SYNOPSIS

Starts the AskUI Runner service.

### DESCRIPTION

The AskUI-StartRunner cmdlet initializes and starts the AskUI Runner service.
Can optionally install the Runner if not already present.

### PARAMETERS

- `-InstallIfNotExists` | _&lt;SwitchParameter&gt;_ - When specified, installs AskUI Runner if it is not already installed.

### EXAMPLES

#### EXAMPLE 1

```powershell
AskUI-StartRunner
Starts the AskUI Runner service.
```
 
#### EXAMPLE 2

```powershell
AskUI-StartRunner -InstallIfNotExists
Installs AskUI Runner if needed, then starts the service.
```

