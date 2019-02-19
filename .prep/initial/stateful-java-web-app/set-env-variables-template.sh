#!/usr/bin/env bash

export TOMCAT_HOME=<your-tomcat-directory>

# Supply - Azure Environment
export SUBSCRIPTION_ID=<your-subscription-id>
export RESOURCEGROUP_NAME=<your-resource-group-name>
export REGION_1=westus
export REGION_2=eastus

# Supply - App Service App Name
export WEBAPP_NAME=<your-webapp-name>

# Composed from Supplied - App Service Plan Name
export WEBAPP_PLAN_NAME=${WEBAPP_NAME}-appservice-plan

# Supply - Redis Info
export REDIS_CACHE_NAME=<your-redis-cache-name>
export REDIS_PASSWORD=<your-redis-cache-password>
export REDIS_SESSION_KEY_PREFIX=tracker-sessions

# Composed from Supplied - Redis Address
export REDIS_HOST=${REDIS_CACHE_NAME}.redis.cache.windows.net
export REDIS_PORT=6379

# Supply - Traffic Manager Info
export TRAFFIC_MANAGER_PROFILE_NAME=<your-traffic-manager-profile-name>
export TRAFFIC_MANAGER_DNS_NAME=<your-traffic-manager-dns-name>

# Composed from Supplied - Traffic Manager Endpoints
export TARGET_RESOURCE_ID_1="/subscriptions/${SUBSCRIPTION_ID}/resourceGroups/${RESOURCEGROUP_NAME}/providers/Microsoft.Web/sites/${WEBAPP_NAME}-${REGION_1}"
export TARGET_RESOURCE_ID_2="/subscriptions/${SUBSCRIPTION_ID}/resourceGroups/${RESOURCEGROUP_NAME}/providers/Microsoft.Web/sites/${WEBAPP_NAME}-${REGION_2}"
