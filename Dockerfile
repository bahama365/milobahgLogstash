FROM openjdk:8-jre
LABEL maintainer=milobahg
RUN apt-get update -y; echo 'deb http://packages.elastic.co/logstash/2.2/debian stable main' | cat > /etc/apt/sources.list.d/logstash-2.2.x.list; \
  apt-get update -y; apt-get install vim logstash --allow-unauthenticated -y
ADD rsyslog-elastic.conf /etc/logstash/conf.d/rsyslog-elastic.conf
CMD /opt/logstash/bin/logstash -f /etc/logstash/conf.d/rsyslog-elastic.conf start

