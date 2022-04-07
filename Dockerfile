FROM kcov/kcov:latest

RUN apt-get update && \
    apt-get install -y git curl openssl bash gnupg apt-transport-https ca-certificates

RUN curl -o install.sh -fsSL https://crystal-lang.org/install.sh

RUN bash install.sh --version=1.4 --channel=stable
