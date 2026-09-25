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
