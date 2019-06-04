FROM alpine:latest as build

ARG OPENJDK_TAR_NAME=openjdk-13.tar.gz
ARG EXTRACTED_DIR=jdk-13
ARG JDK_13_URL=https://download.java.net/java/early_access/alpine/16/binaries/openjdk-13-ea+16_linux-x64-musl_bin.tar.gz

RUN cd /opt; \
    wget ${JDK_13_URL} -O ${OPENJDK_TAR_NAME} \
    && tar zxf ${OPENJDK_TAR_NAME} \
    && ln -s ${EXTRACTED_DIR} java \
    && rm -f ${OPENJDK_TAR_NAME}

ENV JAVA_HOME=/opt/java
ENV PATH="$PATH:$JAVA_HOME/bin"


