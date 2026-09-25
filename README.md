# Kubernetes Production Lab

A production-inspired Kubernetes homelab designed to demonstrate
enterprise Kubernetes administration, GitOps, networking, storage,
observability, security, and application deployment practices.

This project is designed as both a learning environment and a technical
portfolio project. The goal is to build a Kubernetes environment using
repeatable, documented, and production-style operational practices.

## Project Goals

- Build and operate a multi-node Kubernetes cluster
- Implement GitOps using GitHub and Argo CD
- Manage infrastructure through declarative configuration
- Practice Git branch and pull-request workflows
- Deploy Kubernetes networking and load-balancing services
- Implement persistent storage
- Deploy monitoring and observability tooling
- Implement security policies and network controls
- Deploy stateful applications and databases
- Document installation, operations, troubleshooting, and recovery
- Build a repeatable environment suitable for a technical portfolio

## Cluster Architecture

The Kubernetes lab currently consists of three nodes.

| Node | Role |
|---|---|
| kmaster | Control Plane |
| kworker1 | Worker |
| kworker2 | Worker |

The cluster is intentionally small enough to operate in a homelab while
still allowing production-style Kubernetes concepts to be implemented.

The current environment uses a single control-plane node. This is an
intentional lab limitation. A production Kubernetes environment would
typically use multiple control-plane nodes to provide control-plane
high availability.

## Technology Stack

| Category | Technology |
|---|---|
| Kubernetes | kubeadm |
| Container Runtime | containerd |
| Networking | Calico |
| GitOps | Argo CD |
| Source Control | GitHub |
| Configuration | Kubernetes YAML / Kustomize |
| CI Validation | GitHub Actions |
| Load Balancing | MetalLB |
| Persistent Storage | Longhorn |
| Database | PostgreSQL |
| Database Management | CloudNativePG |
| Monitoring | Prometheus |
| Visualization | Grafana |
| Availability Monitoring | Uptime Kuma |
| Kubernetes UI | Headlamp |
| DNS | Pi-hole |
| Document Management | Paperless-ngx |

> Some platform services listed above are planned components and will be
> implemented during later project phases.

## Repository Structure

```text
kubernetes-production-lab/
│
├── .github/
│   └── workflows/
│
├── bootstrap/
│   ├── argocd/
│   └── root-application/
│
├── clusters/
│   └── homelab/
│
├── platform/
│
├── apps/
│
├── policies/
│
├── docs/
│   ├── architecture/
│   ├── installation/
│   ├── operations/
│   └── troubleshooting/
│
├── scripts/
│
└── README.md

## Project Status

Phase 1A: Repository and GitOps foundation in progress.
