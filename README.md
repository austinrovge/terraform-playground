# terraform-playground
I'm messing around with deploying to AWS through terraform in this project

### Prerequisites
Ideally this project would all be done via GitHub actions, but GitHub currently doesn't support manual approvals on workflows yet. This is ideal to ensure that the execution plan generated with `terraform plan` is correct before running `terraform apply`. Based on the GitHub roadmap, [manual approvals](https://github.com/github/roadmap/issues/99) will be supported in Q4 of 2020 along with [workflow visualizations](https://github.com/github/roadmap/issues/88).

Until this is supported by GitHub, I've opted to make this project local only instead of integrating with a different CI/CD provider (GitLab, CircleCI, etc).

This means that the `aws-cli` is required locally as various scripts depend on it. Terraform and docker are required as well.

### Architecture
ECS cluster containing one service. The service will have one task within it.

The task for the ECS service is spun up using fargate.

### Push the container to the ECR
The elastic container registry (ECR) is where I'll store various docker images to be used with deploying to fargate.

In order to push the container to the ECR, you can run the following script:
```bash
$ bash push_container.sh
```
