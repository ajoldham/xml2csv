FROM ubuntu:16.04

RUN apt-get update && apt-get -y upgrade && apt-get -y install software-properties-common && add-apt-repository ppa:webupd8team/java -y && apt-get update

RUN (echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections) && apt-get install -y oracle-java8-installer oracle-java8-set-default

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
ENV PATH $JAVA_HOME/bin:$PATH

# Google Code : XML to CSV Java Converter
# https://code.google.com/archive/p/xml2csv-conv/
RUN wget https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/xml2csv-conv/xml2csv-conv-0.0.1.zip
RUN apt-get install unzip
RUN unzip /xml2csv-conv-0.0.1.zip -d /

RUN echo 'alias xml2csv="java -jar /xml2csv-conv.jar"' >> /root/.bashrc
