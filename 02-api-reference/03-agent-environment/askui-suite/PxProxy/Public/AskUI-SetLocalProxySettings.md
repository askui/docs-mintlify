---
title: AskUI-SetLocalProxySettings
---


### SYNOPSIS

Sets or updates the local proxy settings.

### PARAMETERS

- `-ProxyParameters` | _&lt;String[]&gt;_ - (Optional) The proxy parameters for the local proxy. 
- `-Port` | _&lt;Int32&gt;_ - (Optional) The port number for the local proxy. 
- `-AutoStart` | _&lt;String&gt;_ - (Optional) The flag to auto start the local proxy. Accepts 'true' or 'false'.

### NOTES

This Commandlet is only available on Windows AMD64.

### EXAMPLES

#### EXAMPLE 1

```powershell
AskUI-SetLocalProxySettings -AutoStart 'true'
```
 
#### EXAMPLE 2

```powershell
AskUI-SetLocalProxySettings -ProxyParameters 'param1', 'param2' -Port 8080 -AutoStart 'true'
```

