![passing](https://github.com/ortelius/ortelius-kubernetes/actions/workflows/ci.yml/badge.svg) ![GitHub](https://img.shields.io/github/license/ortelius/ortelius-kubernetes)
# ortelius-kubernetes
This Project Is for The Ortelius Kubernetes manifests, helm charts, deployments etc used for exploring integrations with Ortelius such as Keptn and Backstage.  All documentation can be found in the Ortelius [Backstage Instance](https://backstage.ortelius.io).

## Pre commit hook
To make use of the pre commit hook please run the following command to enable it on your computer.
```bash
pre-commit install
```

For admin credentials run the following command:
```bash
az aks get-credentials --admin  --resource-group gitops-prod --name gitops-usce-prod
```

## Become a contributor

1) Review the [Ortelius Contributor Guide](https://docs.ortelius.io/guides/contributorguide/)
2) Add yourself to the [Ortelius Google Group](https://groups.google.com/g/ortelius-dev)
3) Join the [Discord community channel](https://discord.gg/ZtXU74x)

Contributors:
* Brad McCoy ([@bradmccoydev](https://github.com/bradmccoydev)), Odysseycloud
* Amit Dsouza ([@checksumz](https://github.com/checksumz)), Odysseycloud
* Ben Poh ([@benhpoh](https://github.com/benhpoh)), Odysseycloud
