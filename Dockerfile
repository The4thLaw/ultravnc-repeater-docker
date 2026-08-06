FROM debian:trixie
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install -y git linux-headers-amd64 libx11-6 libx11-dev xorg libxtst6 psmisc build-essential
WORKDIR /usr/local/src
COPY src uvnc-repeater
WORKDIR /usr/local/src/uvnc-repeater
RUN make

COPY src/os/uvncrepeater.ini /etc/uvnc/uvncrepeater.ini 
RUN useradd uvncrep

EXPOSE 5901
EXPOSE 5500

CMD /usr/local/src/uvnc-repeater/repeater
