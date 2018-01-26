FROM buildpack-deps:xenial

# Install Extra Packages
RUN apt-get update
RUN apt-get -y install \
    locales \
    rsync \
    openssh-server \
    sudo \
    procps \
    unzip \
    mc \
    software-properties-common \
    python-software-properties \
    bash-completion

# Install Git
RUN add-apt-repository ppa:git-core/ppa && \
    apt-get update && \
    apt-get -y install git

RUN apt-get -y clean && \
    apt-get -y autoremove && \
    rm -rf /var/lib/apt/lists/*

CMD tail -f /dev/null
