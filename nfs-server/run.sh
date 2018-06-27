#!/usr/bin/env sh
# https://linux.die.net/man/5/exports
# https://github.com/ehough/docker-nfs-server
SCRIPT_DIR=$(cd $(dirname $0) && pwd)
docker run -d                                   \
  -v $SCRIPT_DIR/data:/nfs                      \
  -v $SCRIPT_DIR/exports:/etc/exports:ro        \
  --privileged                                  \
  --restart always                              \
  --network host                                \
  erichough/nfs-server:latest
