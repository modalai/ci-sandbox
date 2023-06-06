# Ubuntu 20.04
#FROM ubuntu:rb5-flight-px4-build-docker
#WORKDIR /usr/local/workspace
#CMD /bin/bash

FROM ubuntu:latest

# Install required dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    wget

# Clone the voxl-sdk repository
RUN git clone https://gitlab.com/voxl-public/voxl-sdk.git

# Build voxl-px4
WORKDIR /voxl-sdk/services/voxl-px4
RUN make

# Set the entry point to execute the built voxl-px4 binary
ENTRYPOINT ["/voxl-sdk/services/voxl-px4/voxl-px4"]
