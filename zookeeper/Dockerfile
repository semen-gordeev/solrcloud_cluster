FROM openjdk:8-jre

ARG MIRROR=http://apache.mirrors.pair.com
ARG VERSION=3.5.2-alpha

ENV DEBIAN_FRONTEND noninteractive

LABEL name="zookeeper" version=$VERSION

RUN wget -q -O - $MIRROR/zookeeper/zookeeper-$VERSION/zookeeper-$VERSION.tar.gz | tar -xzf - -C /opt \
    && mv /opt/zookeeper-$VERSION /opt/zookeeper

ADD zoo.cfg /opt/zookeeper/conf/
ADD zk-init.sh /opt/zookeeper/

EXPOSE 2181 2888 3888

WORKDIR /opt/zookeeper

ENTRYPOINT ["/opt/zookeeper/zk-init.sh"]