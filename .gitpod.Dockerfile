FROM gitpod/workspace-full

USER gitpod

RUN sudo -u root apt-get -y install libpcap-dev && \
    sudo -u root apt-get -y install libcap-dev  && \
    sudo -u root git clone https://github.com/MrSqar-Ye/BadMod.git && \
    sudo -u root cd badmod && \
    sudo -u root apt-get -y install php && \
    sudo -u root apt-get -y install php-curl && \
    sudo -u root chmod +x INSTALL && \
    sudo -u root ./INSTALL


# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && \
#     sudo apt-get install -yq bastet && \
#     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/
