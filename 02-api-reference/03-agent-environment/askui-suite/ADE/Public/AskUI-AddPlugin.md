---
title: AskUI-AddPlugin
---


### SYNOPSIS

Adds an ADE plugin to the current session.

### DESCRIPTION

The AskUI-AddPlugin cmdlet adds a ADE plugin to the current AskUI session. It allows specifying
the plugin version, name, and files to load. The plugin can be added temporarily for the 
current session only or configured to load on startup.

### PARAMETERS

- `-PluginVersion` | _&lt;String&gt;_ - Version of the plugin that will be added to the current session. 
- `-PluginName` | _&lt;String&gt;_ - Name of the plugin that will be added to the current session. 
- `-AbsolutePluginFileNames` | _&lt;String[]&gt;_ - Absolute file names of the plugin that will be added to the current session. 
- `-AddOnlyDuringThisSession` | _&lt;SwitchParameter&gt;_ - When specified, loads the plugin only for the current session without adding it to startup.

### EXAMPLES

#### EXAMPLE 1

```powershell
AskUI-AddPlugin -PluginVersion "1.0.0" -PluginName "MyPlugin" -AbsolutePluginFileNames "C:\Plugins\MyPlugin.ps1"
Adds MyPlugin version 1.0.0 to the current session permanently.
```
 
#### EXAMPLE 2

```powershell
AskUI-AddPlugin -PluginVersion "2.0.0" -PluginName "TestPlugin" -AbsolutePluginFileNames @("C:\Plugins\MyCommandlet.ps1","C:\Plugins\Test2.ps1") -AddOnlyDuringThisSession
Adds TestPlugin version 2.0.0 with multiple files temporarily to the current session.
```

