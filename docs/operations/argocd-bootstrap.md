# Argo CD Bootstrap and Recovery

## Overview

Argo CD is managed through GitOps after the initial cluster bootstrap.

The initial Argo CD deployment is installed using Helm. After Argo CD
becomes available, the root application is applied manually. From that
point forward, Argo CD manages its own configuration and the remaining
platform services through Git.

## Bootstrap Flow

```text
Kubernetes Cluster
       |
       v
Install Argo CD with Helm
       |
       v
Apply Root Application
       |
       v
Argo CD Reads GitHub
       |
       v
Argo CD Application
       |
       v
Argo CD Manages Itself
       |
       v
Platform and Applications
