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
