#!/bin/sh

set -ouex

#RELEASE="$(rpm -E %fedora)"

# install mpr (provides rust and others)
wget -qO - 'https://proget.makedeb.org/debian-feeds/prebuilt-mpr.pub' | gpg --dearmor > /usr/share/keyrings/prebuilt-mpr-archive-keyring.gpg
sh -c 'echo "deb [arch=all,amd64 signed-by=/usr/share/keyrings/prebuilt-mpr-archive-keyring.gpg] https://proget.makedeb.org prebuilt-mpr bookworm" > /etc/apt/sources.list.d/prebuilt-mpr.list'

# update any not current packages
apt-get update && apt-get upgrade -y

# add packages desired for dev
apt-get install -y \
  bind9-dnsutils \
  ccache \
  cpio \
  direnv \
  dosfstools \
  file \
  fuse \
  gh \
  libgtk-3-common \
  libgtk-4-common \
  hugo \
  ipcalc \
  just \
  nodejs \
  npm \
  patch \
  pipx \
  pre-commit \
  python3-pip \
  python3-virtualenv \
  syslinux \
  tmux \
  vim \
  xorriso \
  liblzma-dev \
  yamllint
  #google-droid-fonts-all \
  #qt5-qtbase-gui \
  #python-unversioned-command \
  #source-foundry-hack-fonts \

# install microsoft VS Code
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > /etc/apt/keyrings/packages.microsoft.gpg
sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
apt-get install -y apt-transport-https
apt-get update
apt-get install -y code

apt-get clean all
