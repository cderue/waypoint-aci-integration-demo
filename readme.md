# Publishing an application on Azure Container Instances with Waypoint

## Introduction

The goal of this project is to provide knowledge to publish applications on Azure Container Instances with HashiCorp Waypoint.

## Prerequisites

To learn how to use Waypoint to publish applications on Azure Container Instances, you must meet these prerequisites:

- Have an access to a Microsoft Azure Subscription
- Install Azure PowerShell
- Install Docker Desktop
- Have an access to a Docker registry
- Clone this repository locally

## Install Waypoint


## Create a Service Principal

An Azure service principal is an identity created for use with applications, hosted services, and automated tools to access Azure resources. This access is restricted by the roles assigned to the service principal, giving you control over which resources can be accessed and at which level. For security reasons, it's always recommended to use service principals with automated tools rather than allowing them to log in with a user identity.

To create a Service Principal, you can execute the following PowerShell script available at the root location in the project:

```console
$ ./Create-SP.ps1
```

After few seconds, 


```console
$ export AZURE_SUBSCRIPTION_ID="<Insert your Azure subscription ID>"
$ export AZURE_TENANT_ID="<Insert your Azure tenant ID>"
$ export AZURE_CLIENT_ID="<Insert your Azure client ID"
$ export AZURE_CLIENT_SECRET="<Insert your Azure client secret>"
$ export REGISTRY_USERNAME="<Insert your Docker registry user name>"
$ export REGISTRY_PASSWORD="<Insert your Docker registry password>"
```

## Publish with Waypoint

```console
$ waypoint up
```

## Verify the result
