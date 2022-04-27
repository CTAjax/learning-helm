#!/bin/bash

# create chart
helm create ajax

# validate
helm lint ajax

# package a helm chart
helm package ajax

# install from local package
helm install ajax-01 ./ajax-0.1.0.tgz

# delete charts
helm uninstall ajax-01
