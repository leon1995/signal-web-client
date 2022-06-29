# Docker container for Signal Desktop

The GUI of the application can be accessed through a web browser (no installation or configuration needed on the client side) or via any VNC client.

## Description

Because no Signal Web Client is currently available, this docker container makes the Linux Signal Desktop Client accessable through a web browser or VNC client. It is based on the awesome [jlesage/docker-baseimage-gui](https://github.com/jlesage/docker-baseimage-gui).

## Usage

### Configuration

Please head over to [jlesage](https://github.com/jlesage/docker-baseimage-gui#environment-variables) for configurable environment variables like password, permissions or certificates.

### Launch

Launch Singal with the following command
```
TODO
```
or via docker-compose
```
TODO
```

### Access

Assuming, that the container ports are mapped to the same host's ports, access the application via

- a web browser at

```http://<HOST IP ADDR>:5800```

- a VNC client at

```<HOST IP ADDR>:5900```