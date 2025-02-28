---
title: AskUI-NewAnnotationsForTraining
---


### SYNOPSIS

Creates a new annotation for training.

### DESCRIPTION

Starts the Snipping Tool and allows the user to annotate the screen.
The user will be asked to provide additional metadata for each annotation.
the metadata includes:
- category: The category for each annotation. Valid categories are: 'Text', 'Textfield', 'Button', 'Icon', 'CheckBox', 'Other'.
- description: The description for each annotation.

### PARAMETERS

- `-WorkspaceId` | _&lt;String&gt;_ - (Optional) Workspace ID for the annotation. 
- `-Token` | _&lt;String&gt;_ - (Optional) Token for sending the annotation to the train endpoint. 
- `-Delay` | _&lt;Int32&gt;_ - (Optional) Delay in seconds before the screen freezes. Default is 0. 
- `-Url` | _&lt;String&gt;_ - (Optional) URL for the inference server. Default is https://inference.askui.com. 
- `-ConfigFile` | _&lt;String&gt;_ - *Experimental* (Optional) Absolute file path for the configuration to be loaded.

### EXAMPLES

#### EXAMPLE 1

```powershell
AskUI-NewAnnotationsForTraining
```

