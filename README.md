---
services: app-service, redis-cache
platforms: java
author: selvasingh
---

# Scaling Stateful Java Apps on Azure

This guide walks you through the process of scaling 
stateful Java apps on Azure, aka:
 
- Migrate or deploy stateful Java apps to App Service Linux
- Externalize HTTP sessions to Azure Redis Cache 

## Table of Contents


## What you will migrate to cloud

You will migrate stateful Java apps to Azure, scale it 
across geographies
and demo failover across data centers. These
 apps use:

- Java Servlet (JSR 369)
- Java EE 7

Upon migration, you will power the apps using App Service Linux and
Azure Redis Cache.

Migrated Java apps can be hosted anywhere – [virtual machines](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/), 
[containers - AKS](https://docs.microsoft.com/en-us/azure/aks/intro-kubernetes) or 
[managed Tomcat in App Service Linux](https://docs.microsoft.com/en-us/azure/app-service/containers/quickstart-java). 
We chose the managed option. 
The underlying technique for migration is the SAME 
regardless of a choice of where migrated apps are hosted.

## What you will need

In order to deploy a Java Web app to cloud, you need 
an Azure subscription. If you do not already have an Azure 
subscription, you can activate your 
[MSDN subscriber benefits](https://azure.microsoft.com/pricing/member-offers/msdn-benefits-details/) 
or sign up for a 
[free Azure account]((https://azure.microsoft.com/pricing/free-trial/)).

In addition, you will need the following:

| [Azure CLI](http://docs.microsoft.com/cli/azure/overview) 
| [Java 8](https://www.azul.com/downloads/azure-only/zulu/) 
| [Maven 3](http://maven.apache.org/) 
| [Git](https://github.com/)
|

## Getting Started

You can start from scratch and complete each step, or 
you can bypass basic setup steps that you are already 
familiar with. Either way, you will end up with working code.

### Step ONE - Clone and Prep

```bash
git clone --recurse-submodules https://github.com/Azure-Samples/scaling-stateful-java-web-app-on-azure
cd scaling-stateful-java-web-app-on-azure
yes | cp -rf .prep/* .
```

## Build Scalable Layout for Stateful Java Apps on Azure

Build the Stateful Java Web app:

```bash

# change to initial directory
cd initial/stateful-java-web-app

# build WAR package
mvn package

[INFO] Scanning for projects...
[INFO] 
[INFO] ------------------------------------------------------------------------
[INFO] Building Stateful-Tracker 1.0.0-SNAPSHOT
[INFO] ------------------------------------------------------------------------
[INFO] 
[INFO] --- maven-resources-plugin:2.6:resources (default-resources) @ Stateful-Tracker ---
[INFO] Using 'UTF-8' encoding to copy filtered resources.
[INFO] Copying 1 resource
[INFO] 
[INFO] --- maven-compiler-plugin:3.8.0:compile (default-compile) @ Stateful-Tracker ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /Users/selvasingh/scaling-stateful-java-web-app-on-azure/initial/stateful-java-web-app/target/classes
[INFO] 
[INFO] --- maven-resources-plugin:2.6:testResources (default-testResources) @ Stateful-Tracker ---
[INFO] Using 'UTF-8' encoding to copy filtered resources.
[INFO] skip non existing resourceDirectory /Users/selvasingh/scaling-stateful-java-web-app-on-azure/initial/stateful-java-web-app/src/test/resources
[INFO] 
[INFO] --- maven-compiler-plugin:3.8.0:testCompile (default-testCompile) @ Stateful-Tracker ---
[INFO] No sources to compile
[INFO] 
[INFO] --- maven-surefire-plugin:2.12.4:test (default-test) @ Stateful-Tracker ---
[INFO] No tests to run.
[INFO] 
[INFO] --- maven-war-plugin:3.2.2:war (default-war) @ Stateful-Tracker ---
[INFO] Packaging webapp
[INFO] Assembling webapp [Stateful-Tracker] in [/Users/selvasingh/scaling-stateful-java-web-app-on-azure/initial/stateful-java-web-app/target/Stateful-Tracker-1.0.0-SNAPSHOT]
[INFO] Processing war project
[INFO] Copying webapp resources [/Users/selvasingh/scaling-stateful-java-web-app-on-azure/initial/stateful-java-web-app/src/main/webapp]
[INFO] Webapp assembled in [67 msecs]
[INFO] Building war: /Users/selvasingh/scaling-stateful-java-web-app-on-azure/initial/stateful-java-web-app/target/Stateful-Tracker-1.0.0-SNAPSHOT.war
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 2.963 s
[INFO] Finished at: 2019-02-18T21:44:22-08:00
[INFO] Final Memory: 20M/308M
[INFO] ------------------------------------------------------------------------

```

Deploy the Stateful Java Web app to the first data center:



# Project Name

(short, 1-3 sentenced, description of the project)

## Features

This project framework provides the following features:

* Feature 1
* Feature 2
* ...

## Getting Started

### Prerequisites

(ideally very short, if any)

- OS
- Library version
- ...

### Installation

(ideally very short)

- npm install [package name]
- mvn install
- ...

### Quickstart
(Add steps to get up and running quickly)

1. git clone [repository clone url]
2. cd [respository name]
3. ...


## Demo

A demo app is included to show how to use the project.

To run the demo, follow these steps:

(Add steps to start up the demo)

1.
2.
3.

## Resources

(Any additional resources or related projects)

- Link to supporting information
- Link to similar sample
- ...
