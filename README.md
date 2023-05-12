# Akuity Platform Declarative Management

The repository contains the declarative configuration of the Akuity Platform and implements GitOps workflow using GitHub Actions.

## Repository Structure

The repository is organized as follows:

* `argocd` - Contains the declarative configuration of the Argo CD instances.
Currently, there is only one instance of Argo CD, `demo`, which is used to manage the Akuity Platform and is available at https://demo.cd.akuity.cloud/.
* `hack` - Contains a bash script that implements reconciliation workflows and is used by GitHub Actions.
* `.github/workflows` - Contains GitHub Actions workflows that implement GitOps process.

## Workflow

> Note. You will need to install [git](https://git-scm.com/downloads) and [yq](https://mikefarah.gitbook.io/yq/) and [akuity cli](https://docs.akuity.io/akuity-platform/cli).
