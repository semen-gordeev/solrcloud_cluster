FROM openjdk:8-jre

ENV VERSION 6.2.1
ENV DEBIAN_FRONTEND noninteractive

RUN useradd solr

RUN wget -q -O - http://archive.apache.org/dist/lucene/solr/$VERSION/solr-$VERSION.tgz | tar -xzf - -C /opt \
    && mv /opt/solr-$VERSION /opt/solr \
    && chown -R solr:solr /opt/solr

EXPOSE 8983

WORKDIR /opt/solr
USER solr

ENTRYPOINT ["/opt/solr/bin/solr", "start", "-c", "-f", "-z", "solrcloudcluster_zk1_1:2181,solrcloudcluster_zk2_1:2181,solrcloudcluster_zk3_1:2181"]