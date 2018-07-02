start-minio-local:
	docker run -p 9000:9000 --name azure-s3 --env-file .env minio/minio gateway azure
create-resource-group:
	az group create --name minio-example --location westeurope
delete-resource-group:
	az group delete --name minio-example
deploy-minio-aci:
	az group deployment create --name minioexample --resource-group minio-example --template-file ./azure-container-instance/azuredeploy.json
deploy-minio-webapp:
	az group deployment create --name minioexample --resource-group minio-example --template-file ./azure-webapp/azuredeploy.json
deploy-minio-template:
	az group deployment create --name minioexample --resource-group minio-example --template-file ./azure-webapp/template.json