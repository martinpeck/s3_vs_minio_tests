# Minio running within an Azure Container Instance

This folder contains an ARM template that will deploy the following:

1. A storage account
2. An Azure Container Instance, running the `minio/minio` container image

Deploying this will give you an example Minio instance that acts as a gateway to this Azure storage account.

## Limitations

- this install does not have any TLS set up. It would require additional infrastructure (Application Gateway) to provide this, or the container would need to perform the SSL termination.

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmartinpeck%2Fs3_vs_minio_tests%2Fmaster%2Fazure-container-instance%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
