---
title: AskUI-StartController
---

### Syntax
```powershell
Start-AskUIController [-DisplayNum <int>] [-Maximize] [-Runtime <string>] [-Port <int>] [-ActionWaitTime <int>] [-WebSocketHost <string>] [-LogFile <string>] [-LogLevel <string>] [-HideOverlay] [-DebugDraw] [-RunInBackground] [<CommonParameters>]
```

## DESCRIPTION


** PARAMETERS **:
- -ActionWaitTime | &lt;int&gt; - Waits x milliseconds after each action. This can be used to slow down or speed up the execution. (Default: 1000) 
- -DebugDraw | &lt;switch&gt; - Shows debug drawing. 
- -DisplayNum | &lt;int&gt; - Select a display. e.g., 0 
- -HideOverlay | &lt;switch&gt; - Hides the overlay. 
- -LogFile | &lt;string&gt; - Output path for generated logs. 
- -LogLevel | &lt;string&gt; - Log level. (Default: debug) 
- -Maximize | &lt;switch&gt; - Start the app as a maximized window. 
- -Port | &lt;int&gt; - Port of the web socket port server to connect via the runner-protocol. (Default: 6769) 
- -RunInBackground | &lt;switch&gt; - Start the app in background mode. 
- -Runtime | &lt;string&gt; - Select runtime. (Default: desktop) 
- -WebSocketHost | &lt;string&gt; - Host of the web socket server to connect via the runner-protocol. (Default: 127.0.0.1)
## INPUTS
None


## OUTPUTS
System.Object

## NOTES


## EXAMPLES
