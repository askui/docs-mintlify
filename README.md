# AskUI Mintlify Docs

Click on `Use this template` to copy the Mintlify starter kit. The starter kit contains examples including

- Guide pages
- Navigation
- Customizations
- API Reference pages
- Use of popular components



# Development

Install the [Mintlify CLI](https://www.npmjs.com/package/mintlify) to preview the documentation changes locally. To install, use the following command

```
npm install
```

Run the following command at the root of your documentation (where mint.json is)

```
mintlify dev
```

## Update Pages

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
npm run docs:generate:askui-inference

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
