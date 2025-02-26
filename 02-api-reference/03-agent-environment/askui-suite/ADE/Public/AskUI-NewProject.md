---
title: AskUI-NewProject
---

# AskUI-NewProject

### SYNOPSIS

Creates a new AskUI Node.js project.

### DESCRIPTION

The AskUI-NewProject cmdlet creates a new AskUI project in a subdirectory within the current directory.
It sets up the project structure with optional workspace ID, token, and Node.js version configurations.

### PARAMETERS

- `-ProjectName` | _&lt;String&gt;_ - Name of the project that will be created in a subdirectory within the current directory. 
- `-WorkspaceId` | _&lt;String&gt;_ - AskUI Workspace ID. 
- `-Token` | _&lt;String&gt;_ - AskUI Token. 
- `-AskUINodeJsVersion` | _&lt;String&gt;_ - AskUI NodeJs Version. Default: '0.20.10' 
- `-SkipChangingPathUserPrompt` | _&lt;SwitchParameter&gt;_ - Skip the user prompt for changing the path. 
- `-TestFramework` | _&lt;String&gt;_ - The test framework to use. Valid values: 'jest' 
- `-TypeScriptConfig` | _&lt;String&gt;_ - Specify whether to overwrite tsconfig.json. Valid values: 'true', 'false'

### EXAMPLES

#### EXAMPLE 1

```powershell
AskUI-NewProject -ProjectName "MyAskUIProject"
Creates a new AskUI project named "MyAskUIProject" with default settings.
```
 
#### EXAMPLE 2

```powershell
AskUI-NewProject -ProjectName "TestProject" -WorkspaceId "ws123" -Token "tk456" -TestFramework "jest"
Creates a new AskUI project with specified workspace ID, token and test framework.
```
 
#### EXAMPLE 3

```powershell
AskUI-NewProject -ProjectName "AutomationProject" -AskUINodeJsVersion "0.20.10" -SkipChangingPathUserPrompt
Creates a new project using specific Node.js version and skips path change prompt.
```

