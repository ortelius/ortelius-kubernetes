# kube-prometheus-stack

| Website | Project GitHub | Ortelius Github | Artifact Reference | Owners |
| --- | --- | --- | --- | --- |
| [kube-prometheus-stack](https://github.com/prometheus-operator/kube-prometheus) | [Project Github Link](https://github.com/prometheus-community/helm-charts/tree/main/charts/kube-prometheus-stack) | [Ortelius Github Link](https://github.com/ortelius/ortelius-kubernetes/tree/main/kube-infra/kustomize/observability/kube-prometheus-stack) | [Artifact Link](https://artifacthub.io/packages/helm/prometheus-community/kube-prometheus-stack) | [@bradmccoydev](https://github.com/bradmccoydev)  |

All the code that relates to kube-prometheus-stack can be found [here.](https://github.com:ortelius/ortelius-kubernetes/) This consists of the Kubernetes manifest files required to provision the tooling and configuration.

## Upgrading Prometheus

To upgrade Prometheus it is recommended to delete the CRD's if it doesnt work. These dont get updated by default so executing the below can help
```
kubectl delete crd alertmanagerconfigs.monitoring.coreos.com
kubectl delete crd alertmanagers.monitoring.coreos.com
kubectl delete crd podmonitors.monitoring.coreos.com
kubectl delete crd probes.monitoring.coreos.com
kubectl delete crd prometheuses.monitoring.coreos.com
kubectl delete crd prometheusrules.monitoring.coreos.com
kubectl delete crd servicemonitors.monitoring.coreos.com
kubectl delete crd thanosrulers.monitoring.coreos.com
kubectl delete crd alertmanagerconfigs.monitoring.coreos.com
kubectl delete crd alertmanagers.monitoring.coreos.com
kubectl delete crd podmonitors.monitoring.coreos.com
kubectl delete crd probes.monitoring.coreos.com
kubectl delete crd prometheuses.monitoring.coreos.com
kubectl delete crd prometheusrules.monitoring.coreos.com
kubectl delete crd servicemonitors.monitoring.coreos.com
kubectl delete crd thanosrulers.monitoring.coreos.com
```
