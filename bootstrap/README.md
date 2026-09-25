# Cluster Bootstrap

This directory contains the minimum configuration required to bootstrap
GitOps management for the Kubernetes cluster.

## Components

### `argocd/`

Contains Helm values used during the initial Argo CD installation and
subsequent GitOps management.

### `root-app.yaml`

Creates the root Argo CD Application.

The root application watches:

```text
clusters/homelab/
