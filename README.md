# Dockerized Thunderbird

Run Thunderbird inside an isolated [Docker](http://www.docker.io) container. This is achieved by sharing a socket for X11 and PulseAudio.

I took some snippets and examples from here: https://github.com/terlar/docker-spotify-pulseaudio

## Instructions

1. Clone this repository and change to the directory:

  ```sh
  git clone https://github.com/eddyhub/docker-thunderbird.git && cd docker-thunderbird
  ```

2. Build and run the the containera:

  ```sh
  scripts/thunderbird
  ```

Data will be safed in `$HOME/container_homes/thunderbird`

