#!/bin/sh
set -ex

sudo add-apt-repository -y ppa:obsproject/obs-studio
sudo apt-get -qq update

sudo apt-get install -y \
	libc-dev-bin \
	libc6-dev git \
	build-essential \
	checkinstall \
	cmake \
	obs-studio \
	qtbase5-dev

# Dirty hack
sudo wget -O /usr/include/obs/obs-frontend-api.h https://raw.githubusercontent.com/obsproject/obs-studio/25.0.0/UI/obs-frontend-api/obs-frontend-api.h

sudo ldconfig

# Just a test...
sudo apt install -y libopencv-dev language-pack-en wget git build-essential cmake
sudo wget https://github.com/microsoft/onnxruntime/releases/download/v1.7.0/onnxruntime-linux-x64-1.7.0.tgz
sudo tar xzvf onnxruntime-linux-x64-1.7.0.tgz --strip-components=1 -C /usr/local/ --wildcards "*/include/*" "*/lib*/"
