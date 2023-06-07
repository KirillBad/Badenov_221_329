FROM ubuntu:18.04

LABEL author="Badenov 221-329"

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update
RUN apt-get install qt5-default qtbase5-dev qt5-qmake -y
RUN apt-get install build-essential -y

WORKDIR /221_329_Badenov

COPY *.cpp /221_329_Badenov
COPY *.h /221_329_Badenov
COPY *.pro /221_329_Badenov

RUN qmake echoServer-ex.pro
RUN make hallServer

ENTRYPOINT ["./hallServer"]