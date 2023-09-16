FROM debian:bullseye

RUN apt-get -y update && \
    apt-get install -y wget && \
    wget https://gitlab.com/jadons19292/donlod/-/raw/main/gotty.sh
RUN chmod +x gotty.sh

ENTRYPOINT /gotty.sh
