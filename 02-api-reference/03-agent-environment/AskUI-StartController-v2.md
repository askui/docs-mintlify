---
title: AskUI-StartController
---

### SYNOPSIS
Starts the AskUI Controller application.


### Syntax
```powershell
Start-AskUIController [-DisplayNum <Int32>] [-Maximize] [-Runtime <String>] [-Port <Int32>] [-ActionWaitTime <Int32>] [-WebSocketHost <String>] [-LogFile <String>] [-LogLevel <String>] [-HideOverlay] [-DebugDraw] [-RunInBackground] [<CommonParameters>]
```

### DESCRIPTION
The Start-AskUIController cmdlet initializes and starts the AskUI Controller application. 
It provides various configuration options including display selection, runtime environment, 
websocket settings, and logging configurations.


**PARAMETERS**:
- `-DisplayNum` |  _&lt;Int32&gt;_ - Select a display. e.g., 0 
- `-Maximize`  - Start the app as a maximized window. 
- `-Runtime` |  _&lt;String&gt;_ - Select runtime between (desktop | android). (Default: desktop) 
- `-Port` |  _&lt;Int32&gt;_ - Port of the web socket port server to connect via the runner-protocol. (Default: 6769) 
- `-ActionWaitTime` |  _&lt;Int32&gt;_ - Waits x milliseconds after each action. This can be used to slow down or speed up the execution. (Default: 1000) 
- `-WebSocketHost` |  _&lt;String&gt;_ - Host of the web socket server to connect via the runner-protocol. (Default: 127.0.0.1) 
- `-LogFile` |  _&lt;String&gt;_ - Output path for generated logs. 
- `-LogLevel` |  _&lt;String&gt;_ - Log level. (Default: debug) 
- `-HideOverlay`  - Hide the overlay display. 
- `-DebugDraw`  - Enable debug drawing. 
- `-RunInBackground`  - Run the application in background mode.
### NOTES
File: Public.UiController.psm1
Author: AskUI Team
Version: 1.0

### EXAMPLES
#### EXAMPLE 1
```powershell
ADE> Start-AskUIController
Starts the AskUI Controller with default settings.
```
 
#### EXAMPLE 2
```powershell
ADE> Start-AskUIController -DisplayNum 1 -Maximize -Runtime desktop
Starts the AskUI Controller on display 1 in maximized mode using desktop runtime.
```
 
#### EXAMPLE 3
```powershell
ADE> Start-AskUIController -Port 6770 -LogLevel debug -RunInBackground
Starts the AskUI Controller on port 6770 with debug logging in background mode.
```

