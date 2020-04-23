FROM ubuntu:18.04 as build

# Install prerequisites
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils \
  && apt-get install -y rsync

COPY scripts/entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
