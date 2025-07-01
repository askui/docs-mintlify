# AskUI Documentation

This is the AskUI documentation. The documentation covers:

- Python Vision Agent
- AskUI Suite
- Workspaces Service API
- AskUI Inference API

## Documentation Structure

We follow the [Diátaxis framework](https://diataxis.fr/) which organizes content into four distinct categories:

### 1. Tutorials (Learning-oriented)
Step-by-step lessons for users who want to learn by doing. Build skills and confidence through hands-on experience.

### 2. How-to Guides (Goal-oriented)
Practical steps to solve specific problems. Focused instructions for users who need to accomplish particular tasks.

### 3. Explanation (Understanding-oriented)
Conceptual discussions that provide context, background, and deeper understanding of how and why things work.

### 4. Reference (Information-oriented)
Technical specifications, API documentation, command references, and configuration options for quick lookup.



# Development

Install the [Mintlify CLI](https://www.npmjs.com/package/mintlify) to preview the documentation changes locally. To install, use the following command

```
npm install
```

Run the following command at the root of your documentation (where mint.json is)

```
npx mintlify dev
```

## Update Pages

### API References -> 02-python -> 02-vision-agent-api

1. Install all dependencies
```
pdm install
```

2. Install newest version of askui-vision agent
```
pdm add -d askui@<latest version>
```

3. Generate Docs 
```
pdm run docs:api:generate
```
> [!NOTE]  
> The generated docs will be under the `build` folder.
> The generated docs are simple markdown files. Methods are not sorted alphabetically.


> [!TIP]
> - Generate docs without updating the `askui` library so you have the old version first
> - Copy the `build` folder to -> `build_old`
> - Update `askui` then generate docs again
> - Now you can diff the new and old MD files
> - And insert the diff into the MDX file.


#### Adding new pages
The Python files you want to generate a documentation for need to be registered in `pyproject.toml`.

Example:
```toml
[[tool.pydoc-markdown.renderer.pages]]
title = "Retry"
name = "retry"
contents = [
    "askui.retry.*",
]
```

Then the `mint.json` needs to be updated to render new pages:
Example:
```diff
    {
      "group": "Python Vision Agent",
      "pages": [
        "02-api-reference/01-agent-frameworks/02-python/02-vision-agent-api/agent",
        "02-api-reference/01-agent-frameworks/02-python/02-vision-agent-api/locators",
        "02-api-reference/01-agent-frameworks/02-python/02-vision-agent-api/reporting",
+       "02-api-reference/01-agent-frameworks/02-python/02-vision-agent-api/retry",
        "02-api-reference/01-agent-frameworks/02-python/02-vision-agent-api/tools",
        "02-api-reference/01-agent-frameworks/02-python/02-vision-agent-api/types"
      ]
    },
```

For consistency remove the extra title from the generated file:

```diff
---
title: Retry
---

- <a id="askui.retry"></a>

- # askui.retry

<a id="askui.retry.Retry"></a>

## askui.retry.Retry

```

### API References -> Workspaces Service


1. Delete old Pages
```bash
# Current Docs
rm -r  02-api-reference/07-workspace-service
```
2. Regenerate Workspaces Service
```bash
npm run docs:generate:workspaces-api

--- Output ---
navigation object suggestion:
[
  {
    "group": "agent-executions",
    "pages": [
     
     ...

    ]
  }
]
openapi location suggestion:
openapi: https://workspaces.askui.com/openapi.json
```
3. Update Mintlify by coping output of previous command to `mint.json` in 
```json
    ...
    {
      "group": "Workspaces Service",
      "pages": <-- here -->
    },
    ...
```


### API References -> Workspaces Service


1. Delete old Pages
```bash
# Current Docs
rm -r  02-api-reference/05-askui-inference
```
2. Regenerate Workspaces Service
```bash
npm run docs:generate:inference-api

--- Output ---
navigation object suggestion:
[
  {
    "group": "API References",
    "pages": [
     
     ...

    ]
  }
]
openapi location suggestion:
openapi: https://inference.askui.com/openapi.json
```
3. Update Mintlify by coping output of previous command to `mint.json` in 
```json
    ...
    {
      "group": "AskUI Inference",
      "pages": <-- here -->
    },
    ...
```


### WIP: API References -> Agent Environment -> AskUI Suite

Currently Working Progress

1. Generate Markdown

```powershell
& .\src\powershell\ADE-MarkdownGenerator.ps1
```

2. Copy `02-askui-suite` from `src\powershell\out\02-askui-suite` to `02-api-reference/02-askui-suite/02-askui-suite`
3. Update Mintlify by coping the content of `src\powershell\out\output.json` to `mint.json` in

```json
    ...
    {
      "group": "AskUI Suite",
      "pages": <-- here -->
    },
    ...
```

### Publishing Changes

To publish the changes.
```
git add *
git commit -m "<commit message>"
git push
```

#### Troubleshooting

- Mintlify dev isn't running - Run `mintlify install` it'll re-install dependencies.
- Page loads as a 404 - Make sure you are running in a folder with `mint.json`
