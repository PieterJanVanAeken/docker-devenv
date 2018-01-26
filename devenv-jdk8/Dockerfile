FROM vanaepi/docker-devenv:base

# Pre-accept Oracle license
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections

# Install JDK
RUN add-apt-repository -y ppa:webupd8team/java && \
    apt-get update && \
    apt-get install -y \
    oracle-java8-installer \
    oracle-java8-set-default

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

# Install Maven
ENV M2_HOME /usr/share/maven
ENV M2 $M2_HOME/bin

RUN mkdir -p $M2_HOME && \
    curl -fsSL http://archive.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz | \
    tar -xzC $M2_HOME --strip-components=1 && \
    ln -s $M2/mvn /usr/bin/mvn

CMD tail -f /dev/null
