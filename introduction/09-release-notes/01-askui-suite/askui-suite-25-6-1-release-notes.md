# AskUI Suite 25.6.1

## General

The AskUI Suite is a comprehensive bundle that includes all necessary dependencies to deliver AskUI to end users. Additionally, it addresses enterprise challenges such as user rights restrictions and proxy issues, ensuring a seamless AskUI experience.

## Setup

### Supported Operating Systems

- **Windows**
  - Version: Windows 10 22H2 and newer
  - Architectures: AMD64, ARM64
- **MacOS**
  - Version: 14.x
  - Architecture: ARM64 (Apple Silicon)
- **Linux**
  - Version: Ubuntu 22.04.2
  - Architectures: AMD64, ARM64

### Download

| OS | Arch | Link|
| --- | ----| ---|
| Windows | AMD64 | [Link](https://files.askui.com/releases/Installer/25.6.1/AskUI-Suite-25.6.1-User-Installer-Win-AMD64-Web.exe)
| Windows | ARM64 | [Link](https://files.askui.com/releases/Installer/25.6.1/AskUI-Suite-25.6.1-User-Installer-Win-ARM64-Web.exe)
| MacOS | ARM64 | [Link](https://files.askui.com/releases/Installer/25.6.1/AskUI-Suite-25.6.1-User-Installer-MacOS-ARM64-Web.run)
| Linux | AMD64 | [Link](https://files.askui.com/releases/Installer/25.6.1/AskUI-Suite-25.6.1-User-Installer-Linux-AMD64-Web.run)
| Linux | ARM64 | [Link](https://files.askui.com/releases/Installer/25.6.1/AskUI-Suite-25.6.1-User-Installer-Linux-ARM64-Web.run)

### Installation

Please follow our official [installation guide](https://docs.askui.com/introduction/02-getting-started/02-installation-guide).


## New Feature 

<details>
  <summary><code>AskUI-StartRemoteDeviceSetupTool</code> - Allows now to configure Windows for Background Automation and other checks as Experimental</summary>

 Enable Backgournd Automation

 ```powershell
(base) ADE C:\Users\MaxMustermann> AskUI-StartRemoteDeviceSetupTool -EnableBackgroundAutomation
{
    "name": "Success",
    "code": 0,
    "data": {
        "previous": true
    }
}
```

Check OpenGL Version
 ```powershell
(base) ADE C:\Users\MaxMusermann> Start-AskUIRemoteDeviceSetupTool -CheckOpenGL
{
    "name": "Success",
    "code": 0,
    "data": {
        "version": "4.6.0 - Build 32.0.101.6127"
    }
}
```
</details>

## Improvments

<details>
  <summary><code>AskUI-OpenAgent</code> - Agent folder is opened with following order if found Cursor, VScode, AskUI VSCode, File Explorer</summary>
 
  Agent folder is opened with following order if found:
  1. local Cursor
  2. local VS Code
  3. AskUI VSCode
  4. File Explorer
</details>








## Fixes

<details>
  <summary><code>AskUI Suite Installer</code> - Update min.  Visual C++ Redistributable to avoid buggy version</summary>

 - Updated Visual C++ Redistributable requirements:
  - Minimum version: 14.34.31938
  - Shipped version: 14.40.33810
</details>

<details>
  <summary><code>AskUI Suite Installer</code> - Update supported OS Versions to Windows 10 22H2 and newer</summary>
</details>

## Improvments

<details>
  <summary><code>AskUI-NewErrorReporter</code> - Tracks now all DLL version which are used by AskUI</summary>

  Enhanced error reporting by extending ERROR report functionality to track DLLs for improved debugging
</details>

<details>
  <summary><code>AskUI-*AiElements</code> - Display correct python code for AI Element</summary>

```python
ADE C:\Users\MaxMustermann> AskUI-NewAiElement -Name "code"
#1 AI Element:
  Name: code
  File:     C:\Users\DominikKlotz\.askui\SnippingTool\AIElement\8d3c51ad-4d6a-48b1-a81c-e035ecec00fa\{4BA537B6-702E-450B-AC03-1229311C1403}.png
  Metadata: C:\Users\DominikKlotz\.askui\SnippingTool\AIElement\8d3c51ad-4d6a-48b1-a81c-e035ecec00fa\{4BA537B6-702E-450B-AC03-1229311C1403}.json
  AskUI Typescript ADK:
    Filter:  aiElement('code')
    Example: await aui.click().aiElement('code').exec()
  AskUI Python Vision Agent:
    Example: agent.click(loc.AiElement("code"))
```
</details>


<details>
  <summary><code>Agent OS</code> - Update to latest binaries</summary>
  - UIController
  - AskUIRemoteDeviceController
  - AskUIRemoteDeviceSnippingTool
</details>

<details>
  <summary><code>AskUI Typescript ADK</code> - Update to  0.25.1</summary>
</details>


## Removed

Nothing has changed

## Update AskUI ADKs

### AskUI Typescript ADK

To update your [AskUI Typescript ADK](https://github.com/askui/askui) to the new version:

1. Open your project in VSCode
2. Enter the AskUI Shell by `askui-shell`
3. Update AskUI by `npm install --dev askui@0.25.1`

### AskUI Vision Agent (Python)

To update your [AskUI Vision Agent](https://github.com/askui/vision-agent) to the new version:

1. Open your project in VSCode
2. Enable your virtual environment.
3. Enter `pip install askui==0.4.7`

## Known Issues

- **PxProxy** is available only for Windows AMD64.
- **ADE Startup Time** is slower than in the previous version.
- **Windows Users** may encounter long path issues when installing and using ADE.
- **Project Support**: `AskUI-NewProject` and `AskUI-RunProject` only support TypeScript projects.

## **Versions**

| Name                                                   | Version |                  Release Notes                                                                |
|------------------------------------------|---------|------------------------------------------------------------------------|
| ADE                                                      | 0.9.4   |                                                                                                        |
| NodeJS                                                | 21.0.0  |  [Link](https://github.com/nodejs/node/releases/tag/v21.0.0)   |
| AskUIOCRTeaching                              | 0.4.0   | [Link](https://github.com/askui/ml-ocr-text-recognition-desktop-frontend/releases/tag/v0.4.0)                                                                                            |
| PowerShell                                           | 7.4.6   | [Link](https://github.com/PowerShell/PowerShell/releases/tag/v7.4.6) |
| Python                                                 | 3.13.1  | [Link](https://www.python.org/downloads/release/python-3131/) |
| AskUIRemoteDeviceController            | 0.16.0  | [Link](https://github.com/askui/askui-ui-controller/releases/tag/25.4.1) |
| AskUIRemoteDeviceSnippingTool       | 0.2.1   | [Link](https://github.com/askui/askui-ui-controller/releases/tag/25.4.1) |
| UIController                                         | 0.14.8  | [Link](https://github.com/askui/askui-ui-controller/releases/tag/25.4.1) |
| AskUIRemoteDeviceSetupTool          | 0.1.0  | [Link](https://github.com/askui/askui-ui-controller/releases/tag/25.4.1) |
| AskUIRunnerManager                         | 0.1.0   |                                                                                                        |
| ADE.ProcessManager                          | 0.1.0   |                                                                                                        |
| ADE.ProjectManager                           | 0.1.0   |                                                                                                        |
| ADE.ErrorReporter                               | 0.1.0   |                                                                                                        |
| ADE.UserInterface                               | 0.1.0   |                                                                                                        |
| ADE.PluginManager                            | 0.1.0   |                                                                                                        |
| ADE.EnvironmentManager                  | 0.1.0   |                                                                                                        |
| AskUI Typescript ADK                  | 0.25.1 | [Link](https://github.com/askui/askui/releases/tag/v0.25.1)                                                                                                         |
| Python Vision Agent                  |  0.4.7   | [Link](https://github.com/askui/vision-agent/releases/tag/v0.4.7)                                                                                                     |
| VSCode                    | 1.98   |  |
