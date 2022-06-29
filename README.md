# Docker container for Signal Desktop

The GUI of the application can be accessed through a web browser (no installation or configuration needed on the client side) or via any VNC client.

![start](/images/start_up.png)

## Description

Because no Signal Web Client is currently available, this docker container makes the Linux Signal Desktop Client accessable through a web browser or VNC client. It is based on the awesome [jlesage/docker-baseimage-gui](https://github.com/jlesage/docker-baseimage-gui).

The image is updated automatically every monday at 00:00 UTC including the newest updates from signal.

## Usage

### Configuration

Please head over to [jlesage](https://github.com/jlesage/docker-baseimage-gui#environment-variables) for configurable environment variables like password, permissions or certificates.

### Launch

Launch Singal with the following command, where `path/to/config` is the path where you want to save the signal config files
```
docker run --rm -p 5800:5800 -v path/to/config:/config b4ssh/signal-web-client
```
or via docker-compose
```
version: '3'
services:
  singal-web:
    image: b4ssh/signal-web-client
    ports:
      - "5800:5800"
    volumes:
      - "path/to/config:/config:rw"
```

### Access

Assuming, that the container ports are mapped to the same host's ports, access the application via

- a web browser at

```http://<HOST IP ADDR>:5800```

- a VNC client at

```<HOST IP ADDR>:5900```