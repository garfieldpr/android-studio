# Run Android studio in a container

# docker run -it \
# --net host \
# -v /tmp/.X11-unix:/tmp/.X11-unix \
# -e DISPLAY=unix$DISPLAY \
# -v $HOME/Documents:/root/Documents
# --name android-studio
# elko/android-studio

# Base image
FROM ubuntu:latest

# Install SDK
RUN apt-get update && apt-get -y install \
  software-properties-common \
  python3-setuptools \
  python3-progressbar \
&& add-apt-repository ppa:ubuntu-desktop/ubuntu-make && apt-get update \
&& apt-get -y install \
   ubuntu-make \
&& umake android --accept-license /root/.local/share/umake/android/android-studio

# Autorun
ENTRYPOINT [ "/root/.local/share/umake/android/android-studio/bin/studio.sh" ]

