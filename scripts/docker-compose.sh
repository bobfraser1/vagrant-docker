#!/usr/bin/env bash

set -eu

echo "Install docker-compose"

curl -fsSL https://github.com/docker/compose/releases/download/1.29.2/docker-compose-Linux-x86_64 -o /usr/local/bin/docker-compose
chmod a+x /usr/local/bin/docker-compose
