FROM debian:bullseye-slim

    
RUN apt update && apt install -y sudo wget vim iputils-ping net-tools vim openssh-server openssh-client openjdk-17-jdk python3 python3-pip

RUN pip3 install jupyterlab pyspark


WORKDIR /opt

RUN wget https://dlcdn.apache.org/spark/spark-4.0.0/spark-4.0.0-bin-hadoop3.tgz && \
    tar -xvzf spark-4.0.0-bin-hadoop3.tgz && \
    rm spark-4.0.0-bin-hadoop3.tgz && \
    mv spark-4.0.0-bin-hadoop3 spark




ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-arm64
ENV SPARK_HOME=/opt/spark
ENV PATH=$JAVA_HOME:$PATH:$SPARK_HOME


COPY entrypoint.sh .
RUN chmod +x entrypoint.sh

ENTRYPOINT [ "./entrypoint.sh" ]




