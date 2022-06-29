FROM jlesage/baseimage-gui:debian-11

WORKDIR /tmp

RUN apt update && apt install wget gpg xterm libgbm-dev -y

# install signal
RUN \
    wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg && \
    cat signal-desktop-keyring.gpg | tee -a /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null && \
    echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' | tee -a /etc/apt/sources.list.d/signal-xenial.list && \
    apt update && apt install signal-desktop -y

COPY startapp.sh /startapp.sh

ENV APP_NAME="Signal"

VOLUME ["/config"]

LABEL \
      org.label-schema.name="Singal" \
      org.label-schema.description="Docker container for Signal" \
      org.label-schema.version="$DOCKER_IMAGE_VERSION" \
      org.label-schema.vcs-url="" \
      org.label-schema.schema-version="1.0"