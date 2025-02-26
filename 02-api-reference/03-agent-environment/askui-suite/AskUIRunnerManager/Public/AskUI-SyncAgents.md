---
title: AskUI-SyncAgents
---

# AskUI-SyncAgents

### SYNOPSIS

Synchronizes AskUI Runner agents.

### DESCRIPTION

The AskUI-SyncAgents cmdlet synchronizes agent files between local and remote locations.
Supports both upload (Up) and download (Down) synchronization with optional dry-run and delete modes.

### PARAMETERS

- `-Direction` | _&lt;String&gt;_ - The direction of synchronization to perform. Valid values are: Up, Down. 
- `-Dry` | _&lt;SwitchParameter&gt;_ - If set, the synchronization is performed in dry-run mode. 
- `-Delete` | _&lt;SwitchParameter&gt;_ - If set, files that exist in the destination but not in the source are deleted during sync.

### EXAMPLES

#### EXAMPLE 1

```powershell
AskUI-SyncAgents -Direction Up
Uploads local agent files to remote location.
```
 
#### EXAMPLE 2

```powershell
AskUI-SyncAgents -Direction Down -Dry
Simulates downloading remote agent files without making changes.
```
 
#### EXAMPLE 3

```powershell
AskUI-SyncAgents -Direction Up -Delete
Uploads local files and removes remote files that don't exist locally.
```

