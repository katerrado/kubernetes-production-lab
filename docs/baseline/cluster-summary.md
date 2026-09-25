# Kubernetes Lab Baseline

## Cluster Purpose

Production-style Kubernetes homelab designed to demonstrate
platform engineering, GitOps, observability, networking,
persistent storage, database operations, security, and
disaster recovery.

## Cluster Topology

| Node | Role | OS | Kubernetes | Runtime |
|---|---|---|---|---|
| kmaster | Control Plane | Ubuntu | TBD | containerd |
| kworker1 | Worker | Ubuntu | TBD | containerd |
| kworker2 | Worker | Ubuntu | TBD | containerd |

## Networking

- CNI: Calico
- Pod Network: TBD
- Service Network: TBD
- LAN Network: Sanitized for public documentation
- Load Balancer: Planned - MetalLB

## Storage

Current StorageClass:

TBD

Future Storage Platform:

Longhorn

## GitOps

Current State:

Not configured

Planned:

Argo CD

## Observability

Current State:

NAME       STATUS   ROLES           AGE   VERSION
kmaster    Ready    control-plane   23m   v1.37.1
kworker1   Ready    <none>          16m   v1.37.1
kworker2   Ready    <none>          16m   v1.37.1

Planned:

- Prometheus
- Grafana
- Alertmanager
- Loki
- Alloy
- Uptime Kuma
