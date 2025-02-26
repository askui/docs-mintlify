---
title: AskUI-EnablePythonEnvironment
---

# AskUI-EnablePythonEnvironment

### SYNOPSIS

Activates a Python virtual environment.

### DESCRIPTION

The AskUI-EnablePythonEnvironment cmdlet activates a specified Python virtual environment. Optionally, it can create the environment if it does not exist.

### PARAMETERS

- `-Name` | _&lt;String&gt;_ - The name of the environment to activate. 
- `-CreateIfNotExists` | _&lt;SwitchParameter&gt;_ - If specified, creates the environment if it does not exist before activating it.

### EXAMPLES

#### EXAMPLE 1

```powershell
AskUI-EnablePythonEnvironment -Name "myenv" -CreateIfNotExists
Activates the "myenv" virtual environment, creating it if necessary.
```

