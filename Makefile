start-minio-local:
	docker run -p 9000:9000 --name azure-s3 --env-file .env minio/minio gateway azure
create-resource-group:
	az group create --name minio-example --location westeurope
delete-resource-group:
	az group delete --name minio-example
deploy-minio-resources:
	az group deployment create --name minioexample --resource-group minio-example --template-file tests/azure/template.json