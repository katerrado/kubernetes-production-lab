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

## GitOps Workflow

GitHub acts as the source of truth for Kubernetes configuration.

Changes are developed in feature branches and reviewed through pull
requests before being merged into the main branch.

The intended workflow is:

1. Create a feature branch.
2. Modify Kubernetes configuration.
3. Validate changes locally.
4. Commit the changes.
5. Push the branch to GitHub.
6. Open a pull request.
7. GitHub Actions validates the configuration.
8. Review and merge the pull request.
9. Argo CD detects the change.
10. Argo CD reconciles the cluster with the desired state stored in Git.

```text
Engineer
   |
   v
Feature Branch
   |
   v
Pull Request
   |
   v
GitHub Actions
   |
   v
Main Branch
   |
   v
Argo CD
   |
   v
Kubernetes Cluster


This section is very valuable for the portfolio because you're showing operational methodology, not merely Kubernetes commands.

---

# Step 7 — Create the target repository structure

Now create the major directories.

Run:

```bash
mkdir -p \
  .github/workflows \
  bootstrap/argocd \
  bootstrap/root-application \
  clusters/homelab \
  platform \
  apps \
  policies \
  docs/architecture \
  docs/installation \
  docs/operations \
  docs/troubleshooting \
  scripts

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



---

# Step 9 — Create your first architecture document

Create:

```bash
nano docs/architecture/README.md

# Architecture

This directory contains architecture documentation for the Kubernetes
Production Lab.

## Current Architecture

The environment consists of:

- 1 Kubernetes control-plane node
- 2 Kubernetes worker nodes
- containerd container runtime
- Calico container networking
- Argo CD for GitOps management
- GitHub as the configuration source of truth

## Planned Platform Architecture

Future project phases will introduce:

- MetalLB
- Gateway API / ingress
- Longhorn
- Prometheus
- Grafana
- CloudNativePG
- PostgreSQL
- Headlamp
- Uptime Kuma
- Pi-hole
- Paperless-ngx
