FROM alpine:3.7
ENV APK_TO_INSTALL "git curl vim jq bash docker"
RUN apk add --update --upgrade --no-cache ${APK_TO_INSTALL}
RUN printf -- "export PS1=\"a >\"" >> ~/.profile
WORKDIR /workspace
COPY . /workspace
VOLUME [ "/workspace", "/var/run/docker.sock" ]
ENTRYPOINT [ "/bin/sh", "-l" ]