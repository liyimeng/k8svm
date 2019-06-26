#!/bin/bash
set -xe
BRDEV=${1:-eth1}
CTRL=${2:-rancher/vm:v0.2.0}
TOOLS=${3:-rancher/vm-tools:v0.2.0}
VNC=${4:-rancher/vm-novnc:v0.2.0}
UI=${5:-rancher/vm-frontend:v0.2.0}
sed  "s|ens33|$BRDEV|g" ranchervm.yaml > vm.yaml
sed  -i "s|rancher/vm:v0.2.0|$CTRL|g" vm.yaml
sed  -i "s|rancher/vm-tools:v0.2.0|$TOOLS|g" vm.yaml
sed  -i "s|rancher/vm-novnc:v0.2.0|$VNC|g" vm.yaml
sed  -i "s|rancher/vm-frontend:v0.2.0|$UI|g" vm.yaml
kubectl apply -f vm.yaml
