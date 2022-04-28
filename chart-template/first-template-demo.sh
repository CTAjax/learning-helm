#!/bin/bash

chart=mychart
release=ajax

# create a chart
helm create $chart

# empty templates
rm -rf $chart/templates/*

# create your first configmap template
(cat << EOF
apiVersion: v1
kind: ConfigMap
metadata:
  name: $chart-configmap
data:
  myvalue: "Hello World"
EOF
) > $chart/templates/configmap.yaml

# package first template
helm package $chart

# install first charts
helm install $release ./$chart-0.1.0.tgz

# get manifest for a release
helm get manifest $release

# uninstall release
helm uninstall $release

# install with debug mode
helm install --debug --dry-run $release ./$chart-0.1.0.tgz