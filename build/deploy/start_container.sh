#!/usr/bin/env bash

set -e

sudo docker run -d -i \
        --privileged \
        --log-driver=awslogs \
        --log-opt awslogs-region=ap-northeast-2 \
        --log-opt awslogs-group=approxy \
        --log-opt awslogs-stream=webserver \
        --env SLOWLOG_TIMEOUT=1s \
        --env PHP_ACCESS_LOG=on \
        --env STAGE_NAME=production \
        --env DEBUG=1 \
        --publish 80:80 \
        --name webserver \
        webserver