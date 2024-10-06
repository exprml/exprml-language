FROM --platform=amd64 ubuntu:24.04

RUN DEBIAN_FRONTEND=noninteractive apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y wget make

RUN wget https://github.com/mikefarah/yq/releases/download/v4.44.3/yq_linux_amd64 -O /usr/bin/yq && \
    chmod +x /usr/bin/yq

    WORKDIR /workspace
CMD [ "sleep", "infinity" ]
