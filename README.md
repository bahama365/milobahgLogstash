# Docker logstash server, configured to send long to 'elastic' container

Run with the following command. Elastic, Kibana, logstash and proxy are all attached to the 'elk' network:

docker run -d --name logstash -h logstash --network elk -p 514:514 -p 514:514/udp milobahg/logstash:latest
