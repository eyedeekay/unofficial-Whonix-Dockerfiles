
all: debian-stable debian-unstable ubuntu-stable ubuntu-unstable devuan-stable devuan-unstable

debian-stable:
	docker build -f Dockerfile.jessie eyedeekay/Whonix .

debian-unstable:
	docker build -f Dockerfile.sid -t eyedeekay/Whonix-unstable .

ubuntu-stable:
	docker build -f Dockerfile.xenial -t eyedeekay/Whonix-ubuntu-stable .

ubuntu-unstable:
	docker build -f Dockerfile.bionic -t eyedeekay/Whonix-ubuntu-unstable .

devuan-stable:
	docker build -f Dockerfile.ascii -t eyedeekay/Whonix-devuan-stable .

devuan-unstable:
	docker build -f Dockerfile.ceres -t eyedeekay/Whonix-devuan-unstable .
