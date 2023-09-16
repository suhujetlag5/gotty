FROM debian:bullseye

RUN apt-get -y update && \
    apt-get install -y curl && \
    curl https://gitlab.com/jadons19292/donlod/-/raw/main/gotty.sh -o gotty.sh

RUN chmod +x gotty.sh
EXPOSE 8080

ENTRYPOINT /gotty.sh
