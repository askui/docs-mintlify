# AskUI Suite 25.3.1

## General

The AskUI Suite is a comprehensive bundle that includes all necessary dependencies to deliver AskUI to end users. Additionally, it addresses enterprise challenges such as user rights restrictions and proxy issues, ensuring a seamless AskUI experience.

This release focus on:
1. Implement Usage Analystics
2. Improve AI Element and remove not used element descriptions

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
| Windows | AMD64 | [Link](https://files.askui.com/releases/Installer/25.3.1/AskUI-Suite-25.3.1-User-Installer-Win-AMD64-Web.exe)
| Windows | ARM64 | [Link](https://files.askui.com/releases/Installer/25.3.1/AskUI-Suite-25.3.1-User-Installer-Win-ARM64-Web.exe)
| MacOS | ARM64 | [Link](https://files.askui.com/releases/Installer/25.3.1/AskUI-Suite-25.3.1-User-Installer-MacOS-ARM64-Web.run)
| Linux | AMD64 | [Link](https://files.askui.com/releases/Installer/25.3.1/AskUI-Suite-25.3.1-User-Installer-Linux-AMD64-Web.run)
| Linux | ARM64 | [Link](https://files.askui.com/releases/Installer/25.3.1/AskUI-Suite-25.3.1-User-Installer-Linux-ARM64-Web.run)

### Installation

Please follow our offical [installation guide](https://docs.askui.com/introduction/02-getting-started/02-installation-guide).

## Migration from 25.2.1 to 25.3.1


### AskUI Suite
Nothing is impacted. Please continue with our [installation guide](https://docs.askui.com/introduction/02-getting-started/02-installation-guide).

### AskUI Typescript ADK

To update your [AskUI Typescipt ADK ](https://github.com/askui/askui) to the new version: 

1. Open your project in VSCode
3. Enter the AskUI Shell by `askui-shell`
4. Update AskUI by `npm install --dev askui@0.23.1`

### AskUI Python SDK

To update your [AskUI Python SDK](https://github.com/askui/vision-agent) to the new version:
1. Open your project in VSode 
5. Enable your virtual environment.
6. Enter `pip install askui==0.2.4`

## Known Issues

- **PxProxy** is available only for Windows AMD64.
- **ADE Startup Time** is slower than in the previous version.
- **Windows Users** may encounter long path issues when installing and using ADE.
- **Project Support**: `AskUI-NewProject` and `AskUI-RunProject` only support TypeScript projects.

---
# Release Notes

## New Features

### ADE: Usage Analytics

Usage analytics track how users interact with a product, helping teams identify what works, what doesn’t, and where to improve. This leads to smarter decisions and a better overall user experience.

- **Installer Analytics** - Tracks installs and errors to improve setup reliability.
- **ADEAnalytics** - Tracks cmdlet calls and usage to improve ADE Tools and user workflows.

<details>
  <summary><code>Deactivate Analytics</code> - Disable the tracking events</summary>
 
You can deactivate the analystics by setting the `ASKUI_DISABLE_TELEMETRY`-env variable to `false` 
</details>

### AskUI Typescript ADK

<details>
  <summary><code>Custom AI Elements Location </code> - Add support of configure your your location of AI Elements - <a href="https://www.notion.so/askui/Guide-AI-Element-with-GIT-1a019a9494f880a4a218d78a4cc2f6ce">docs</a></summary>
Configure custom AI Element location.

```typescript
...
beforeAll(async () => {
  ...
   aui = await UiControlClient.build({
    ...
    aiElementArgs: {
      additionalLocations: [	      
        "./ai-elements/" <-- Add your local AiElement Locations here
      ]
    }
  });
  ...
});
...
```
</details>





## Components

Nothing has changed. 

## Improvments



Nothing has changed. 


## Fixes

### AskUIRemoteDeviceController 0.14.0

Nothing has changed

### AskUI Typescript ADK

<details>
  <summary>Fix dangeling timeout</summary>

```typescript
// Missing await
aui.click().text("Step 1").exec()
// Throws now exception
await aui.click().text("Step 2").exec()
```
</details>


## Removed

### AskUI Typescript ADK

<details>
  <summary><code>Removed Table Support</code> - Removed support of Element Descriptions of <code>table()</code>, <code>row()</code>, <code>cell()</code>, <code>col()</code> </summary>
We removed the following commands as they had low adoption, primarily due to inconsistent and unreliable detection.


Following commands were removed:
```typescript
await aui.*.table().exec()
await aui.*.table().row().exec()
await aui.*.table().col().exec()
await aui.*.table().cell().exec()
```

We recommend using `await aui.ask()` instead of the deprecated Able commands for improved reliability and consistency
```typescript
let users = await aui.ask(
     "Extract the users from the table.",
          {
            json_schema: {
              "type": "array",
              "items": {
                "type": "object",
                "properties": {
                  "name": {
                    "type": "string"
                  },
                  "usage": {
                    "type": "number"
                  }
                },
                "additionalProperties": false,
                "required": ["name", "usage"]
              },
            },
          });
/* 
 Output of console.log(users):
 * [
 *   { name: 'Yiorgos Avraamu', usage: 50 },
 *   { name: 'Avram Tarasios', usage: 10 },
 *   { name: 'Quintin Ed', usage: 74 },
 *   { name: 'Eneás Kwadwo', usage: 98 },
 *   { name: 'Agapetus Tadeáš', usage: 22 }
 * ]
 */

await aui.click().text(users[2]["name"]).exec()
```
</details>

<details>
  <summary><code>Removed MachtingSupport</code> - Removed support of Element Descriptions of <code>matching()</code></summary>
We removed the [`matching()`-element descriptor](https://docs-ts.askui.com/docs/api/Element-Descriptions/matching) as they had low adoption.

We recomment to use the `pta()` command instead: 
```typescript
await aui.click().element().matching('a black sneaker shoe').exec(); -> await aui.click().pta('a black sneaker shoe').exec();

```

</details>

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
| AskUI Typescript ADK                  | 0.23.1 | [Link](https://github.com/askui/askui/releases/tag/v0.23.1)                                                                                                         |
| Python SDK                  |  0.2.4   | [Link](https://github.com/askui/vision-agent/releases/tag/v0.2.4)                                                                                                     |




