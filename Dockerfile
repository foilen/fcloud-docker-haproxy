FROM ubuntu:16.04

RUN export TERM=dumb ; apt-get update && apt-get install -y \
    haproxy=1.6.3-1ubuntu0.1 \
    supervisor=3.2.0-2ubuntu0.1 \
  && apt-get clean && rm -rf /var/lib/apt/lists/*

CMD /bin/bash
