set -xe
docker build -t liyimeng/vm-tools:dev .
if [ ! -f persistence/base_image/rancheros.qcow2 ]; then
  wget https://github.com/rancher/os/releases/download/v1.5.2/rancheros-openstack.img -O persistence/base_image/rancheros.qcow2
fi
#Need --privileged for kvm access, this might possible to workaround later
docker run --name testvm -ti --rm --privileged \
       -v $(pwd)/persistence/base_image:/base_image \
       -v $(pwd)/persistence/image:/image \
       -v $(pwd)/persistence/volumes:/volumes \
       -v $(pwd)/persistence/vm:/vm \
       -v /dev/kvm:/dev/kvm \
       -v /dev/net/tun:/dev/net/tun \
        --cap-add=NET_ADMIN  \
       -e KVM_EXTRA_ARGS="-vnc :0" \
       -p 15900:5900 \
       liyimeng/vm-tools:dev bash
