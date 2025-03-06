#!/usr/bin/env bash
set -e

source ${PWD}/K-Loki/loki/.loki.env
docker run --name loki -p 3100:3100 -v ${PWD}/K-Loki/loki/loki-config.yaml:/etc/loki/local-config.yaml grafana/loki
