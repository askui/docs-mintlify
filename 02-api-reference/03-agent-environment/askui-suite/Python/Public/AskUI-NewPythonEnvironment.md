---
title: AskUI-NewPythonEnvironment
---

# AskUI-NewPythonEnvironment

### SYNOPSIS

Creates a new Python virtual environment.

### DESCRIPTION

The AskUI-NewPythonEnvironment cmdlet creates a new Python virtual environment with the specified name. Optionally, it can activate the environment after creation.

### PARAMETERS

- `-Name` | _&lt;String&gt;_ - The name of the new virtual environment. 
- `-Activate` | _&lt;SwitchParameter&gt;_ - If specified, activates the environment in the current shell after creation.

### EXAMPLES

#### EXAMPLE 1

```powershell
AskUI-NewPythonEnvironment -Name "myenv" -Activate
Creates and activates a new Python environment named "myenv".
```

