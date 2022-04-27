#!/bin/bash

# search charts hub from center hub (network required)
helm search hub wordpress

# add repo to local
helm repo add brigade https://brigadecore.github.io/charts

# search repo from local(support fuzzy)
helm search repo brigade

# install a charts
helm install happy-panda bitnami/wordpress

# Install Order
: <<COMMENT
Namespace
NetworkPolicy
ResourceQuota
LimitRange
PodSecurityPolicy
PodDisruptionBudget
ServiceAccount
Secret
SecretList
ConfigMap
StorageClass
PersistentVolume
PersistentVolumeClaim
CustomResourceDefinition
ClusterRole
ClusterRoleList
ClusterRoleBinding
ClusterRoleBindingList
Role
RoleList
RoleBinding
RoleBindingList
Service
DaemonSet
Pod
ReplicationController
ReplicaSet
Deployment
HorizontalPodAutoscaler
StatefulSet
Job
CronJob
Ingress
APIService
COMMENT

# show release status
helm status happy-panda

# show configurable value for a chart
helm show values bitnami/wordpress

# install helm with values
echo '{mariadb.auth.database: user0db, mariadb.auth.username: user0}' > values.yaml
helm install -f values.yaml bitnami/wordpress --generate-name
rm -rf values.yaml

# get values for a release
helm get values happy-panda

# list all release (deploy only)
helm list

# uninstall release
helm uninstall happy-panda

# list all repo
helm repo list


