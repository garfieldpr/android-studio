# android-studio
Docker Container for Android Studio
# Run Android studio in a container

To start container execute: 

docker run -it \
  --net host \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -e DISPLAY=unix$DISPLAY \
  --name android-studio
  elko/android-studio
