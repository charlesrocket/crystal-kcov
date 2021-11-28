FROM kcov/kcov:latest

RUN apt-get update && \
    apt-get install -y git curl openssl bash gnupg apt-transport-https ca-certificates

RUN curl -fsSL https://crystal-lang.org/install.sh | bash
RUN apt-get install -y crystal
