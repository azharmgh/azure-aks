#!/bin/bash

# create shell variables
resourceGroup=azure-aks-rg
location=westus
#create the resource group
az group create --name $resourceGroup --location $location

# create shell variables
vnetName=aks-vnet1
subnetName=aks-subnet1
vnetAddressPrefix=10.0.0.0/16
subnetAddressPrefix=10.0.0.0/24

az network vnet create \
  --name $vnetName \
  --resource-group $resourceGroup \
  --address-prefixes $vnetAddressPrefix \
  --subnet-name $subnetName \
  --subnet-prefixes $subnetAddressPrefix