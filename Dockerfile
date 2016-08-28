# Add monitoring agent to Scylla Docker image

FROM scylladb/scylla
MAINTAINER Tzach Livyatan

ADD collectd.conf /etc/collectd.conf
ADD collectd.d/scylla.conf /etc/collectd.d/scylla.conf

RUN yum install wget collectd -y
RUN wget https://github.com/prometheus/collectd_exporter/releases/download/0.2.0/collectd_exporter-0.2.0.linux-amd64.tar.gz
RUN tar -xvf collectd_exporter-0.2.0.linux-amd64.tar.gz
RUN chmod a+x collectd_exporter

ADD supervisor/ /etc/supervisord.conf.d
