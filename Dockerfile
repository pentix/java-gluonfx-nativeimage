FROM ubuntu:jammy

RUN apt update
RUN apt install -y git wget curl build-essential libfreetype6-dev libgl-dev libasound2-dev libavcodec-dev libavformat-dev libavutil-dev libglib2.0-dev libgtk-3-dev libpango1.0-dev libx11-dev libxtst-dev

WORKDIR /java/
RUN wget https://github.com/gluonhq/graal/releases/download/gluon-22.1.0.1-Final/graalvm-svm-java17-linux-gluon-22.1.0.1-Final.tar.gz

RUN tar xvzf graalvm-svm-java17-linux-gluon-22.1.0.1-Final.tar.gz
RUN rm graalvm-svm-java17-linux-gluon-22.1.0.1-Final.tar.gz

ENV JAVA_HOME /java/graalvm-svm-java17-linux-gluon-22.1.0.1-Final/
ENV GRAALVM_HOME /java/graalvm-svm-java17-linux-gluon-22.1.0.1-Final/
WORKDIR /src

