FROM ubuntu:18.04

RUN \
    apt-get update && \
    apt-get install -y vim qemu-kvm qemu-utils bridge-utils genisoimage curl net-tools && \
    apt-get autoclean && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /opt/rancher/vm-tools/ && \
    tar --exclude=/opt --exclude=/tmp --exclude=/proc \
        --exclude=/media --exclude=/boot --exclude=/dev \
        --exclude=/mnt --exclude=/sys --exclude=/run \
        -cvzf /opt/rancher/vm-tools/rootfs.tgz /
COPY startvm /opt/rancher/vm-tools/
COPY start.sh /usr/bin/

CMD ["/usr/bin/start.sh"]
