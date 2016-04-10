# android-studio
Docker Container for Android Studio
# Run Android studio in a container

To start container execute: 

docker run -it \
  <br>--net host \
  <br>-v /tmp/.X11-unix:/tmp/.X11-unix \
  <br>-e DISPLAY=unix$DISPLAY \
  <br>--name android-studio
  <br>elko/android-studio
