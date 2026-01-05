# AskUI Suite 25.8.1

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
| Windows | AMD64 | [Link](https://files.askui.com/releases/Installer/25.8.1/AskUI-Suite-25.8.1-User-Installer-Win-AMD64-Web.exe)
| Windows | ARM64 | [Link](https://files.askui.com/releases/Installer/25.8.1/AskUI-Suite-25.8.1-User-Installer-Win-ARM64-Web.exe)
| MacOS | ARM64 | [Link](https://files.askui.com/releases/Installer/25.8.1/AskUI-Suite-25.8.1-User-Installer-MacOS-ARM64-Web.run)
| Linux | AMD64 | [Link](https://files.askui.com/releases/Installer/25.8.1/AskUI-Suite-25.8.1-User-Installer-Linux-AMD64-Web.run)
| Linux | ARM64 | [Link](https://files.askui.com/releases/Installer/25.8.1/AskUI-Suite-25.8.1-User-Installer-Linux-ARM64-Web.run)

### Installation

Please follow our official [installation guide](https://docs.askui.com/introduction/02-getting-started/02-installation-guide).


## Removed

Nothing has changed

## Update AskUI ADKs

### AskUI Typescript ADK

To update your [AskUI Typescript ADK](https://github.com/askui/askui) to the new version:

1. Open your project in VSCode
2. Enter the AskUI Shell by `askui-shell`
3. Update AskUI by `npm install --dev askui@0.28.0`

### AskUI Python SDK

To update your [AskUI Python SDK](https://github.com/askui/vision-agent) to the new version:

1. Open your project in VSCode
2. Enable your virtual environment.
3. Enter `pip install askui==0.11.0`

## Fix

- UI Controller: Fix holding command keys down.

## New Features

- **Excremental**: Windows runner tools, to help with configuration of the Windows runner.


## Known Issues

- **PxProxy** is available only for Windows AMD64.
- **ADE Startup Time** is slower than in the previous version.
- **Windows Users** may encounter long path issues when installing and using ADE.
- **Project Support**: `AskUI-NewProject` and `AskUI-RunProject` only support TypeScript projects.

## **Versions**

| Name                                                   | Version |                  Release Notes                                                                |
|------------------------------------------|---------|------------------------------------------------------------------------|
| ADE                                                      | 0.9.4   |                                                                                                        |
| NodeJS                                                | 22.17.0  |  [Link](https://github.com/nodejs/node/releases/tag/v22.17.0)   |
| AskUIOCRTeaching                              | 0.4.0   | [Link](https://github.com/askui/ml-ocr-text-recognition-desktop-frontend/releases/tag/v0.4.0)                                                                                            |
| PowerShell                                           | 7.5.2   | [Link](https://github.com/PowerShell/PowerShell/releases/tag/v7.5.2) |
| Python                                                 | 3.13.1  | [Link](https://www.python.org/downloads/release/python-3131/) |
| AskUIRemoteDeviceController            | 0.19.0  | [Link](https://github.com/askui/askui-ui-controller/releases/tag/25.7.1) |
| AskUIRemoteDeviceSnippingTool       | 0.3.0   | [Link](https://github.com/askui/askui-ui-controller/releases/tag/25.7.1) |
| UIController                                         | 0.15.0  | [Link](https://github.com/askui/askui-ui-controller/releases/tag/25.7.1) |
| AskUIRemoteDeviceSetupTool          | 0.2.1  | [Link](https://github.com/askui/askui-ui-controller/releases/tag/25.7.1) |
| AskUIRunnerManager                         | 0.1.0   |                                                                                                        |
| ADE.ProcessManager                          | 0.1.0   |                                                                                                        |
| ADE.ProjectManager                           | 0.1.0   |                                                                                                        |
| ADE.ErrorReporter                               | 0.1.0   |                                                                                                        |
| ADE.UserInterface                               | 0.1.0   |                                                                                                        |
| ADE.PluginManager                            | 0.1.0   |                                                                                                        |
| ADE.EnvironmentManager                  | 0.1.0   |                                                                                                        |
| AskUI Typescript ADK                  | 0.26.0 | [Link](https://github.com/askui/askui/releases/tag/v0.26.0)                                                                                                         |
| Python SDK                  |  0.5.3   | [Link](https://github.com/askui/vision-agent/releases/tag/v0.5.3)                                                                                                     |
| VSCode                    | 1.98   |  |

