
all: debian-stable debian-unstable ubuntu-stable ubuntu-unstable devuan-stable devuan-unstable

debian-stable:
	docker build -f Dockerfile.jessie eyedeekay/whonix:stable .

debian-unstable:
	docker build -f Dockerfile.sid -t eyedeekay/whonix:unstable .

ubuntu-stable:
	docker build -f Dockerfile.xenial -t eyedeekay/whonix:xenial .

ubuntu-unstable:
	docker build -f Dockerfile.bionic -t eyedeekay/whonix:bionic .

devuan-stable:
	docker build -f Dockerfile.ascii -t eyedeekay/whonix:stable .

devuan-unstable:
	docker build -f Dockerfile.ceres -t eyedeekay/whonix:unstable .
