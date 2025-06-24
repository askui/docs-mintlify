# AskUI Suite 25.4.1

## General

The AskUI Suite is a comprehensive bundle that includes all necessary dependencies to deliver AskUI to end users. Additionally, it addresses enterprise challenges such as user rights restrictions and proxy issues, ensuring a seamless AskUI experience.

This release focus on:
1. Enhanced the AI Element by adding a Python code example.
2. Moved the AI Element commandlet from experimental features to public availability.
3. Updated `AskUI-OpenAgent` to accept a user-provided command for opening the agent.
4. Included VS Code in the Suite bundle as a fallback option for opening agent projects.
5. Standardized `files.askui` as the sole storage location.

## Setup

### Supported Operating Systems

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
| Windows | AMD64 | [Link](https://files.askui.com/releases/Installer/25.4.1/AskUI-Suite-25.4.1-User-Installer-Win-AMD64-Web.exe)
| Windows | ARM64 | [Link](https://files.askui.com/releases/Installer/25.4.1/AskUI-Suite-25.4.1-User-Installer-Win-ARM64-Web.exe)
| MacOS | ARM64 | [Link](https://files.askui.com/releases/Installer/25.4.1/AskUI-Suite-25.4.1-User-Installer-MacOS-ARM64-Web.run)
| Linux | AMD64 | [Link](https://files.askui.com/releases/Installer/25.4.1/AskUI-Suite-25.4.1-User-Installer-Linux-AMD64-Web.run)
| Linux | ARM64 | [Link](https://files.askui.com/releases/Installer/25.4.1/AskUI-Suite-25.4.1-User-Installer-Linux-ARM64-Web.run)

### Installation

Please follow our offical [installation guide](https://docs.askui.com/introduction/02-getting-started/02-installation-guide).

## Migration from 25.3.1 to 25.4.1


### AskUI Suite
Nothing is impacted. Please continue with our [installation guide](https://docs.askui.com/introduction/02-getting-started/02-installation-guide).

### AskUI Typescript ADK

To update your [AskUI Typescipt ADK ](https://github.com/askui/askui) to the new version: 

1. Open your project in VSCode
6. Enter the AskUI Shell by `askui-shell`
7. Update AskUI by `npm install --dev askui@0.23.1`

### AskUI Vision Agent (Python)

To update your [AskUI Vision Agent](https://github.com/askui/vision-agent) to the new version:
1. Open your project in VSode 
8. Enable your virtual environment.
9. Enter `pip install askui==0.2.4`

## Known Issues

- **PxProxy** is available only for Windows AMD64.
- **ADE Startup Time** is slower than in the previous version.
- **Windows Users** may encounter long path issues when installing and using ADE.
- **Project Support**: `AskUI-NewProject` and `AskUI-RunProject` only support TypeScript projects.

---
## New Features
<details>
  <summary><code>Ship VSCode in AskUI Suite </code> -  AskUI-OpenAgent use as fallback a VSCode from AskUI</summary>
 
  The AskUI Suite ships now VSCode. So AskUI has a fallback time.
</details>


## Components

<details>
  <summary><code>AskUI-OpenAgent -OpenCommand cursor</code> -   The command to open the agent directory. If not provided, defaults to Visual Studio Code.  - <a href="https://docs.askui.com/02-api-reference/02-askui-suite/02-askui-suite/AskUIRunnerManager/Public/AskUI-OpenAgent">docs</a></summary>
 
 ```bash
 (base) ADE C:\Users\MaxMustermann>  AskUI-OpenAgent -OpenCommand explorer
Opening the selected AskUI Agent directory in 'explorer'.
```
</details>

## Improvments

<details>
  <summary><code>AskUI Suite Installer </code> -  Downloads all files over AskUI provided endpoinrt files.askui.com </summary>
 
  Our Web Installer downloads now everything over files.askui.com. This allows now fullsupport of whitelists
</details>


<details>
  <summary><code>AsKUI-*AIElements</code> -  Moved from experimental to public. </summary>
 
  All `AskUI-*AiElement` commandlets are now available without calling ` AskUI-ImportExperimentalCommands`
</details>

## Fixes

Nothing has changed


## Removed

Nothing has changed

# **Versions**

| Name                                                   | Version |                  Release Notes                                                                |
|------------------------------------------|---------|------------------------------------------------------------------------|
| ADE                                                      | 0.9.3   |                                                                                                        |
| NodeJS                                                | 21.0.0  |  [Link](https://github.com/nodejs/node/releases/tag/v21.0.0)   |
| AskUIOCRTeaching                              | 0.4.0   | [Link](https://github.com/askui/ml-ocr-text-recognition-desktop-frontend/releases/tag/v0.4.0)                                                                                            |
| PowerShell                                           | 7.4.6   | [Link](https://github.com/PowerShell/PowerShell/releases/tag/v7.4.6) |
| Python                                                 | 3.13.1  | [Link](https://www.python.org/downloads/release/python-3131/) |
| AskUIRemoteDeviceController            | 0.14.0  | [Link](https://github.com/askui/askui-ui-controller/blob/main/Documentation/Releases/2025/25.2.1/ReleaseNotes_25.2.1.md) |
| AskUIRemoteDeviceSnippingTool       | 0.2.0   | [Link](https://github.com/askui/askui-ui-controller/blob/main/Documentation/Releases/ReleaseNotes_24.9.1.md) |
| UIController                                         | 0.14.8  | [Link](https://github.com/askui/askui-ui-controller/blob/main/Documentation/Releases/ReleaseNotes_24.12.1.md) |
| AskUIRunnerManager                         | 0.1.0   |                                                                                                        |
| ADE.ProcessManager                          | 0.1.0   |                                                                                                        |
| ADE.ProjectManager                           | 0.1.0   |                                                                                                        |
| ADE.ErrorReporter                               | 0.1.0   |                                                                                                        |
| ADE.UserInterface                               | 0.1.0   |                                                                                                        |
| ADE.PluginManager                            | 0.1.0   |                                                                                                        |
| ADE.EnvironmentManager                  | 0.1.0   |                                                                                                        |
| AskUI Typescript ADK                  | 0.23.1 | [Link](https://github.com/askui/askui/releases/tag/v0.23.1)                                                                                                         |
| Python Vision Agent                  |  0.2.4   | [Link](https://github.com/askui/vision-agent/releases/tag/v0.2.4)                                                                                                     |
| VSCode                    | 1.98   |  |




