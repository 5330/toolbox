# set base image (host OS)
FROM ubuntu:latest

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade

RUN DEBIAN_FRONTEND=noninteractive apt-get -yq install \ 
    net-tools \     
    nginx \ 
    nmap \
    tcpdump \
    openssl \
    vim \
    python3-pip \
    dnsutils \ 
    iputils-ping \
    netcat \ 
    git \ 
    curl \  
    wget 

COPY src /scripts

RUN mkdir -p /mnt/persistentDisk

#ENTRYPOINT ["/scripts/check_URL.py"]
