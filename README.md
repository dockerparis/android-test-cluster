# Android Cluster for Testing

With Android Cluster for Testing you can  run Android Units Tests on any Android version at the same time.

# Prerequisite

* Requires Docker. You can get it here `https://get.docker.com` :

  ```sh
  curl -sSL https://get.docker.com | sh -
  ```
* [Android SDK](http://developer.android.com/sdk/index.html#Other) (Need system images)
* In `webapp/emulator.sh` you need to replace `/opt/android-sdk` with the path of your SDK

# Installation

## Easy mode

```sh
git pull https://github.com/dockerparis/android-test-cluster.git
./build.sh # Build your images correctly
./run.sh # Launch web UI container with correct options
```

## Expert mode

```sh
git pull https://github.com/dockerparis/android-test-cluster.git

# Build your image
cd webapp && docker build -t android-cluster-ui .
cd android-emulator && docker build -t android-cluster-qemu .

# Launch Web UI container with Docker socket
docker run -v $(readlink -f /var/run/docker.sock):$(readlink -f /var/run/docker.sock) -d android-cluster-ui
```

# Ideas of features to implement

* Screenshots of tests
* Auto mailing
* Hardware configuration
* Account system (GitHub integration with public/private repo)
* Live test with VNC/html5/websocket
* [Swarm](https://github.com/docker/swarm) integration
* Better UI/UX
* A better conception (REST API between Android VM and UI container)

# Authors

* [Emeline Gaulard](https://github.com/LilliJane)
* [Guillaume Fillon](https://github.com/kokaz)

# Thanks

Special thanks to these guys who helped us during this hackathon :

* [Solomon Hykes](https://github.com/jpetazzo)
* [Michel Courtine](https://github.com/michaKFromParis)
* Gaëtan de Villèle
* [Vincent Giersch](https://github.com/gierschv)
* [Jérôme Petazzoni](https://github.com/jpetazzo)


