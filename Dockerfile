# Dockerfile for the SC4 Pilot Floating Car Data producer
#
# 1) Build an image using this docker file. Run the following docker command
#
#    $ docker build -f producer.dockerfile -t bde2020/pilot-sc4-fcd-producer:v0.0.1 .
#
# 2) Start a container
#
#    $ docker run -d --network pilot-sc4-net --name producer \ 
#                 -e HDFS_URL="hdfs://namenode:8020" \
#                 -e INIT_DAEMON_STEP="floating_producer" \
#                 -e FLINK_MASTER_PORT_6123_TCP_ADDR="<flink-master ip address>" \
#                 -e FLINK_MASTER_PORT_6123_TCP_PORT="6123" \
#                 bde2020/pilot-sc4-fcd-producer:v0.0.1

#FROM bde2020/flink-maven-template:latest
FROM bde2020/flink-maven-template:1.2.0-hadoop2.7

MAINTAINER Luigi Selmi <luigiselmi@gmail.com>

ENV FLINK_APPLICATION_JAR_NAME pilot-sc4-fcd-applications-0.1-jar-with-dependencies
