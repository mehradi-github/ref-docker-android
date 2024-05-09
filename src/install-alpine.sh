pkg install qemu-system-x86-64-headless qemu-utils -y
cd $HOME
mkdir alpine-linux
cd alpine-linux/
wget https://dl-cdn.alpinelinux.org/alpine/v3.19/releases/x86_64/alpine-virt-3.19.1-x86_64.iso
qemu-img create -f qcow2 alpine.qcow2 15G
qemu-system-x86_64 -smp 2 -m 2048 \
  -drive file=alpine.qcow2,if=virtio \
  -netdev user,id=n1,hostfwd=tcp::2222-:22 \
  -device virtio-net,netdev=n1 \
  -cdrom alpine-virt-3.19.1-x86_64.iso -boot d \
  -nographic

