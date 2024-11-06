# ===== BUILD TIME =====

FROM ubuntu:20.04

ARG JAVA_VERSION=21.0.5-tem
ARG KOTLIN_VERSION=1.8.0
ARG GRADLE_VERSION=8.10.2
ARG SPRING_VERSION=3.3.5

ARG U_ID=9999
ARG G_ID=9999

ARG U_NAME=developer
ARG G_NAME=developer

# root user
USER root

# Install the necessary packages
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y curl unzip zip git vim

# Create a new group and user
RUN groupadd -g ${G_ID} ${G_NAME}
RUN useradd -m -u ${U_ID} -g ${G_ID} ${U_NAME}

# Change the user
USER ${U_NAME}

# SDKMAN! installation
RUN curl -s "https://get.sdkman.io" | bash

# SDKMAN! initialization
RUN /bin/bash -c "source ${HOME}/.sdkman/bin/sdkman-init.sh && \
    sdk install java ${JAVA_VERSION}&& \
    sdk install kotlin ${KOTLIN_VERSION}&& \
    sdk install gradle ${GRADLE_VERSION}&& \
    sdk install springboot ${SPRING_VERSION}&& \
    sdk list"


# ===== RUN TIME =====

# eternally run the container
CMD tail -f /dev/null