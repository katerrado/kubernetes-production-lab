#!/usr/bin/env bash

set -u

TIMESTAMP=$(date +"%Y%m%d-%H%M%S")
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUTPUT_DIR="${BASE_DIR}/docs/baseline/raw/${TIMESTAMP}"

mkdir -p "${OUTPUT_DIR}"

capture() {
    local filename="$1"
    shift

    echo "Collecting ${filename}..."

    {
        echo "# Command"
        printf '%q ' "$@"
        echo
        echo
        "$@" 2>&1 || true
    } > "${OUTPUT_DIR}/${filename}.txt"
}

capture kubectl-version kubectl version
capture cluster-info kubectl cluster-info
capture nodes kubectl get nodes -o wide
capture node-labels kubectl get nodes --show-labels
capture namespaces kubectl get namespaces
capture pods kubectl get pods -A -o wide
capture deployments kubectl get deployments -A
capture daemonsets kubectl get daemonsets -A
capture statefulsets kubectl get statefulsets -A
capture services kubectl get services -A
capture storageclasses kubectl get storageclass
capture persistent-volumes kubectl get pv
capture persistent-volume-claims kubectl get pvc -A
capture ingressclasses kubectl get ingressclass
capture events kubectl get events -A --sort-by=.lastTimestamp
capture api-resources kubectl api-resources

capture hostname hostnamectl
capture cpu lscpu
capture memory free -h
capture disks df -hT
capture network-addresses ip -br addr
capture routes ip route
capture swap swapon --show

echo
echo "Baseline collection completed."
echo "Output:"
echo "${OUTPUT_DIR}"
