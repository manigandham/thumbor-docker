FROM ubuntu:16.04

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y python-pip
RUN apt-get install -y libcurl4-openssl-dev libssl-dev
RUN apt-get install -y python-opencv libopencv-dev
RUN apt-get install -y libjpeg-dev libpng-dev libwebp-dev webp
RUN pip install --upgrade pip
RUN pip install thumbor

COPY thumbor.conf /root

EXPOSE 8888

ENTRYPOINT thumbor --log-level debug --conf='/root/thumbor.conf'
