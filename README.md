# Running Docker on Android

## Install Termux

A terminal emulator application for Android OS extendible by variety of packages. [Installation](https://github.com/termux/termux-app?tab=readme-ov-file#installation)

## Install Alpine Linux on android

```sh
pkg update -y
pkg install wget -y
wget https://raw.githubusercontent.com/mehradi-github/ref-docker-android/main/src/install-alpine.sh
chmod +x ./install-alpine.sh
./install-alpine.sh
```

```sh
# login with user root without password then run command
setup-alpine

cat /etc/apk/repositories

#/media/cdrom/apks
https://dl-cdn.alpinelinux.org/alpine/v3.19/main
https://dl-cdn.alpinelinux.org/alpine/v3.19/community

# If raise ERROR: unable to select packages
# change DNS on google => 8.8.8.8
reboot
```

## Running Alpine Linux

```sh
wget https://raw.githubusercontent.com/mehradi-github/ref-docker-android/main/src/alpine.sh
chmod +x ./alpine.sh
./alpine.sh
```

## Running Docker

```sh
apk update -y
apk add docker

rc-update add docker default

service docker start
service docker status
docker run hello-world
```
