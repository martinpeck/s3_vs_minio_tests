import boto3
import pytest
import uuid
import os

aws_upload_bucket = os.environ["AWS_UPLOAD_BUCKET"]
aws_download_bucket = os.environ["AWS_DOWNLOAD_BUCKET"]


def test_uploading_a_text_file():
    """uploads a text file to an s3 bucket"""

    uploaded_file_name = f"{uuid.uuid4()}.txt"

    s3 = boto3.resource("s3")
    s3.meta.client.upload_file(
        "tests/files/for_upload_tests/hello.txt", aws_upload_bucket, uploaded_file_name
    )


def test_downloading_a_file():
    """downloads a text file from an s3 bucket"""

    downloaded_file_name = f"{uuid.uuid4()}.txt"

    s3 = boto3.resource("s3")
    s3.meta.client.download_file(
        aws_download_bucket, "hello.txt", f"tests/files/for_download_tests/{downloaded_file_name}"
    )
