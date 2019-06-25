if [ ! -f rancheros.img ]; then
  wget https://github.com/rancher/os/releases/download/v1.5.2/rancheros-openstack.img -O rancheros.img
fi
docker run --name testvm -ti --rm --privileged \
       -v $(pwd)/rancheros.img:/image/image \
       -e AUTO_ATTACH=yes              \
       -p 15900:5900 \
       liyimeng/vm-tools:dev

