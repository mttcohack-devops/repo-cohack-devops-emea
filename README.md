# MTT CoHack Challenge : DevOps Fundamentals

## Introduction

In this challenge-based hackathon, we will work together to explore and implement fundamental DevOps practices. Our goal is to effectively manage code, automate infrastructure deployment, and streamline application delivery. Through collaboration, we will have the opportunity to work with a range of tools and technologies.
By the end of the hackathon, we will have developed a deeper understanding of DevOps practices and be equipped with practical skills that we can apply to our own projects and organizations.

## Requirements

- A [GitHub account](https://github.com/signup) per team member
- A [Microsoft Azure Subscription](http://portal.azure.com/) per team

## Learning Objectives

This hack will help you learn:

- How to use GitHub to manage user access
- How to use GitHub Repositories to manage Source Control
- How to use GitHub Actions to implement CI (Continuous Integration) and CD (Continuous Deployment)
- [Optional] How to use GitHub to contribute in an Open Source project
- [Optional] How to use GitHub Actions with Containers

## Success Criteria

### Challenge 1

- All team members have access to an organization with the right role as part of a team
- All team members have access to a repository that contains the [CoHack App](/src)
- Build and deploy the CoHack App to Microsoft Azure

#### Resources

- [Repository roles for an organization](https://docs.github.com/organizations/managing-user-access-to-your-organizations-repositories/repository-roles-for-an-organization)
- [Fork a repository](https://docs.github.com/get-started/quickstart/fork-a-repo)
- [Understanding GitHub Actions](https://docs.github.com/actions/learn-github-actions/understanding-github-actions)
- [Configuring OpenID Connect in Azure](https://docs.github.com/actions/deployment/security-hardening-your-deployments/configuring-openid-connect-in-azure)
- [Configure a federated identity credential on an app - GitHub Actions](https://learn.microsoft.com/azure/active-directory/develop/workload-identity-federation-create-trust?pivots=identity-wif-apps-methods-azp#github-actions)

### [Optional] Challenge 2

- Update the origin CoHack repository to add your team name (TeamXX) to [Home Page](/src/Pages/Index.cshtml) which points to your team's repository as shown below:

![CoHack App - Home Page](/images/CoHackApp-HomePage.jpg)

[app-cohack-uyxd5mnsmwape.azurewebsites.net](https://app-cohack-uyxd5mnsmwape.azurewebsites.net)

#### Resources

- [Creating a pull request from a fork](https://docs.github.com/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request-from-a-fork)

### [Optional] Challenge 3

- Build and deploy the [**containerized** CoHack App](/src/Dockerfile) to Microsoft Azure

#### Resources

- [Configure a GitHub Action to create a container instance](https://learn.microsoft.com/azure/container-instances/container-instances-github-action?tabs=openid)
