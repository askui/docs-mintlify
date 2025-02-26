---
title: AskUI-SetSettings
---

# AskUI-SetSettings

### SYNOPSIS

Configures AskUI environment settings.

### DESCRIPTION

The AskUI-SetSettings cmdlet allows configuration of various AskUI environment settings including 
proxy settings, certificates, authentication tokens, workspace IDs, logging levels, and update locations.

### PARAMETERS

- `-HttpProxy` | _&lt;String&gt;_ - Proxy address for http requests. 
- `-HttpsProxy` | _&lt;String&gt;_ - Proxy address for https requests. 
- `-ServerIdentityCertificate` | _&lt;String&gt;_ - Sets a server identity certificate that shall be accepted by our tooling. 
- `-Token` | _&lt;String&gt;_ - AskUI Token. 
- `-WorkspaceId` | _&lt;String&gt;_ - AskUI Workspace ID. 
- `-LogLevel` | _&lt;String&gt;_ - Log level. (Default: info)
Valid values: Verbose, Debug, Info, Warning, Error, Fatal 
- `-Location` | _&lt;String&gt;_ - Update level. (Default: User)
Valid values: User, Project

### EXAMPLES

#### EXAMPLE 1

```powershell
AskUI-SetSettings -HttpProxy "http://proxy:8080" -HttpsProxy "https://proxy:8080"
Sets HTTP and HTTPS proxy settings.
```
 
#### EXAMPLE 2

```powershell
AskUI-SetSettings -Token "myToken" -WorkspaceId "wsId123" -LogLevel "Debug"
Configures authentication and logging settings.
```
 
#### EXAMPLE 3

```powershell
AskUI-SetSettings -Location "Project" -ServerIdentityCertificate "path/to/cert"
Sets update location to Project level and configures server certificate.
```

