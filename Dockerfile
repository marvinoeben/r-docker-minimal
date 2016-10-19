FROM debian:latest

MAINTAINER "Marvin Oeben" oebenmarvin@gmail.com

RUN sh -c 'echo "deb http://cran-mirror.cs.uu.nl/bin/linux/debian jessie-cran3/" >> /etc/apt/sources.list'

RUN apt-key adv --keyserver keys.gnupg.net --recv-key 6212B7B7931C4BB16280BA1306F90DE5381BA480
RUN apt-get update
RUN apt-get install -y --force-yes r-base-core

CMD ["R"]
