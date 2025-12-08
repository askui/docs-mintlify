# AskUI Suite 25.2.1

## General

The AskUI Suite is a comprehensive bundle that includes all necessary dependencies to deliver AskUI to end users. Additionally, it addresses enterprise challenges such as user rights restrictions and proxy issues, ensuring a seamless AskUI experience.

This release focus on:
1. Enhance On-Boarding experience for Users with the new [Agent Hub](https://app.caesr.ai/)
2. Support [Python Vision Agent](https://github.com/askui/vision-agent)
3. Improve ADE
4. Improve Proxy Handling and Autodetection

## Setup

### Suported Operating Systems

- **Windows 11**
  - Version: 22H2
  - Architectures: AMD64, ARM64
- **MacOS**
  - Version: 14.x
  - Architecture: ARM64 (Apple Silicon)
- **Linux**
  - Version: Ubuntu 22.04.2
  - Architectures: AMD64, ARM64

###  Download

| OS | Arch | Link|
| --- | ----| ---|
| Windows | AMD64 | [Link](https://files.askui.com/releases/Installer/25.2.1/AskUI-Suite-25.2.1-User-Installer-Win-AMD64-Web.exe)
| Windows | ARM64 | [Link](https://files.askui.com/releases/Installer/25.2.1/AskUI-Suite-25.2.1-User-Installer-Win-ARM64-Web.exe)
| MacOS | ARM64 | [Link](https://files.askui.com/releases/Installer/25.2.1/AskUI-Suite-25.2.1-User-Installer-MacOS-ARM64-Web.run)
| Linux | AMD64 | [Link](https://files.askui.com/releases/Installer/25.2.1/AskUI-Suite-25.2.1-User-Installer-Linux-AMD64-Web.run)
| Linux | ARM64 | [Link](https://files.askui.com/releases/Installer/25.2.1/AskUI-Suite-25.2.1-User-Installer-Linux-ARM64-Web.run)

### Installation

Please follow our offical [installation guide](https://docs.askui.com/introduction/02-getting-started/02-installation-guide).

## Migration from 24.12.1 to 25.2.1

1. Uninstall AskUI Suite
    - **Windows:**  Settings -> Apps -> Installed Apps ->Select AskUI Suite -> Press deinstall
    - **Mac:** Open shell -> `sh "$ASKUI_INSTALLATION_DIRECTORY/Tools/uninstall-askui-suites.sh"`
    - **Linux:** Open shell -> `sh "$ASKUI_INSTALLATION_DIRECTORY/Tools/uninstall-askui-suites.sh`
5. Continue with the [installation guide](https://docs.askui.com/introduction/02-getting-started/02-installation-guide)
6. Create new Access Token in [Agent Hub](https://app.caesr.ai/)
7. Set the access token

## Known Issues

- **PxProxy** is available only for Windows AMD64.
- **ADE Startup Time** is slower than in the previous version.
- **Windows Users** may encounter long path issues when installing and using ADE.
- **Project Support**: `AskUI-NewProject` and `AskUI-RunProject` only support TypeScript projects.

---
# Release Notes

## New Features

### ADE: Information Commandlets

<details>
  <summary><code>AskUI-ShowAvailableCommands</code> - Displays all available commands. - <a href="https://askui.mintlify.app/02-api-reference/02-askui-suite/02-askui-suite/ADE/Public/AskUI-ShowAvailableCommands">docs</a></summary>
 
 ```bash
 (base) ADE C:\Users\MaxMustermann> AskUI-ShowAvailableCommands
Public Commands:

CommandName                             Source
-----------                             ------
AskUI-RemoveLocalProxySettings          Public.Local.Proxy
AskUI-SetLocalProxySettings             Public.Local.Proxy
AskUI-StartLocalProxy                   Public.Local.Proxy
AskUI-StopLocalProxy                    Public.Local.Proxy
AskUI-EnablePythonEnvironment           Public.PythonManager
AskUI-NewPythonEnvironment              Public.PythonManager
AskUI-RemovePythonEnvironment           Public.PythonManager
AskUI-ShowInstalledPythonPackageVersion Public.PythonManager
AskUI-ShowPythonEnvironments            Public.PythonManager
AskUI-ShowControllers                   Public.UiController
AskUI-StartController                   Public.UiController
AskUI-StopControllers                   Public.UiController
AskUI-EnableLongPath                    Public.WindowsTools
AskUI-TestLongPathSupport               Public.WindowsTools
AskUI-GetRunnerVersion                  Public.AskUIRunner
AskUI-InstallRunner                     Public.AskUIRunner
AskUI-OpenAgent                         Public.AskUIRunner
AskUI-ShowAgents                        Public.AskUIRunner
AskUI-StartRunner                       Public.AskUIRunner
AskUI-SyncAgents                        Public.AskUIRunner
AskUI-NewProject                        Public.Project.Manager
AskUI-RunProject                        Public.Project.Manager
AskUI-ImportDebugCommands               Public.ADE.UserInterface
AskUI-ImportExperimentalCommands        Public.ADE.UserInterface
AskUI-ShowAvailableCommands             Public.ADE.UserInterface
AskUI-ShowVersions                      Public.ADE.UserInterface
AskUI-TestConnection                    Public.ADE.UserInterface
AskUI-AddPlugin                         Public.Plugin.Manager
AskUI-RemovePlugin                      Public.Plugin.Manager
AskUI-ShowPlugins                       Public.Plugin.Manager
AskUI-RemoveSettings                    Public.EnvironmentManager
AskUI-SetSettings                       Public.EnvironmentManager
AskUI-ShowSettings                      Public.EnvironmentManager


Info:  To load experimental commands, run 'AskUI-ImportExperimentalCommands'.
Info:  To load debug commands, run 'AskUI-ImportDebugCommands'.
Info:  To get detailed information about a command, run 'Get-Help <CommandName>'.
```
</details>


<details>
  <summary><code>AskUI-ShowVersions</code> - Displays all AskUI components and versions.  - <a href="https://askui.mintlify.app/02-api-reference/02-askui-suite/02-askui-suite/ADE/Public/AskUI-ShowVersions">docs</a></summary>
 
 ```bash
 (base) ADE C:\Users\MaxMustermann> AskUI-ShowVersions
AskUI Suite Version: 25.2.1
Extensions:

Name                          Version Type
----                          ------- ----
ADE                           0.9.3   Component
NodeJS                        21.0.0  Component
AskUIOCRTeaching              0.4.0   Component
PowerShell                    7.4.6   Component
PxProxy                       0.9.2   Component
Python                        3.13.1  Component
AskUIRemoteDeviceController   0.14.0  Component
AskUIRemoteDeviceSnippingTool 0.2.0   Component
UIController                  0.14.8  Component
AskUIWindowsTools             1.0.0   Component
AskUIRunnerManager            0.1.0   Component
ADE.ProcessManager            0.1.0   Feature
ADE.ProjectManager            0.1.0   Feature
ADE.ErrorReporter             0.1.0   Feature
ADE.UserInterface             0.1.0   Feature
ADE.PluginManager             0.1.0   Feature
ADE.EnvironmentManager        0.1.0   Feature


```
</details>



### ADE: Proxy Commandlets
<details>
  <summary><b>Autostart</b>  of Local Proxy - Start the Local Proxy if proxy are set in the system settings when starting the <code>askui-shell</code>. Manual start of Local Proxy with <code>AskUI-StartLocalProxy</code> is not necessary anymore</summary>
 
 ```bash
PS C:\Users\MaxMustermann>  askui-shell
Starting AskUI Development Environment (ADE) ...
************************************************************
   █████╗ ███████╗██╗  ██╗██╗   ██╗██╗
  ██╔══██╗██╔════╝██║ ██╔╝██║   ██║██║
  ███████║███████╗█████╔╝ ██║   ██║██║
  ██╔══██║╚════██║██╔═██╗ ██║   ██║██║
  ██║  ██║███████║██║  ██╗╚██████╔╝██║
  ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝
  Copyright (C) askui GmbH. All rights Reserved.
************************************************************
Info:  Starting local proxy automatically ...
Info:  Starting PX proxy ...
```
</details>

<details>
  <summary><code>AskUI-TestConnection</code> - Test if an Internet Connection is available. Mostly used in an Enterprise Environment with Proxy.  - <a href="https://askui.mintlify.app/02-api-reference/02-askui-suite/02-askui-suite/ADE/Public/AskUI-TestConnection">docs</a></summary>
 
 ```bash
 (base) ADE C:\Users\MaxMustermann> AskUI-TestConnection
Info:  Testing the connection to the URL: https://inference.askui.com/health
Info:  Following proxy variables are used:
Info:    HTTP_PROXY=
Info:    HTTPS_PROXY=
Info:    NO_PROXY=
Info:  The connection to the URL 'https://inference.askui.com/health' was successful.
Info:  Response status code: 200
Info:  Response description: OK
```
</details>

### ADE: Windows Tools: Long Path Tools

On Windows, the maximum file path length is 260 characters. Exceeding this limit results in a "Destination Path Too Long" error. This tool helps users check and enable Windows Long Path support. This helps to avoid errors with Python Vision Agent.

<details>
  <summary><b>Startup Check</b> Warns Long Path Support is not enabled  - Displays a Long Path not enabled warning when starting the <code>askui-shell</code></summary>
 
 ```bash
PS C:\Users\MaxMustermann>  askui-shell
Starting AskUI Development Environment (ADE) ...
************************************************************
   █████╗ ███████╗██╗  ██╗██╗   ██╗██╗
  ██╔══██╗██╔════╝██║ ██╔╝██║   ██║██║
  ███████║███████╗█████╔╝ ██║   ██║██║
  ██╔══██║╚════██║██╔═██╗ ██║   ██║██║
  ██║  ██║███████║██║  ██╗╚██████╔╝██║
  ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝
  Copyright (C) askui GmbH. All rights Reserved.
************************************************************
Warning:  Long Path Support is not enabled. You may encounter issues with long paths, especially when using Python.
Info:  To enable Long Path Support, run the 'AskUI-EnableLongPath' commandlet in an elevated PowerShell session.
Info:  To check if Long Path Support is enabled, run the 'AskUI-TestLongPathSupport' commandlet.
```
</details>

<details>
  <summary><code>AskUI-TestLongPathSupport</code> - Check if the <a href="https://learn.microsoft.com/en-us/windows/win32/fileio/maximum-file-path-limitation?tabs=registry">LongPath</a> of file systems is enabled. If not this can result in some issues with Python.   - <a href="https://askui.mintlify.app/02-api-reference/02-askui-suite/02-askui-suite/AskUIWindowsTools/Public/AskUI-TestLongPathSupport">docs</a></summary>
 
 ```bash
 (base) ADE C:\Users\MaxMustermann>  AskUI-TestLongPathSupport
Info:  Long Path Support is enabled.
```
</details>

<details>
  <summary><code>AskUI-EnableLongPath</code> - Enables the <a href="https://learn.microsoft.com/en-us/windows/win32/fileio/maximum-file-path-limitation?tabs=registry">LongPath</a> of file systems. If not this can result in some issues with Python. <b><i>Note: Needs Administrator Rights</i></b>  - <a href="https://askui.mintlify.app/02-api-reference/02-askui-suite/02-askui-suite/AskUIWindowsTools/Public/AskUI-TestLongPathSupport">docs</a></summary>
 
 ```bash
 (base) ADE C:\Users\MaxMustermann>   AskUI-EnableLongPath
```
</details>

### ADE: Plugin Manager
The ADE plugin lets you easily add or remove custom plugins in ADE, making it useful for accessing Windows features.
<details>
  <summary><code>AskUI-AddPlugin</code> - Adds an ADE plugin to the current session. - <a href="https://askui.mintlify.app/02-api-reference/02-askui-suite/02-askui-suite/ADE/Public/AskUI-AddPlugin">docs</a></summary>

1. Create your test plugin for `HelloWorldCmdlet.psm1`:
```powershell 
function Say-Hello {
    [CmdletBinding()]
    param (
        [string]$Name = "World"
    )

    process {
        Write-Output "Hello, \$Name!"
    }
}

# Export the function to be available as a cmdlet
Export-ModuleMember -Function Say-Hello
```

8. Register the plugin in the ADE
 ```bash
 (base) ADE C:\Users\MaxMustermann> AskUI-AddPlugin -PluginVersion "1.0.0" -PluginName "MyPlugin" -AbsolutePluginFileNames "C:\Users\MaxMustermann\HelloWorldCmdlet.psm1"
WARNING: The names of some imported commands from the module 'HelloWorldCmdlet' include unapproved verbs that might make them less discoverable. To find the commands with unapproved verbs, run the Import-Module command again with the Verbose parameter. For a list of approved verbs, type Get-Verb.
```

9. Use your commandlet in the ADE: 
```bash
(base) ADE C:\Users\MaxMustermann> Say-Hello
Hello, World!
```
</details>

<details>
  <summary><code>AskUI-ShowPlugins</code> - Displays all ADE plugins to the current session. - <a href="https://askui.mintlify.app/02-api-reference/02-askui-suite/02-askui-suite/ADE/Public/AskUI-ShowPlugins">docs</a></summary>

```bash
(base) ADE C:\Users\DominikKlotz> AskUI-ShowPlugins
AskUI Suite Version: 25.2.1
Extensions:

Name     Version Type
----     ------- ----
MyPlugin 1.0.0   Plugin
```

</details>

<details>
  <summary><code>AskUI-RemovePlugin</code> - Removes an AskUI plugin from the current session. - <a href="https://askui.mintlify.app/02-api-reference/02-askui-suite/02-askui-suite/ADE/Public/AskUI-RemovePlugin">docs</a></summary>

```bash
(base) ADE C:\Users\DominikKlotz>  AskUI-RemovePlugin -PluginName MyPlugin
Info:  Plugin with name 'MyPlugin' has been removed.
```
</details>


### ADE: Python Environment Manager

The Python Environment Manager helps manage virtual environments, dependencies, and package installations, ensuring consistency across projects. It prevents conflicts and allows seamless switching between different Python versions and environments. It is used in combination with AskUI Agents from the [Agent Hub](https://app.caesr.ai/) and the [Python Vision Agent Libarary](https://github.com/askui/vision-agent)

<details>
  <summary><code>AskUI-EnablePythonEnvironment</code> - Activates a Python virtual environment. - <a href="https://askui.mintlify.app/02-api-reference/02-askui-suite/02-askui-suite/Python/Public/AskUI-EnablePythonEnvironment">docs</a></summary>

```bash
(base) ADE C:\Users\MaxMustermann>   Enable-AskUIPythonEnvironment -Name base
(base) ADE C:\Users\MaxMustermann>  
```
</details>


<details>
  <summary><code>AskUI-NewPythonEnvironment</code> - Creates a new Python virtual environment. - <a href="https://askui.mintlify.app/02-api-reference/02-askui-suite/02-askui-suite/Python/Public/AskUI-NewPythonEnvironment">docs</a></summary>

```bash
(base) ADE C:\Users\MaxMustermann>   New-AskUIPythonEnvironment -Name my-vision-agent
(base) ADE C:\Users\MaxMustermann>
```
</details>

<details>
  <summary><code>AskUI-RemovePythonEnvironment</code> - Removes an existing Python virtual environment. - <a href="https://askui.mintlify.app/02-api-reference/02-askui-suite/02-askui-suite/Python/Public/AskUI-RemovePythonEnvironment">docs</a></summary>

```bash
(base) ADE C:\Users\MaxMustermann>   Remove-AskUIPythonEnvironment -Name my-vision-agent
(base) ADE C:\Users\MaxMustermann>
```
</details>

<details>
  <summary><code>AskUI-ShowInstalledPythonPackageVersion</code> - Displays the installed version of a specified Python package. - <a href="https://askui.mintlify.app/02-api-reference/02-askui-suite/02-askui-suite/Python/Public/AskUI-ShowInstalledPythonPackageVersion">docs</a></summary>

```bash
(base) ADE C:\Users\MaxMustermann>AskUI-ShowInstalledPythonPackageVersion -PackageName askui
The version of the package 'askui' is '0.2.4'.
```
</details>

<details>
  <summary><code>AskUI-ShowPythonEnvironments</code> - Lists all available Python environments. - <a href="https://askui.mintlify.app/02-api-reference/02-askui-suite/02-askui-suite/Python/Public/AskUI-ShowPythonEnvironments">docs</a></summary>

```bash
(base) ADE C:\Users\MaxMustermann>AskUI-ShowPythonEnvironments

Name AbsoluteDirectoryName
---- ---------------------
base C:\Users\DominikKlotz\.askui\.envs\base
```
</details>



### ADE: AskUI Agents and Runner Management

AskUI Agents and Runner Management enable seamless UI automation, working with the [Agent Hub](https://app.caesr.ai) for centralized control. Runners handle execution, while Agents manage interactions, ensuring smooth and scalable automation.

<details>
  <summary><code>AskUI-GetRunnerVersion</code> - Retrieves the installed version of the AskUI Runner. - <a href="https://askui.mintlify.app/02-api-reference/02-askui-suite/02-askui-suite/AskUIRunnerManager/Public/AskUI-GetRunnerVersion">docs</a></summary>

```bash
(base) ADE C:\Users\MaxMustermann> Get-AskUIRunnerVersion
The version of the AskUI Runner is '0.2.10'.
```
</details>

<details>
  <summary><code>AskUI-InstallRunner</code> - Installs the AskUI Runner on the system. - <a href="https://askui.mintlify.app/02-api-reference/02-askui-suite/02-askui-suite/AskUIRunnerManager/Public/AskUI-InstallRunner">docs</a></summary>

```bash
(base) ADE C:\Users\MaxMustermann> AskUI-InstallRunner
Info:  The AskUI Runner with the version '0.2.10' is already installed.
```
</details>

<details>
  <summary><code>AskUI-OpenAgent</code> - Opens the AskUI Agent in VSCode or Editor. - <a href="https://askui.mintlify.app/02-api-reference/02-askui-suite/02-askui-suite/AskUIRunnerManager/Public/AskUI-OpenAgent">docs</a></summary>

```bash
(base) ADE C:\Users\MaxMustermann> Open-AskUIAgent
Opening the selected AskUI Agent directory in Visual Studio Code.
```
</details>

<details>
  <summary><code>AskUI-ShowAgents</code> - Displays all available AskUI Agents on your machine. - <a href="https://askui.mintlify.app/02-api-reference/02-askui-suite/02-askui-suite/AskUIRunnerManager/Public/AskUI-ShowAgents">docs</a></summary>

```bash
(base) ADE C:\Users\MaxMustermann>  AskUI-ShowAgents
The following Agents are available:
WorkspaceID: 'c79299d0-6cbc-465d-bca9-9cad920e5c6d'
   Agent ID: '19ceb9ee-23f0-40a1-904e-f4a3b43346ee'
   Agent Location: 'C:\Users\MaxMustermann\.askui\Workspaces\c79299d0-6cbc-465d-bca9-9cad920e5c6d\Agents\19ceb9ee-23f0-40a1-904e-f4a3b43346ee'
```
</details>

<details>
  <summary><code>AskUI-SyncAgents</code> - Synchronizes all AskUI Agents. - <a href="https://askui.mintlify.app/02-api-reference/02-askui-suite/02-askui-suite/AskUIRunnerManager/Public/AskUI-SyncAgents">docs</a></summary>

```bash
(base) ADE C:\Users\MaxMustermann>  Sync-AskUIAgents -Direction Down -Delete
2025-03-20 00:37:38,130 - INFO - Skip 19ceb9ee-23f0-40a1-904e-f4a3b43346ee/.vscode/settings.json (no changes)
2025-03-20 00:37:38,130 - INFO - Skip 19ceb9ee-23f0-40a1-904e-f4a3b43346ee/README.md (no changes)
2025-03-20 00:37:38,131 - INFO - Skip 19ceb9ee-23f0-40a1-904e-f4a3b43346ee/agent.yml (no changes)
...
(base) ADE C:\Users\MaxMustermann>  
```
</details>


## Components

### Python

We added Python 3.13.1 in our Suite. 

### AskUIRemoteDeviceController 0.14.0

- Add experimental Version of Background Automation. This allows under windows to start you're automation in a child session. 


## Improvments

### Installer & ADE Support Proxy Environment on Windows AMD64
- Migrated to Web Installer
  - Improved installation time to 5 min.  (Depends on internet connection)
- Auto Proxy Detection from the System Configurations
  -  Support Autoconfigration with PAC files
  -  Support static proxy servers



## Fixes

### AskUIRemoteDeviceController 0.14.0

- Fix segmentation bug when screen resolution changed
- Linux aui.type("///") types 777 instead
- Scroll not working
- Controller mouse event command with a count of 0 events takes too long
- Triggering single mouse events fails

### NodeJS

We updated to NodeJS 21.0.0 .

---

# **Versions**

| Name                                                   | Version |                  Release Notes                                                                |
|------------------------------------------|---------|------------------------------------------------------------------------|
| ADE                                                      | 0.9.3   |                                                                                                        |
| NodeJS                                                | 21.0.0  |  [Link](https://github.com/nodejs/node/releases/tag/v21.0.0)   |
| AskUIOCRTeaching                              | 0.4.0   |                                                                                             |
| PowerShell                                           | 7.4.6   | [Link](https://github.com/PowerShell/PowerShell/releases/tag/v7.4.6) |
| Python                                                 | 3.13.1  | [Link](https://www.python.org/downloads/release/python-3131/) |
| AskUIRemoteDeviceController            | 0.14.0  |  |
| AskUIRemoteDeviceSnippingTool       | 0.2.0   |  |
| UIController                                         | 0.14.8  |  |
| AskUIRunnerManager                         | 0.1.0   |                                                                                                        |
| ADE.ProcessManager                          | 0.1.0   |                                                                                                        |
| ADE.ProjectManager                           | 0.1.0   |                                                                                                        |
| ADE.ErrorReporter                               | 0.1.0   |                                                                                                        |
| ADE.UserInterface                               | 0.1.0   |                                                                                                        |
| ADE.PluginManager                            | 0.1.0   |                                                                                                        |
| ADE.EnvironmentManager                  | 0.1.0   |                                                                                                        |
