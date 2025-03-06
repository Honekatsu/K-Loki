#!/usr/bin/env bash
set -e

source ${PWD}/K-Loki/minio_loki/.minio_loki.env
docker run --name minio_loki -p 9000:9000 -p 9001:9001 -v ${PWD}/K-Loki/minio_loki/minio_data:/data -e MINIO_ROOT_USER=${MINIO_ROOT_USER} -e MINIO_ROOT_PASSWORD=${MINIO_ROOT_PASSWORD} quay.io/minio/minio server /data --console-address ":9001"
