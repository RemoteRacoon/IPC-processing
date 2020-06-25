# FROM ubuntu:bionic as cpp-build-base
# ENV TZ=Asia/Irkutsk
# RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
# RUN apt update && \
#     apt install -y build-essential cmake autoconf libtool pkg-config

# FROM cpp-build-base as build


FROM gcc:latest
RUN apt-get install -y libzmqpp-dev libzmqpp4
WORKDIR /opt/docker-app/
COPY ./server/* /opt/docker-app/
RUN cmake . && make
CMD [ "./server" ]