FROM openjdk:8-jre

ARG MIRROR=http://apache.mirrors.pair.com
ARG VERSION=3.5.2-alpha
ARG SERVERNUM

LABEL name="zookeeper" version=$VERSION

RUN wget -q -O - $MIRROR/zookeeper/zookeeper-$VERSION/zookeeper-$VERSION.tar.gz | tar -xzf - -C /opt \
    && mv /opt/zookeeper-$VERSION /opt/zookeeper \
    && mkdir -p /tmp/zookeeper/$SERVERNUM \
    && touch /tmp/zookeeper/$SERVERNUM/myid \
    && echo "$SERVERNUM" > /tmp/zookeeper/$SERVERNUM/myid

COPY zoo.cfg /opt/zookeeper/conf/zoo.cfg

EXPOSE 2181 2888 3888

WORKDIR /opt/zookeeper

ENTRYPOINT ["/opt/zookeeper/bin/zkServer.sh"]
CMD ["start-foreground"]
