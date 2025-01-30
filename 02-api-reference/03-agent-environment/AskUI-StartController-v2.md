---
title: AskUI-StartController

---

### DESCRIPTION


### Syntax
```powershell

Start-AskUIController [-DisplayNum <int>] [-Maximize] [-Runtime <string>] [-Port <int>] [-ActionWaitTime <int>] [-WebSocketHost <string>] [-LogFile <string>] [-LogLevel <string>] [-HideOverlay] [-DebugDraw] [-RunInBackground] [<CommonParameters>]

```

**PARAMETERS**:
- `-ActionWaitTime` |  _&lt;int&gt;_ - Waits x milliseconds after each action. This can be used to slow down or speed up the execution. (Default: 1000) 
- `-DebugDraw`  - Shows debug drawing. 
- `-DisplayNum` |  _&lt;int&gt;_ - Select a display. e.g., 0 
- `-HideOverlay`  - Hides the overlay. 
- `-LogFile` |  _&lt;string&gt;_ - Output path for generated logs. 
- `-LogLevel` |  _&lt;string&gt;_ - Log level. (Default: debug) 
- `-Maximize`  - Start the app as a maximized window. 
- `-Port` |  _&lt;int&gt;_ - Port of the web socket port server to connect via the runner-protocol. (Default: 6769) 
- `-RunInBackground`  - Start the app in background mode. 
- `-Runtime` |  _&lt;string&gt;_ - Select runtime. (Default: desktop) 
- `-WebSocketHost` |  _&lt;string&gt;_ - Host of the web socket server to connect via the runner-protocol. (Default: 127.0.0.1)
### NOTES


### EXAMPLES
