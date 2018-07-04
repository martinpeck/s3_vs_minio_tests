# Minio running as an Azure Web App

This folder contains an ARM template that will deploy the following:

1. A storage account
2. An Azure Web App for Docker, running the `martinpeck/minio-az-gateway` container image

Deploying this will give you an example Minio instance that acts as a gateway to this Azure storage account.

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmartinpeck%2Fs3_vs_minio_tests%2Fmaster%2Fazure-webapp%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
