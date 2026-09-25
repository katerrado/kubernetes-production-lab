# Kubernetes Lab Architecture

```mermaid
flowchart TB

    GitHub["GitHub Repository"]
    Actions["GitHub Actions"]
    Argo["Argo CD"]

    subgraph Kubernetes["Kubernetes Cluster"]
        Master["kmaster\nControl Plane"]
        Worker1["kworker1\nWorker"]
        Worker2["kworker2\nWorker"]

        Platform["Platform Services"]
        Apps["Applications"]
    end

    GitHub --> Actions
    Actions --> GitHub
    GitHub --> Argo
    Argo --> Kubernetes

    Master --> Worker1
    Master --> Worker2

    Kubernetes --> Platform
    Kubernetes --> Apps

Push this to GitHub later and GitHub should render it automatically.

This becomes your first architecture diagram without requiring Visio or draw.io.

---

# Step 11 — Add the branch workflow documentation

Create:

```bash
nano docs/operations/git-workflow.md

# Git Workflow

This project follows a feature-branch and pull-request workflow.

## Main Branch

The `main` branch represents the desired state of the Kubernetes
environment.

Changes should not normally be committed directly to `main`.

## Feature Branches

New work should be performed in feature branches.

Naming convention:

```text
feature/<description>
