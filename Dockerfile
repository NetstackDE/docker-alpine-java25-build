
FROM alpine:3.24

LABEL org.opencontainers.image.authors="Netstack GmbH"
LABEL org.opencontainers.image.description="Alpine Linux with OpenJDK 25, Bash and Git"

RUN apk add --no-cache \
    openjdk25-jdk \
    bash \
    git \
    openssh-client \
    ca-certificates \
    && update-ca-certificates

RUN java -version && javac -version

CMD ["/bin/bash"]
