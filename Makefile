start-minio-local:
	docker run -p 9000:9000 --name azure-s3 --env-file .env minio/minio gateway azure
