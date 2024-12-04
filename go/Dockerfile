# ===== BUILD TIME =====

FROM golang:latest

ARG U_ID=9999
ARG G_ID=9999

ARG U_NAME=developer
ARG G_NAME=developer

# root user
USER root

# Create a new group and user
RUN if ! getent group ${G_ID}; then groupadd -g ${G_ID} ${G_NAME}; fi
RUN if ! id -u ${U_NAME} >/dev/null 2>&1; then useradd -m -u ${U_ID} -g ${G_ID} ${U_NAME}; fi

# Install the necessary packages
RUN apt-get update && apt-get install -y curl unzip zip git vim

# Change the user
USER ${U_NAME}

# ===== RUN TIME =====

# eternally run the container
CMD tail -f /dev/null