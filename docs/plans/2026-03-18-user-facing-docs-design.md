# User-Facing Docs Design — AskUI Agent OS

**Date:** 2026-03-18
**Target audience:** DevOps person evaluating AskUI from scratch
**Primary goal:** "Get it running, see it work" → then branch into deployment options

## Reading Flow

1. **What is AskUI?** (`index.mdx`) — Mental model in 60 seconds. Two pieces: SDK + Agent OS. Broader than UI automation: mobile, HMI, custom tools.
2. **Quickstart** (`get-started/quickstart.mdx`) — Install, run calculator demo, see the aha moment in 10 minutes.
3. **How It Works** (`get-started/how-it-works.mdx`) — Architecture, components, execution flow, Host vs. Companion mode.
4. **Installation** (`agent-os/installation.mdx`) — All install modes: user, system service, silent. Per-OS tabs.
5. **Deployment Scenarios** (`agent-os/deployment-scenarios.mdx`) — Local, VM, CI, mobile (Android/iOS), multi-device.
6. **Configuration** (`agent-os/configuration.mdx`) — Credentials, Agent OS settings, AI models, custom tools, network/firewall.

## Design Decisions

- Quickstart leads with the calculator demo (aha moment) rather than a code snippet
- Architecture explanation comes AFTER the demo — the reader cares once they've seen it work
- Installation page covers 3 modes (user, service, silent) because the DevOps person needs all three
- Deployment scenarios page is the one they'll bookmark — scannable with diagrams
- Configuration is pure reference — tables, not prose
- Agent OS is positioned as a "device control host" not just "UI automation driver"
- Mobile and HMI scenarios are first-class, not afterthoughts
